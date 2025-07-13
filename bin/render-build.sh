#!/usr/bin/env bash
set -o errexit

bundle install
yarn install --check-files
bundle exec rake assets:precompile
bundle exec rake db:migrate
