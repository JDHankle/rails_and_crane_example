FROM ruby

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /app

WORKDIR /app

RUN gem install rake

ADD Gemfile* /app/

RUN bundle install
RUN rm -f Gemfile*
