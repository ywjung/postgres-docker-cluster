#!/usr/bin/env bash
HEALTHCHECK_USER=_healthcheck
HEALTHCHECK_DB=_healthcheck_db
echo ">>> Checking if the local Postgres instance is running."
echo ">>> Creating user - $HEALTHCHECK_USER."
createuser --user postgres $HEALTHCHECK_USER
echo ">>> Creating DB - $HEALTHCHECK_DB."
createdb --user postgres $HEALTHCHECK_DB
echo ">>> Checking if Postgres is accepting connections."
pg_isready --user $HEALTHCHECK_USER --dbname $HEALTHCHECK_DB | grep -wq "accepting connections"
echo ">>> Removing DB - $HEALTHCHECK_DB."
removedb --user postgres $HEALTHCHECK_DB
echo ">>> Removing user - $HEALTHCHECK_USER."
removeuser --user postgres $HEALTHCHECK_USER
echo ">>> Health check done."
