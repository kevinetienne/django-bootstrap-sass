#!/bin/bash

# Forked from https://github.com/thomas-mcdonald/bootstrap-sass/blob/master/update-bootstrap.sh

ROOT=`pwd`"/bootstrap_sass/static"
TMP='tmp/sass-twitter-bootstrap'

# Pull down sass-twitter-bootstrap sources
git clone https://github.com/jlong/sass-twitter-bootstrap.git tmp/sass-twitter-bootstrap

rm -r $ROOT/javascripts/*
rm -r $ROOT/images
rm -r $ROOT/stylesheets/*

cp -r $TMP/lib/* $ROOT/stylesheets
cp -r $TMP/js/* $ROOT/javascripts
cp -r $TMP/fonts/* $ROOT/fonts

# Remove tests
rm -r $ROOT/javascripts/tests

rm -rf tmp

