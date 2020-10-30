if [ -z $1 ]; then exit; fi
if [ -z $3 ]; then exit; fi

DOCKERPATH=$1
DIRBACKUP=${2:-/tmp}
. $3

DBNAME=${MYSQL_DATABASE_DB:-}
DBUSR=${MYSQL_DATABASE_USER:-}
DBPWD=${MYSQL_DATABASE_PASSWORD:-}
NAMEBACKUP="$(date +'%d.%m.%Y-%H.%M.%S').sql.gz"
PATHBACKUP=$DIRBACKUP/$NAMEBACKUP

echo "backup $DBNAME by $DBUSR to $PATHBACKUP"
cd $DOCKERPATH
if [ ! -z $DBUSR ] && [ ! -z $DBPWD ] && [ ! -z $DBNAME ]; then
    docker-compose exec db mysqldump -u$DBUSR -p$DBPWD $DBNAME | gzip > $PATHBACKUP
fi
