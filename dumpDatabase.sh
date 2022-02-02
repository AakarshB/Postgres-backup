#!/bin/bash
PGPASSWORD="$PGSOURCEPASSWORD" pg_dump -b -v -h $PGSOURCEHOST -p $PGSOURCEPORT -U $PGSOURCEUSER -Ft -O --dbname=$PGSOURCEDATABASE > /$fileShareName/$PGSOURCEDATABASE.tar
echo "Postgres-Backup-was-successful"