# 部署
官方文档: https://hellosean1025.github.io/yapi
```bash
docker-compose up
```
## 管理员账号密码
账号: 配置文件config.json中的adminAccount字段
初始密码:ymfe.org
## 数据备份
```bash
docker-compose exec mongo mongodump -h 127.0.0.1 -d yapi -o /data/db/backup_`date "+%Y-%m-%d-%H-%M-%S"`
```
### 数据恢复
```bash
docker-compose exec mongo mongorestore -h 127.0.0.1 --drop -d yapi --dir /data/db/backup_2019-09-04-15-42-48/yapi
```
# 使用
## 账号
### 管理员
账号: 配置文件config.json中的adminAccount字段
初始密码:ymfe.org
部署后第一时间登录修改管理员密码

### 其他用户
使用公司邮箱注册
注册后将用户名告诉admin

## 分组
对不同项目进行分组
### 个人空间
仅每个用户可见
### 其他分组
统一由admin创建
组长设置为admin
分组成员由admin添加，权限设为开发者

## 项目
### 项目tag
> 项目-设置-项目配置-tag信息

用于过滤接口
按release划分

### 项目权限
> 项目-设置-项目配置-权限

私有(默认值,只有组长和项目开发者可以索引并查看项目信息)

### 项目环境
> 项目-设置-环境配置

测试环境

### 项目成员
> 项目-成员管理

添加成员权限为开发者

## 接口
### 公共分类
### 其他分类
按后台模块划分

## 测试集
测试集由多个测试用例组成
可以使用不同的测试环境对同一测试集进行测试
### 公共测试集
### 其他测试集
按后台模块划分
可灵活添加