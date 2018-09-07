#!/bin/bash

case "$1" in
    dialect)
        java -jar ./lib/amf.jar validate --format-in "AML 1.0" --media-type-in application/yaml dialect.yaml
        ;;
    example)
        java -jar ./lib/amf.jar validate -ds file://asyncapi/dialect.yaml --format-in "AML 1.0" --media-type-in application/yaml $2
        ;;
    *)
        echo $"Usage $0 {dialect|example}"
        exit 1
esac
