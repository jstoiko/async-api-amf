#!/bin/bash

case "$1" in
    dialect)
        java -jar ./lib/amf.jar parse --format-in "AML 1.0" --media-type-in application/yaml file://asyncapi/dialect.yaml
        ;;
    example)
        java -jar ./lib/amf.jar parse -ds file://asyncapi/dialect.yaml --format-in "AML 1.0" --media-type-in application/yaml example.yaml
        ;;
    *)
        echo $"Usage $0 {dialect|example}"
        exit 1
esac
