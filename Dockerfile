FROM centos:7
ENV container docker
LABEL maintainer "Levent SAGIROGLU <LSagiroglu@gmail.com>"

RUN yum -y update
RUN yum -y install epel-release  \  
                   wget  \  
                   yum-utils
RUN wget http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \  
    rpm -Uvh remi-release-7*.rpm && \  
    yum-config-manager --enable remi-php71 && \  
    curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/mssql-release.repo 
    
RUN ACCEPT_EULA=Y yum install -y msodbcsql-13.1.9.2-1 mssql-tools-14.0.6.0-1 unixODBC-devel
# for last version info : https://packages.microsoft.com/rhel/7/prod/                                                      
RUN echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile && \  
    echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc  && \  
    source ~/.bashrc

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
RUN yum reinstall -y ca-certificates
RUN yum clean all 

VOLUME /srv/log/php-fpm
RUN echo 'error_log = /srv/log/php-fpm/php-error.log' >> /etc/php.d/50-errlog.ini  && \  
    sed -i '/^listen/c listen = 9000' /etc/php-fpm.d/www.conf   && \  
    ln -sf /dev/stderr /srv/log/php-fpm/error.log

CMD ["php-fpm", "--allow-to-run-as-root", "--nodaemonize"]