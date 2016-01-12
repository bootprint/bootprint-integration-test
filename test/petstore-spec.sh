#!/usr/bin/env bash

rm -rf target
npm install -g bootprint || exit 1
npm install -g bootprint-swagger || exit 1
bootprint swagger http://petstore.swagger.io/v2/swagger.json target || exit 1
if [ ! -f "target/index.html" ] ; then
    echo No target/index.html found
    exit 1
fi

if [ ! -f "target/main.css" ] ; then
    echo No target/main.css found
    exit 1
fi