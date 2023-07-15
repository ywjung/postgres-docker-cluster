docker build -f Postgres-9.6.Dockerfile -t syndbg/postgres-cluster:15.3 .
#docker build -f Postgres-9.5.Dockerfile -t syndbg/postgres-cluster:9.5 .
#docker build -f Postgres-9.6.Dockerfile -t syndbg/postgres-cluster:9.6 .
#docker build -f Postgres-9.5.Dockerfile -t syndbg/postgres-cluster:9.5 .
docker build -f Barman-2.2.Dockerfile -t syndbg/barman:2.2 .
#docker build -f Pgpool-3.3.Dockerfile -t syndbg/pgpool:3.3 .
docker build -f Pgpool-3.6.Dockerfile -t syndbg/pgpool:4.4.3 .
