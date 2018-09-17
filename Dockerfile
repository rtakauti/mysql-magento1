FROM mariadb
MAINTAINER Rubens Takauti <rtakauti@hotmail.com>

ENV MYSQL_DATABASE magento1
ENV MYSQL_ROOT_PASSWORD 123

ADD ./magento1.sql /docker-entrypoint-initdb.d
