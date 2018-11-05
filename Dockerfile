FROM ruby:2.4.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /gig_api
WORKDIR /gig_api

COPY Gemfile /gig_api/Gemfile
COPY Gemfile.lock /gig_api/Gemfile.lock

RUN bundle install

COPY . /gig_api