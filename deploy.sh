#!/bin/bash

docker-compose stop
docker-compose up --build -d

bundle exec rake assets:precompile RAILS_ENV=production
touch tmp/restart.txt
