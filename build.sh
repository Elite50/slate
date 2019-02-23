#!/bin/bash
docker run --mount type=bind,source=$(pwd),target=/mnt -w /mnt crowdskout/api-docs sh -c "source /opt/rh/rh-ruby23/enable && bundle install && bundle exec middleman build --clean"
