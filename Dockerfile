FROM twofour/mariadb-client:latest

ARG MARIADB_VERSION=10.2.15
ENV MYSQL_USER=backup
ENV LOGROTATE_FILES_MAX=28
ENV LOGROTATE_AGE_MAX=90
ENV LOGROTATE_COMPRESSION_LEVEL=-9

COPY src /
RUN mariadb-backup-setup
WORKDIR /var/backup/mariadb
ENTRYPOINT ["mariadb-backup-entrypoint"]
CMD ["mariadb-backup"]
