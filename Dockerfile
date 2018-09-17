FROM mariadb
MAINTAINER Rubens Takauti <rtakauti@hotmail.com>

ADD ./magento1.sql /docker-entrypoint-initdb.d
