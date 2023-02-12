import os
import time

import requests
import slpp

url_ = 'http://operate.mini1.cn:8080/miniw/php_cmd?s7=HPNfcPLwLQhjawhUviaJRT9UvPOhy4HMN4r7y7yfNGaBa1OhHj3iaj3jp1SGN1ylHP9ia1w8N4HMpPdxp48FHX98y7Via53XZPNwoXwSc3LR4jy7p13FHPWqajYfyjy6yj9Sy4Rwa5Wxy598Hj3iNjWfRT3UvjfAy7VAy4rlymaXaodhym6GyG6ARiQlZPwSc4WAy2aEHPxTc4ViHXhqvT9Ge4q14Fa7NXOhyr__&s7t=682ed'


def get_config_info(url: str) -> dict:
    """
    获取热更新配置信息
    :param url: 热更新配置信息的地址
    :return: 返回配置信息
    """
    res = requests.get(url)
    lua_table_parser = slpp.SLPP()
    return lua_table_parser.decode(res.text)


def download_file(config_info: dict):
    """
    下载热更新文件
    :param config_info: 配置信息
    :return: None
    """
    cdn_url = config_info.get('cdn')

    # 排除这俩不需要下载
    except_list = ['_speed_zip_', 'cdn']

    today = time.strftime("%Y-%m-%d", time.localtime())

    os.mkdir("file/{0}".format(today))

    for name, md5_string in config_info.items():
        if name not in except_list:
            data = requests.get(cdn_url + md5_string).content
            with open("file/{0}/{1}.lua".format(today, name), 'wb+') as fp:
                fp.write(data)
                print("{0}.lua download successful!".format(name))


def main():
    print("=========BEGIN=========")

    if not os.path.exists("file"):
        os.mkdir("file")

    info = get_config_info(url_)
    download_file(info)

    print("=========OVER=========")


if __name__ == '__main__':
    main()
