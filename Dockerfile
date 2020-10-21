FROM ruby:2.5.1

RUN apt-get update -qq
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
RUN apt-get install -y build-essential libpq-dev nodejs postgresql-client yarn
WORKDIR /app

COPY Gemfile Gemfile.lock ./

ENV BUNDLER_VERSION 2.1.0
RUN gem update --system \
    && gem install bundler -v $BUNDLER_VERSION \
    && bundle install -j 4 \
    && npm install --global yarn

COPY package.json yarn.lock ./

RUN yarn install --check-files

COPY . ./
