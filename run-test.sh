#!/usr/bin/env bash

npm install -g bootprint || exit 1
npm install -g bootprint-openapi || exit 1
npm install -g bootprint-swagger || exit 1


function testBootprint() {
    
    rm -rf target
    echo running: bootprint "$1" "$2" target
    bootprint "$1" "$2" target || exit 1
    if [ ! -f "target/index.html" ] ; then
        echo No target/index.html found
        exit 1
    fi
    
    if [ ! -f "target/main.css" ] ; then
        echo No target/main.css found
        exit 1
    fi
    echo done 
}

testBootprint swagger http://petstore.swagger.io/v2/swagger.json 
testBootprint swagger minimal.yaml
testBootprint openapi http://petstore.swagger.io/v2/swagger.json 
testBootprint openapi minimal.yaml
