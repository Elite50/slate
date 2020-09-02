#!/bin/bash
scp -ri ~/Documents/Crowdskout/crowdskout-config/pems/production_rsa build/* cs@172.31.47.94:/var/www/docs.crowdskout.com/api
