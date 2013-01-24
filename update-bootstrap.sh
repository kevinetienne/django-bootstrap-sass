#!/bin/bash

# Forked from https://github.com/thomas-mcdonald/bootstrap-sass/blob/master/update-bootstrap.sh

ROOT=`pwd`"/bootstrap_sass/static"
TMP='tmp/sass-twitter-bootstrap'

# Pull down sass-twitter-bootstrap sources
git clone https://github.com/jlong/sass-twitter-bootstrap.git tmp/sass-twitter-bootstrap

cp -r $TMP/lib/* $ROOT/stylesheets
cp -r $TMP/js/* $ROOT/javascripts
cp -r $TMP/img/* $ROOT/images

# Remove tests
rm -r $ROOT/javascripts/tests
rm -r $ROOT/stylesheets/bootstrap/tests

# Update paths
sed -i .bak 's!../img!../images!g' $ROOT/stylesheets/_variables.scss
rm $ROOT/stylesheets/*.bak

rm -rf tmp

