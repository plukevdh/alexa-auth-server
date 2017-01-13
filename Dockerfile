FROM ruby:2.3

RUN mkdir /app
WORKDIR /app

COPY Gemfile* /app/
RUN bundle install

COPY . /app/
CMD bundle exec puma -C config/puma.rb
