FROM ruby:2.6.5

WORKDIR /usr/src/gorn-app-backend

COPY Gemfile Gemfile.lock  ./
RUN gem install bundler
RUN #gem install nokogiri --platform=ruby
RUN bundle config set force_ruby_platform true
RUN bundle install
COPY . .

RUN rails generate devise:install
RUN rails db:create db:migrate