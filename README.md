# PHP 7.2 & pdo_sqlsrv

This image provides an integrated development environment for PHP with connectivity to a remote SQL Server database.

### [Dockerfile](https://github.com/HasHolding/php-mssql/blob/master/Dockerfile)

The following components are included:
- Centos 7 OS layer.
- PHP-FPM latest
- Pre-configured PHP 7.2 runtime environment.
- [sqlsrv](http://php.net/manual/en/book.sqlsrv.php) and [pdo_sqlsrv](http://php.net/manual/en/ref.pdo-sqlsrv.php) for SQL Server.
- SQL Server command-line utilities (sqlcmd and bcp).
- Command-line text editor tools (nano and vim).
- Installed PHP modules (php-fpm, php-cli, php-gd, php-intl, php-json, php-ldap, php-mbstring, php-mcrypt, php-opcache, php-pdo, php-pecl-zip, php-soap, php-sqlsrv, php-xml, php-mysqlnd, php-pecl-uuid, php-bcmath, mediainfo, openldap-clients, php-mhash, php-xsl, php-pear, php-soap)
- [Microsoft ODBC Driver 17.2 for Linux] (https://blogs.msdn.microsoft.com/sqlnativeclient/2018/07/11/odbc-driver-17-2-for-sql-server-released/)
- [Microsoft Drivers for PHP for SQL Server 5.3] (https://docs.microsoft.com/en-us/sql/connect/php/release-notes-for-the-php-sql-driver?view=sql-server-2017#whats-new-in-version-53)
## Settings
Loaded Configuration File : /etc/php.ini  
Scan this dir for additional .ini files : /etc/php.d  
php_error_log : /var/log/php-fpm/php-error.log  
www_error_log : /var/log/php-fpm/www-error.log
