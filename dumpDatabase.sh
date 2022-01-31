#file-name: postgres-backup.sh
#!/bin/bash
date1=$(date +%Y%m%d-%H%M)
#mkdir /backup/pg-backup
PGPASSWORD="$PGPASSWORD" pg_dump -Fc -v -h $PGHOST -p $PGPORT -U $PGUSER --dbname=$PGDATABASE > /$fileShareName/$date1.dump
#file_name="pg-backup-"$date1".tar.gz"
#Compressing backup file for upload
#tar -zcvf $file_name /backup
echo "Postgres-Backup-was-successful"