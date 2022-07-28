FROM ruby:2.6.5

WORKDIR /usr/src/gorn-app-backend

COPY Gemfile Gemfile.lock ./
RUN gem install bundler
RUN gem install nokogiri --platform=ruby

RUN bundle install

COPY . .