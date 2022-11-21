#!/bin/bash
  
set -ex

envsubst < /app/src/backend.test.template > /app/src/backend.conf
/app/src/wait-for-it.sh ${MYSQL_HOST}:${MYSQL_PORT}

set -m
./start.sh &
./insert_data.sh
fg %1