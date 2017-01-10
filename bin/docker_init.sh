#!/usr/bin/env bash

bundle config build.nokogiri --use-system-libraries

bundle check || bundle install

bundle exec rake db:create db:migrate db:test:prepare
