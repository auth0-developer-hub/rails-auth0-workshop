FROM ruby:3.2.2
RUN apt-get update -qq && apt-get install -y sqlite3 libsqlite3-dev
RUN mkdir /app
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
ADD .ruby-version /app/.ruby-version
RUN bundle install
RUN rails db:migrate
ADD . /app