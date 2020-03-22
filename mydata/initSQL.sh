#！/bin/bash

# 进入mysql 创建mall数据库
echo "创建mall数据库..."
mysql -uroot -proot --default-character-set=utf8 -e 'create database mall character set utf8'

# 初始化数据库脚本
echo "初始化数据库脚本 mall.sql"
mysql -uroot -proot --default-character-set=utf8 -e 'use mall;\
source /mall.sql;'

#
create_user = "grant all privileges on *.* to 'mall' @'%' identified by '123456';"
mysql -uroot -proot --default-character-set=utf8 -e '${create_user}'

