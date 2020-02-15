# NMP

基于Docker的Nginx+MySQL+PHP的Web服务

## 1、环境配置

### Nginx : 1.17.2

- 修改了系统时区，默认为北京时间 CTS +8

### MySQL : 5.7

- 修改了系统时区，默认为北京时间 CTS +8

### PHP : 7.1-fpm

- 修改了系统时区，默认为北京时间 CTS +8
- 集成平时常用的php库。

    ### 数据库连接

    - mysqli
    - pdo_mysql
    - pgsql
    - pdo_pgsql

    ### 常用库

    - zip
    - gd
    - imap
    - intl
    - opcache
    - mbstring

## 2、启动

```bash
$ bash up.sh
```

## 3、关闭

```bash
$ bash down.sh
```
