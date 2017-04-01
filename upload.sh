#!/usr/bin/env bash
bundle exec jekyll build
cd ./_site
aws s3 sync . s3://astuaryart.com/
