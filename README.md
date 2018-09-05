# AsyncAPI AMF Parser

## Files

- asyncapi/vocabulary.yaml: AsyncAPI Vocabulary
- asyncapi/dialect.yaml: AsyncAPI Dialect

- bin/parse.sh: parse script
- bin/validate.sh: validate script
- lib/amf.jar: bundled version of AMF for the parse and validate script

- example.yaml: AsyncAPI example
- errors.txt: Errors found in the AsyncAPI specification


## Parsing

Parse the example

``` bash
$./bin/parse.sh example
```

Parse the dialect:

``` bash
$./bin/parse.sh dialect
```

## Validate

Validate the example

``` bash
$./bin/validate.sh example
```

Validate the dialect:

``` bash
$./bin/validate.sh dialect
```

## Differences from spec

- security scheme requirements format is slightly different
- declarations are not under components but directly under the top level node
- support for JSON schema nodes has been done inline for convenience, not complete
