FROM ruby:2.4.1

ENV APP_ROOT /app

WORKDIR $APP_ROOT

RUN apt-get update\
		&& apt-get install -y nodejs npm

RUN npm install yarn -g

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install -j4

COPY . $APP_ROOT

EXPOSE 3000

ENTRYPOINT ["bundle", "exec"]
CMD ["rails", "server", "-p", "3000", "-b", "0.0.0.0", "-e", "production", "--pid", "/tmp/server.pid"]