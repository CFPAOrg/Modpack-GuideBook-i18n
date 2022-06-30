# Modpack-GuideBook-i18n

整合包手册及任务书汉化仓库。

## 如何添加汉化

当您想要向仓库中添加新的汉化时，请参考以下步骤：

### 添加不存在的汉化

您需要在 `projects` 文件夹内创建一个新的文件夹，文件名命名需只包含小写字母与下划线。

在创建好文件夹后，请您在文件夹下创建一个 `README.md` 文件与一个 `project.json` 文件，关于 `README.md` 与 `project.json` 文件的格式，请查看下方说明。

至此，您已完成创建项目文件夹的所有步骤，后续步骤请参考[向已存在的汉化添加新的版本](#向已存在的汉化添加新的版本)。

#### `README.md`

其中 `README.md` 文件遵循标准的 Markdown 语法，您可以在其中添加您的汉化说明、使用方式、联系方式或其他任何信息。

#### `project.json`

`project.json` 文件模板内容如下：

```json
{
  "id": "age_of_engineering",
  "name": "Age of Engineering",
  "url": "https://www.curseforge.com/minecraft/modpacks/age-of-engineering",
  "logo": "https://media.forgecdn.net/avatars/93/426/636262895770502676.png",
  "license": "CC-BY-NC-SA-4.0",
  "author": [
    {
      "name": "酒石酸菌",
      "url": "https://github.com/TartaricAcid"
    }
  ]
}
```

##### `id`

整合包 ID，同上方文件夹名称一致。

##### `name`

整合包名称，请填写官方名称，禁止使用未经作者允许的国内译名。

##### `url`

整合包下载地址，一般为 CurseForge 地址，如未上架到 CurseForge，请使用整合包制作者提供的官方下载地址，禁止使用国内搬运地址及各类云盘等其他二次分发的地址。

##### `logo`

整合包 LOGO 图片。

##### `license`

您的翻译授权许可协议，一般推荐 CC-BY-NC-SA-4.0，您也可以使用其他协议。

##### `author`

翻译作者，请尽量按照翻译贡献度排名

###### `author.name`

用户名

###### `author.url`

用户主页，建议填写 Github 主页，也可填写 MCBBS 主页、bilibili 主页或作者的个人网站等。

### 向已存在的汉化添加新的版本

找到您要添加汉化的项目文件夹，在文件夹下创建一个版本文件夹（如 `1.12.2`），然后您可以直接将您的汉化文件复制到该文件夹下。

## LICENSE / 协议

This repository is licensed under the MIT license expected for the `projects` directory. For licenses of each project, please view the `project.json` file in the project directory.

除 `projects` 文件夹外，本仓库遵循 MIT 协议。欲了解每个项目的协议，请查看项目目录下的 `project.json` 文件。
