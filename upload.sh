#!/usr/bin/env bash

# Thumbify Images
for file in $(ls ./images/ -I "logo.png" -I "banner.jpg" -I "thumb-*"); do
    convert ./images/${file} \
	    -crop 400x400+0+0 \
	    -gravity center \
	    -resize 400x400 \
	    -extent 400x400 \
	    ./images/thumb-${file}
done

# Build Site
bundle exec jekyll build

# Upload to S3
cd ./_site && aws s3 sync . s3://astuaryart.com/
