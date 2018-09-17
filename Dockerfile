FROM mariadb
MAINTAINER Rubens Takauti <rtakauti@hotmail.com>

ADD ./magento1.sql /tmp

ENV MYSQL_DATABASE magento1
ENV MYSQL_ROOT_PASSWORD 123

RUN /bin/bash -c "/usr/bin/mysqld_safe --skip-grant-tables &"
RUN sleep 5
RUN mysql -u root -p123 -e "CREATE DATABASE magento1"
RUN mysql -u root -p123 -b magento1 < /tmp/magento1.sql
RUN rm /tmp/magento1.sql
