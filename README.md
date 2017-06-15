# PHP 7.1 & pdo_sqlsrv

This image provides an integrated development environment for PHP with connectivity to a remote SQL Server database.

### [Dockerfile](https://github.com/HasOtomotiv/php-mssql/blob/master/Dockerfile)

The following components are included:
- Centos 7 OS layer.
- PHP-FPM latest
- Pre-configured PHP 7.1 runtime environment.
- [sqlsrv](http://php.net/manual/en/book.sqlsrv.php) and [pdo_sqlsrv](http://php.net/manual/en/ref.pdo-sqlsrv.php) for SQL Server.
- SQL Server command-line utilities (sqlcmd and bcp).
- Command-line text editor tools (nano and vim).
- Installed PHP modules (php-fpm, php-cli, php-gd, php-intl, php-json, php-ldap, php-mbstring, php-mcrypt, php-opcache, php-pdo, php-pecl-zip, php-soap, php-sqlsrv, php-xml, php-mysqlnd, php-pecl-uuid, php-bcmath, mediainfo, openldap-clients, php-mhash, php-xsl, php-pear, php-soap)
- [Microsoft ODBC Driver 13 for Linux] (https://blogs.msdn.microsoft.com/sqlnativeclient/2016/10/20/odbc-driver-13-0-for-linux-released/)
- [Microsoft Drivers for PHP for SQL Server] (https://github.com/Microsoft/msphpsql/tree/Linux-GA-4.0.8)
