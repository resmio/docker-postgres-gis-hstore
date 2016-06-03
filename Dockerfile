FROM postgres:9.4
MAINTAINER jann.kleen@gmail.com

RUN apt-get update && apt-get install -y postgresql-9.4-postgis

ADD make_db.sh /docker-entrypoint-initdb.d/