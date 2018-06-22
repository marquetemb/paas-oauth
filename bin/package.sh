#!/bin/bash -e

if [[ -z "$1" ]]; then
    export VERSION=$(cat ../$BASEDIR/../VERSION)
else
    export VERSION=$1
fi

. bin/commons.sh

mkdir -p $GOPATH/src/github.com/stratio/paas-oauth

cp -R $PWD/common $GOPATH/src/github.com/stratio/paas-oauth
cp -R $PWD/dcos-oauth $GOPATH/src/github.com/stratio/paas-oauth
cp -R $PWD/docs $GOPATH/src/github.com/stratio/paas-oauth
cp -R $PWD/Godeps $GOPATH/src/github.com/stratio/paas-oauth
cp -R $PWD/test $GOPATH/src/github.com/stratio/paas-oauth
cp -R $PWD/vendor $GOPATH/src/github.com/stratio/paas-oauth
cp -R $PWD/version $GOPATH/src/github.com/stratio/paas-oauth
cp $PWD/AUTHORS.md $GOPATH/src/github.com/stratio/paas-oauth
cp $PWD/docker-compose.yml $GOPATH/src/github.com/stratio/paas-oauth
cp $PWD/Dockerfile $GOPATH/src/github.com/stratio/paas-oauth
cp $PWD/LICENSE $GOPATH/src/github.com/stratio/paas-oauth
cp $PWD/Makefile $GOPATH/src/github.com/stratio/paas-oauth
cp $PWD/README.md $GOPATH/src/github.com/stratio/paas-oauth

cd $GOPATH/src/github.com/stratio/paas-oauth

make
