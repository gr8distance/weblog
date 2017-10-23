#!/bin/bash

docker-compose exec app bundle exec rake assets:precompile RAILS_ENV=production
