# twofour/mariadb-backup

Create a backup of a database from MariaDB or MySQL. The backups are automatically compressed and stored in the
directory /var/backup/mariadb.

## Environment variables

### MYSQL_HOST

Host to connect.

Default: mysql

### MYSQL_DATABASE

Name of the database to backup.

### MYSQL_USER

User for the backup. If possible a user with only read access for the database.

Default: backup

### MYSQL_PASSWORD

### LOGROTATE_FILES_MAX

Remove oldest backup if more than `LOGROTATE_FILES_MAX` exists.

Default: 28

### LOGROTATE_AGE_MAX

Default: 90

## Usage

### Manual

    docker run -it --rm \
        -v database-backups:/var/backup/mariadb \
        -e MYSQL_HOST=mysql \
        -e MYSQL_DATABASE=wordpress \
        -e MYSQL_USER=backup \
        -e MYSQL_PASSWORD=backup-password \
        foobox/mariadb-backup:10.2.15
