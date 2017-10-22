#!/bin/bash

docker-compose stop
docker-compose up --build -d

docker-compose exec app bundle exec rake assets:precompile RAILS_ENV=production
docker-compose exec app touch tmp/restart.txt
