#!/bin/bash

bundle exec rake assets:precompile RAILS_ENV=production
bundle exec rake tmp:sessions:clear
bundle exec rake tmp:sockets:clear
bundle exec rake tmp:cache:clear
