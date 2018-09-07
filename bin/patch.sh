#!/bin/bash

java -jar ./lib/amf.jar patch --format-in "AML 1.0" -ds file://asyncapi/dialect.yaml --media-type-in application/yaml $1
