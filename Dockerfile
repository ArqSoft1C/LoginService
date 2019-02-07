FROM ruby:2.5.1

RUN mkdir /login_ms
WORKDIR /login_ms

ADD Gemfile /login_ms/Gemfile
ADD Gemfile.lock /login_ms/Gemfile.lock

RUN bundle install
ADD . /login_ms
EXPOSE 4001
