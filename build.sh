#!/bin/bash
docker run --mount type=bind,source=$(pwd),target=/mnt -w /mnt 790026602975.dkr.ecr.us-east-1.amazonaws.com/api-docs sh -c "source /opt/rh/rh-ruby23/enable && bundle install && bundle exec middleman build --clean"
