# PHP 容器配置

# 从官方基础版本构建
FROM php:7.2-fpm
# 官方版本默认安装扩展: 
# Core, ctype, curl
# date, dom
# fileinfo, filter, ftp
# hash
# iconv
# json
# libxml
# mbstring, mysqlnd
# openssl
# pcre, PDO, pdo_sqlite, Phar, posix
# readline, Reflection, session, SimpleXML, sodium, SPL, sqlite3, standard
# tokenizer
# xml, xmlreader, xmlwriter
# zlib

# 1.0.2 增加 bcmath, calendar, exif, gettext, sockets, dba, 
# mysqli, pcntl, pdo_mysql, shmop, sysvmsg, sysvsem, sysvshm 扩展
RUN docker-php-ext-install -j$(nproc) bcmath calendar exif gettext \
sockets dba mysqli pcntl pdo_mysql shmop sysvmsg sysvsem sysvshm

# 1.0.3 增加 bz2 扩展, 读写 bzip2（.bz2）压缩文件
RUN apt-get update && \
apt-get install -y --no-install-recommends libbz2-dev && \
rm -r /var/lib/apt/lists/* && \
docker-php-ext-install -j$(nproc) bz2

# 1.0.4 增加 enchant 扩展, 拼写检查库
RUN apt-get update && \
apt-get install -y --no-install-recommends libenchant-dev && \
rm -r /var/lib/apt/lists/* && \
docker-php-ext-install -j$(nproc) enchant

# 1.0.5 增加 GD 扩展. 图像处理
RUN apt-get update && \
apt-get install -y --no-install-recommends libfreetype6-dev libjpeg62-turbo-dev libpng-dev && \
rm -r /var/lib/apt/lists/* && \
docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && \
docker-php-ext-install -j$(nproc) gd

# 1.0.6 增加 gmp 扩展, GMP
RUN apt-get update && \
apt-get install -y --no-install-recommends libgmp-dev && \
rm -r /var/lib/apt/lists/* && \
docker-php-ext-install -j$(nproc) gmp

# 1.0.7 增加 soap wddx xmlrpc tidy xsl 扩展
RUN apt-get update && \
apt-get install -y --no-install-recommends libxml2-dev libtidy-dev libxslt1-dev && \
rm -r /var/lib/apt/lists/* && \
docker-php-ext-install -j$(nproc) soap wddx xmlrpc tidy xsl

# 1.0.8 增加 zip 扩展
RUN apt-get update && \
apt-get install -y --no-install-recommends libzip-dev && \
rm -r /var/lib/apt/lists/* && \
docker-php-ext-install -j$(nproc) zip

# 1.0.9 增加 snmp 扩展
RUN apt-get update && \
apt-get install -y --no-install-recommends libsnmp-dev && \
rm -r /var/lib/apt/lists/* && \
docker-php-ext-install -j$(nproc) snmp

# 1.0.10 增加 pgsql, pdo_pgsql 扩展 
RUN apt-get update && \
apt-get install -y --no-install-recommends libpq-dev && \
rm -r /var/lib/apt/lists/* && \
docker-php-ext-install -j$(nproc) pgsql pdo_pgsql

# 1.0.11 增加 pspell 扩展 
RUN apt-get update && \
apt-get install -y --no-install-recommends libpspell-dev && \
rm -r /var/lib/apt/lists/* && \
docker-php-ext-install -j$(nproc) pspell

# 1.0.12 增加 recode 扩展 
RUN apt-get update && \
apt-get install -y --no-install-recommends librecode-dev && \
rm -r /var/lib/apt/lists/* && \
docker-php-ext-install -j$(nproc) recode

# 1.0.13 增加 PDO_Firebird 扩展 
RUN apt-get update && \
apt-get install -y --no-install-recommends firebird-dev && \
rm -r /var/lib/apt/lists/* && \
docker-php-ext-install -j$(nproc) pdo_firebird

# 1.0.14 增加 pdo_dblib 扩展 
RUN apt-get update && \
apt-get install -y --no-install-recommends freetds-dev && \
rm -r /var/lib/apt/lists/* && \
docker-php-ext-configure pdo_dblib --with-libdir=lib/x86_64-linux-gnu && \
docker-php-ext-install -j$(nproc) pdo_dblib

# 1.0.15 增加 ldap 扩展 
RUN apt-get update && \
apt-get install -y --no-install-recommends libldap2-dev && \
rm -r /var/lib/apt/lists/* && \
docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu && \
docker-php-ext-install -j$(nproc) ldap

# 1.0.16 增加 imap 扩展 
RUN apt-get update && \
apt-get install -y --no-install-recommends libc-client-dev libkrb5-dev && \
rm -r /var/lib/apt/lists/* && \
docker-php-ext-configure imap --with-kerberos --with-imap-ssl && \
docker-php-ext-install -j$(nproc) imap

# 1.0.17 增加 interbase 扩展 
RUN apt-get update && \
apt-get install -y --no-install-recommends firebird-dev && \
rm -r /var/lib/apt/lists/* && \
docker-php-ext-install -j$(nproc) interbase

# 1.0.18 增加 intl 扩展 
RUN apt-get update && \
apt-get install -y --no-install-recommends libicu-dev && \
rm -r /var/lib/apt/lists/* && \
docker-php-ext-install -j$(nproc) intl

# 1.0.19 增加 mcrypt 扩展 
RUN apt-get update && \ 
apt-get install -y --no-install-recommends libmcrypt-dev && \
rm -r /var/lib/apt/lists/* && \
pecl install mcrypt-1.0.1 && \
docker-php-ext-enable mcrypt

# 1.0.20 imagick 扩展
RUN export CFLAGS="$PHP_CFLAGS" CPPFLAGS="$PHP_CPPFLAGS" LDFLAGS="$PHP_LDFLAGS" && \
apt-get update && \
apt-get install -y --no-install-recommends libmagickwand-dev && \
rm -rf /var/lib/apt/lists/* && \
pecl install imagick-3.4.3 && \
docker-php-ext-enable imagick

# 1.0.21 增加 Memcached 扩展 
RUN apt-get update && \ 
apt-get install -y --no-install-recommends zlib1g-dev libmemcached-dev && \
rm -r /var/lib/apt/lists/* && \
pecl install memcached && \
docker-php-ext-enable memcached

# 1.0.22 redis 扩展
RUN pecl install redis-4.0.1 && docker-php-ext-enable redis

# 1.0.23 增加 opcache 扩展 
RUN docker-php-ext-configure opcache --enable-opcache && docker-php-ext-install opcache

# 1.0.24 增加 odbc, pdo_odbc 扩展 
RUN set -ex; \
docker-php-source extract; \
{ \
     echo '# https://github.com/docker-library/php/issues/103#issuecomment-271413933'; \
     echo 'AC_DEFUN([PHP_ALWAYS_SHARED],[])dnl'; \
     echo; \
     cat /usr/src/php/ext/odbc/config.m4; \
} > temp.m4; \
mv temp.m4 /usr/src/php/ext/odbc/config.m4; \
apt-get update; \
apt-get install -y --no-install-recommends unixodbc-dev; \
rm -rf /var/lib/apt/lists/*; \
docker-php-ext-configure odbc --with-unixODBC=shared,/usr; \
docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr; \
docker-php-ext-install odbc pdo_odbc; \
docker-php-source delete

# 镜像信息
LABEL Author="Leo"
LABEL Version="1.0.25-fpm"
LABEL Description="PHP FPM 7.2 镜像. All extensions."