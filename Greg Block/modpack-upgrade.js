/**
 * 提供了对整合任务书的升级比对与自动化 json 生成
 *
 * 运行环境：浏览器开发者工具 Console
 *
 * 简单使用方法：
 * 1. 输出比对报告（Markdown）
 *   (await diff('1.3.1', '1.3.2')).print()
 * 2. 进行汉化保留式升级
 *   console.log(JSON.stringify(await migrate('1.3.1', '1.3.2'), null, 2))
 *
 * 注意事项：
 * 1. 在升级之前需要修改增加 quests
 * 2. 本工具仅针对任务本身进行汉化升级，并没有处理 questLine，这部分需要手动处理
 */

const quests = {
  "en-us": {
    "1.2.0":
      "https://raw.githubusercontent.com/Yesterday17/Modpack-GuideBook-i18n/master/Greg%20Block/en-us/1.2.0/DefaultQuests.json",
    "1.3.1":
      "https://raw.githubusercontent.com/Yesterday17/Modpack-GuideBook-i18n/master/Greg%20Block/en-us/1.3.1/DefaultQuests.json",
    "1.3.2":
      "https://raw.githubusercontent.com/Yesterday17/Modpack-GuideBook-i18n/master/Greg%20Block/en-us/1.3.2/DefaultQuests.json"
  },
  "zh-cn": {
    "1.2.0":
      "https://raw.githubusercontent.com/Yesterday17/Modpack-GuideBook-i18n/master/Greg%20Block/1.2.0/config/betterquesting/DefaultQuests.json",
    "1.3.1":
      "https://raw.githubusercontent.com/Yesterday17/Modpack-GuideBook-i18n/master/Greg%20Block/1.3.1/config/betterquesting/DefaultQuests.json"
  }
};

/**
 * 对 BQ 的奇怪名字进行映射
 */
const nameMap = {
  format: "format:8",
  id: "questID:3",
  property: "properties:10",
  bq: "betterquesting:10",
  name: "name:8",
  desc: "desc:8"
};

class Lang {
  constructor(lang, value, version) {
    this[lang] = {};
    this[lang][version] = value;
  }

  update(lang, value, version) {
    if (!this[lang]) this[lang] = {};
    this[lang][version] = value;
    return this;
  }
}

class PackUpdateReport {
  constructor(old, newer) {
    this.old = old;
    this.newer = newer;
    this._new = new Map();
    this._edit = new Map();
    this._editName = new Map();
    this._editDesc = new Map();
    this._noEdit = new Map();
  }

  newQuest(key, lang) {
    this._new.set(key, { to: lang });
  }

  editQuest(key, from, to) {
    if (from.name != to.name) {
      if (from.desc != to.desc) this._edit.set(key, { from, to });
      else
        this._editName.set(key, {
          from: from.name,
          to: to.name,
          keys: { from: from.key, to: to.key }
        });
    } else {
      if (from.desc != to.desc)
        this._editDesc.set(key, {
          from: from.desc,
          to: to.desc,
          keys: { from: from.key, to: to.key }
        });
      else {
        this._noEdit.set(key, { from: from.key, to: to.key });
      }
    }
  }

  print() {
    let report = "GregBlock 整合任务书更新报告\n===\n";

    // Version
    report += `## 版本变化\n\`${this.old}\` --> \`${this.newer}\`\n\n`;

    // New
    report += "## 新增任务\n";
    report += "|ID|任务名|任务简介|\n";
    report += "|-------|-----|-------|\n";
    for (let [key, value] of this._new) {
      report += `|${key}|${value.to.name}|${value.to.desc.replace(
        /\n/g,
        "<br>"
      )}|\n`;
    }
    report += "\n\n";

    // Edit Name
    report += "## 修改：任务名称\n";
    report += "|ID|原任务名|现任务名|\n";
    report += "|-------|-----|-------|\n";
    for (let [key, value] of this._editName) {
      report += `|${key}|${value.from}|${value.to}|\n`;
    }
    report += "\n\n";

    // Edit Description
    report += "## 修改：任务简介\n";
    report += "|ID|原任务简介|现任务简介|\n";
    report += "|-------|-----|-------|\n";
    for (let [key, value] of this._editDesc) {
      report += `|${key}|${value.from.replace(
        /\n/g,
        "<br>"
      )}|${value.to.replace(/\n/g, "<br>")}|\n`;
    }
    report += "\n\n";

    // Edit All
    report += "## 修改：名称与简介\n";
    report += "|ID|原任务名|现任务名|原任务简介|现任务简介|\n";
    report += "|-------|-------|-------|---------|---------|\n";
    for (let [key, value] of this._edit) {
      report += `|${key}|${value.from.name}|${
        value.to.name
      }|${value.from.desc.replace(/\n/g, "<br>")}|${value.to.desc.replace(
        /\n/g,
        "<br>"
      )}|\n`;
    }
    report += "\n\n";

    return report;
  }
}

/**
 * 对整合的升级进行比对
 * @param {*} old 旧的整合版本，需要在 quests['en-us'] 下有对应词条
 * @param {*} newer 新的整合版本，需要在 quests['en-us'] 下有对应词条
 * @returns 返回比对结果报告
 */
async function diff(old, newer) {
  const map = new Map();

  if (!(quests["en-us"][old] && quests["en-us"][newer])) {
    console.error("version error");
    return;
  }

  // Fetch json data
  const oldJson = await fetch(quests["en-us"][old]).then(response =>
    response.json()
  );
  const newJson = await fetch(quests["en-us"][newer]).then(response =>
    response.json()
  );

  // fill the map with old json
  for (let key in oldJson["questDatabase:9"]) {
    const quest = oldJson["questDatabase:9"][key];
    map.set(
      quest[nameMap.id],
      new Lang(
        "en-us",
        {
          key,
          name: quest[nameMap.property][nameMap.bq][nameMap.name],
          desc: quest[nameMap.property][nameMap.bq][nameMap.desc]
        },
        old
      )
    );
  }

  // fill the map with new json
  for (let key in newJson["questDatabase:9"]) {
    const quest = newJson["questDatabase:9"][key];
    if (!map.has(quest[nameMap.id])) {
      map.set(
        quest[nameMap.id],
        new Lang(
          "en-us",
          {
            key,
            name: quest[nameMap.property][nameMap.bq][nameMap.name],
            desc: quest[nameMap.property][nameMap.bq][nameMap.desc]
          },
          newer
        )
      );
      continue;
    }

    map.set(
      quest[nameMap.id],
      map.get(quest[nameMap.id]).update(
        "en-us",
        {
          key,
          name: quest[nameMap.property][nameMap.bq][nameMap.name],
          desc: quest[nameMap.property][nameMap.bq][nameMap.desc]
        },
        newer
      )
    );
  }

  const report = new PackUpdateReport(old, newer);
  map.forEach((value, key) => {
    switch (Object.keys(value["en-us"]).length) {
      case 1:
        // new quest
        report.newQuest(key, value["en-us"][newer]);
        break;
      case 2:
        // old quest, need to compare
        report.editQuest(key, value["en-us"][old], value["en-us"][newer]);
        break;
    }
  });

  return report;
}

/**
 * 通过 diff 的比对结果，对整合的任务进行保留式升级，以重用部分（大量）汉化条目
 * @param {*} old 旧的整合版本，需要在 quests['zh-cn'] 下有对应词条
 * @param {*} newer 新的整合版本，需要在 quests['en-us'] 下有对应词条
 * @returns 汉化文件的 Object 形式
 */
async function migrate(old, newer) {
  if (!(quests["zh-cn"][old] && quests["en-us"][newer])) {
    console.error("version error");
    return;
  }

  // report
  const report = await diff(old, newer);

  // get json
  const oldJson = await fetch(quests["zh-cn"][old]).then(response =>
    response.json()
  );
  const newJson = await fetch(quests["en-us"][newer]).then(response =>
    response.json()
  );

  for (let key in newJson["questDatabase:9"]) {
    const quest = newJson["questDatabase:9"][key];

    if (report._editName.has(quest[nameMap.id])) {
      // change its name for better translation
      quest[nameMap.property][nameMap.bq][nameMap.name] += "[待翻译]";

      // keep its description
      quest[nameMap.property][nameMap.bq][nameMap.desc] =
        oldJson["questDatabase:9"][
          report._editName.get(quest[nameMap.id]).keys.from
        ][nameMap.property][nameMap.bq][nameMap.desc];
    } else if (report._editDesc.has(quest[nameMap.id])) {
      // keep its name
      quest[nameMap.property][nameMap.bq][nameMap.name] =
        oldJson["questDatabase:9"][
          report._editDesc.get(quest[nameMap.id]).keys.from
        ][nameMap.property][nameMap.bq][nameMap.name];

      // change its description for better translation
      quest[nameMap.property][nameMap.bq][nameMap.desc] += "[待翻译]";
    } else if (
      report._edit.has(quest[nameMap.id]) ||
      report._new.has(quest[nameMap.id])
    ) {
      // change its name for better translation
      quest[nameMap.property][nameMap.bq][nameMap.name] += "[待翻译]";

      // change its description for better translation
      quest[nameMap.property][nameMap.bq][nameMap.desc] += "[待翻译]";
    } else {
      quest[nameMap.property][nameMap.bq][nameMap.desc] =
        oldJson["questDatabase:9"][report._noEdit.get(quest[nameMap.id]).from][
          nameMap.property
        ][nameMap.bq][nameMap.desc];
      quest[nameMap.property][nameMap.bq][nameMap.name] =
        oldJson["questDatabase:9"][report._noEdit.get(quest[nameMap.id]).from][
          nameMap.property
        ][nameMap.bq][nameMap.name];
    }
  }
  return newJson;
}
