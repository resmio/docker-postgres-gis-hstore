#!/bin/sh
POSTGRES="gosu postgres"

echo "******CREATING EXTENSIONS******"

${POSTGRES} psql -d postgres -c "UPDATE pg_database SET datallowconn = TRUE WHERE datname = 'template0';"
${POSTGRES} psql -d postgres -c "UPDATE pg_database SET datallowconn = TRUE WHERE datname = 'template1';"
${POSTGRES} psql -d template1 -c "CREATE EXTENSION IF NOT EXISTS hstore;"
${POSTGRES} psql -d template1 -c "CREATE EXTENSION IF NOT EXISTS postgis;"
${POSTGRES} psql -d template1 -c "CREATE EXTENSION IF NOT EXISTS postgis_topology;"

echo ""
echo "******DATABASE EXTENSIONS******"
