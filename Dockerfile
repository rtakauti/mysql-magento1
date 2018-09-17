FROM mariadb
MAINTAINER Rubens Takauti <rtakauti@hotmail.com>

ADD ./magento1.sql /tmp

RUN /bin/bash -c "/usr/bin/mysqld_safe --skip-grant-tables &"
RUN sleep 5
RUN mysql -u root -e "CREATE DATABASE magento1"
RUN mysql -u root magento1 < /tmp/magento1.sql
