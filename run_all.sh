#!/usr/bin/env bash

# default environment
if [ -z ${ATHENA_ENVIRONMENT} ]; then ATHENA_ENVIRONMENT="dev"; fi
if [ -z ${ATHENA_CASSANDRA_HOST} ]; then ATHENA_CASSANDRA_HOST="localhost"; fi
if [ -z ${ATHENA_CASSANDRA_PORT} ]; then ATHENA_CASSANDRA_PORT="9042"; fi

run_file() {
    cqlsh -f cql/$1 $ATHENA_CASSANDRA_HOST $ATHENA_CASSANDRA_PORT
}

run_file bacchus.$ATHENA_ENVIRONMENT.cql
run_file bacchus_tables.cql
run_file match_sums.$ATHENA_ENVIRONMENT.cql
run_file match_sums.cql
