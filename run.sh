#!/bin/bash
set -x
set -e

mv ./src/main/proto/tensorflow ./src/main/proto/tensorflow-temp
mv ./src/main/proto/tensorflow-temp/tensorflow ./src/main/proto/
rm -rf ./src/main/proto/tensorflow-temp

mv ./src/main/proto/tensorflow_serving ./src/main/proto/tensorflow_serving-temp
mv ./src/main/proto/tensorflow_serving-temp/tensorflow_serving ./src/main/proto/
rm -rf ./src/main/proto/tensorflow_serving-temp

mvn clean install
mvn compile
