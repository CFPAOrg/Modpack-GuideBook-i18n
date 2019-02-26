import hashlib
import json
import logging
import os
import re
import sys
import tempfile
import urllib.parse
from distutils import dir_util

import yaml
from qcloud_cos import CosConfig
from qcloud_cos import CosS3Client


# 传入文件路径，改变编码
def change_coding(file_name=""):
    # 将文件按照 gbk 编码读取
    with open(file_name, 'r', encoding='gbk') as f:
        raw_data = f.read()

    # 开始按照 utf-8 编码写入
    with open(file_name, 'w', encoding='utf-8') as e:
        e.write(raw_data)


# 递推检查文件路径，符合正则的进行编码转换
def check_file_rgx(dir_name="", file_rgx=None):
    # 如果正则为空，初始化空列表
    if file_rgx is None:
        file_rgx = []

    # 遍历文件
    for file in os.listdir(dir_name):
        # 构建文件路径
        file_name = dir_name + "/" + file

        # 如果为文件
        if not os.path.isdir(file_name):
            logging.debug(file_name)
            # 遍历正则
            for rgx in file_rgx:
                # 正则匹配合法，说明需要更改编码
                if re.search(rgx, file_name) is not None:
                    logging.info(file_name)
                    change_coding(file_name)
                    break
        else:
            # 为文件夹时，递归检查
            logging.debug(file_name)
            check_file_rgx(file_name, file_rgx)


# 用来判断指定 key 的 value 是否在某个 list 中
def is_in(ii_list, ii_key, ii_value):
    for ii_l in ii_list:
        if ii_l[ii_key] == ii_value:
            return True
    return False


# 用来获取指定 key-value 所处的 list 元素
def get_in(gi_list, gi_key, gi_value):
    for gi_i in gi_list:
        if gi_i[gi_key] == gi_value:
            return gi_i
    return None


# 检查指定 list 中指定整合，指定操作系统，指定版本的 md5 是否相同
def check_md5(cm_old_list, cm_modpack, cm_os, cm_version, cm_md5):
    if is_in(cm_old_list, "name", cm_modpack):
        cm_i = get_in(cm_old_list, "name", cm_modpack)['contents']
        if is_in(cm_i, "version", cm_version):
            cm_j = get_in(cm_i, "version", cm_version)
            if cm_j[cm_os]['md5'] == cm_md5:
                return True
            else:
                logging.debug(str(cm_j[cm_os]['md5']) + " | " + str(cm_md5))
        return False


# 递归清除文件时间戳
def clear_timestamp(ct_dir):
    for ct_f in os.listdir(ct_dir):
        os.utime(ct_dir + "/" + ct_f, (0, 0))
        if os.path.isdir(ct_dir + "/" + ct_f):
            clear_timestamp(ct_dir + "/" + ct_f)


if __name__ == '__main__':
    # 日志开始记录
    logging.basicConfig(level=logging.DEBUG, stream=sys.stdout)

    # 读取上次的 Json 文件
    with open("./page/static/data.json", "r", encoding="utf-8") as c:
        MODPACK_DATA_OLD = json.load(c)
        logging.debug(MODPACK_DATA_OLD)

    # 读取配置文件
    with open("./config.yml", "r", encoding="utf-8") as c:
        config_y = yaml.load(c)
        FILE_RGX = config_y['file_rgx']
        logging.debug(FILE_RGX)

    # 读取上次的 Json 文件
    with open("./page/static/data.json", "r", encoding="utf-8") as c:
        MODPACK_DATA_OLD = json.load(c)
        logging.debug(MODPACK_DATA_OLD)

    # 从环境变量中获取相关数据
    SECRET_ID = os.environ.get("Secret_id")
    SECRET_KEY = os.environ.get("Secret_key")
    # 登陆腾讯云
    config = CosConfig(Secret_id=SECRET_ID, Secret_key=SECRET_KEY, Region='ap-guangzhou')

    # 获取客户端对象
    client = CosS3Client(config)

    # 存储整合数据
    MODPACK_DATA_TOTAL = []

    # 临时文件夹生成，很遗憾，生成的并不直接是路径
    # 而且不允许直接带 .name 获取字符串
    TMP_WIN_DIR = tempfile.TemporaryDirectory()
    TMP_LINUX_DIR = tempfile.TemporaryDirectory()
    TMP_ZIP_DIR = tempfile.TemporaryDirectory()

    TMP_WIN_PATH = TMP_WIN_DIR.name
    TMP_LINUX_PATH = TMP_LINUX_DIR.name
    TMP_ZIP_PATH = TMP_ZIP_DIR.name

    # 将文件递归复制到指定的文件夹中
    dir_util.copy_tree("./project", TMP_WIN_PATH)
    logging.info("Copy Win Dir")
    dir_util.copy_tree("./project", TMP_LINUX_PATH)
    logging.info("Copy Linux Dir")

    # 修改 linux 文件夹中编码
    check_file_rgx(TMP_LINUX_PATH, FILE_RGX)

    # 修改时间戳
    clear_timestamp(TMP_WIN_PATH)
    clear_timestamp(TMP_LINUX_PATH)

    # 遍历文件夹，开始打包
    for modpack in os.listdir(TMP_WIN_PATH):
        # 判定是不是文件夹，不是直接跳出本次循环
        if not os.path.isdir(str.format("{}/{}", TMP_WIN_PATH, modpack)):
            continue

        # 存储版本信息的 list
        contents = []

        # 开始遍历版本文件夹
        for version in os.listdir("{}/{}".format(TMP_WIN_PATH, modpack)):
            # 判定是不是文件夹，不是直接跳出本次循环
            if not os.path.isdir(str.format("{}/{}/{}", TMP_WIN_PATH, modpack, version)):
                continue

            # 对应的文件名称
            win_file = str.format("{}-{}-windows.zip".format(modpack, version))
            linux_file = str.format("{}-{}-linux.zip".format(modpack, version))

            # 调用 shell 指令打包
            # https://stackoverflow.com/questions/19523063/zip-utility-giving-me-different-md5sum-every-time-in-linux
            # 记得使用 -X 指令
            cmd_win = str.format('cd "{}/{}/{}" && zip -X -t 1970-01-01 -r -9 "{}/{}" ./*',
                                 TMP_WIN_PATH, modpack, version, TMP_ZIP_PATH, win_file)
            cmd_linux = str.format('cd "{}/{}/{}" && zip -X -t 1970-01-01 -r -9 "{}/{}" ./*',
                                   TMP_LINUX_PATH, modpack, version, TMP_ZIP_PATH, linux_file)
            os.system(cmd_win)
            os.system(cmd_linux)

            # 构建打包文件路径
            win_file_path = TMP_ZIP_PATH + "/" + win_file
            linux_file_path = TMP_ZIP_PATH + "/" + linux_file

            # 生成 md5 进行校验
            with open(win_file_path, 'rb') as a:
                win_md5 = hashlib.md5(a.read()).hexdigest()
                # 移动文件指针，这一块很容易被忽略
                a.seek(0)
                win_sha1 = hashlib.sha1(a.read()).hexdigest()
            with open(linux_file_path, 'rb') as b:
                linux_md5 = hashlib.md5(b.read()).hexdigest()
                b.seek(0)
                linux_sha1 = hashlib.sha1(b.read()).hexdigest()

            # 如果和旧版本 md5 一致，说明不需要上传
            # 这时候只需要把旧版本数据 copy 过来即可
            if check_md5(MODPACK_DATA_OLD, modpack, 'windows', version, win_md5) \
                    and check_md5(MODPACK_DATA_OLD, modpack, 'linux', version, linux_md5):
                contents.append(get_in(get_in(MODPACK_DATA_OLD, "name", modpack)['contents'], "version", version))

            # 否则，需要进行上传操作
            else:
                # 上传操作
                client.upload_file(Bucket='modpack-1257209710',
                                   Key=win_file,
                                   LocalFilePath=win_file_path,
                                   PartSize=10,
                                   MAXThread=10,
                                   CacheControl='no-cache')
                client.upload_file(Bucket='modpack-1257209710',
                                   Key=linux_file,
                                   LocalFilePath=linux_file_path,
                                   PartSize=10,
                                   MAXThread=10,
                                   CacheControl='no-cache')
                # 存入信息
                contents.append({
                    "version": version,
                    "windows": {
                        'url': 'https://modpack-1257209710.cos.ap-guangzhou.myqcloud.com/' +
                               urllib.parse.quote(win_file, safe='/'),
                        "md5": win_md5,
                        "sha1": win_sha1
                    },
                    "linux": {
                        "url": "https://modpack-1257209710.cos.ap-guangzhou.myqcloud.com/" +
                               urllib.parse.quote(linux_file, safe='/'),
                        "md5": linux_md5,
                        "sha1": linux_sha1
                    }
                })

        # 存入总信息
        MODPACK_DATA_TOTAL.append({"name": modpack, "contents": contents})

    # 存入这次的 Json 文件
    with open("./page/static/data.json", "w", encoding="utf-8") as c:
        # 依次是，允许非 ASCII 字符，缩进为 4 空格，分隔符带空格
        js = json.dumps(MODPACK_DATA_TOTAL, ensure_ascii=False, indent=4, separators=(', ', ': '))
        c.write(js)
        logging.debug(MODPACK_DATA_OLD)
