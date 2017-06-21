FROM centos:7
ENV container docker
MAINTAINER "Levent SAGIROGLU" <LSagiroglu@gmail.com>

RUN yum -y update
RUN yum -y install epel-release \
                   wget \
                   yum-utils
RUN wget http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
RUN rpm -Uvh remi-release-7*.rpm
RUN yum-config-manager --enable remi-php71
RUN curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/mssql-release.repo
    
RUN ACCEPT_EULA=Y yum install -y msodbcsql mssql-tools unixODBC-devel
RUN echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
RUN echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
RUN source ~/.bashrc
RUN yum install -y gettext \ 
               php-fpm \ 
               php-cli \
               php-gd \
               php-intl \
               php-json \
               php-ldap \
               php-mbstring \
               php-mcrypt \
               php-opcache \
               php-pdo \
               php-pecl-zip \
               php-soap \
               php-sqlsrv \
               php-xml \
               php-mysqlnd \
               php-pecl-uuid \
               php-bcmath \
               mediainfo \
               openldap-clients \
               php-mhash \
               php-xsl \
               php-pear \
               php-soap
RUN yum clean all 

RUN echo 'error_log = /var/log/php-fpm/php-error.log' >> /etc/php.d/50-errlog.ini
 
RUN sed -i '/^listen/c listen = 9000' /etc/php-fpm.d/www.conf 
 
RUN ln -sf /dev/stderr /var/log/php-fpm/error.log

CMD ["php-fpm", "--allow-to-run-as-root", "--nodaemonize"]