#!/bin/bash

until nc -z -v -w30 localhost 8000
do
  echo "Waiting for database connection..."
  # wait for 5 seconds before check again
  sleep 5
done

curl -X POST -H "Content-Type: application/json" -d '{"name":"Adel", "bcit_id":"A01258780"}' -v http://localhost:8000/add