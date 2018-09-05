# AsyncAPI AMF Parser

## Files

- dialect.yaml: AsyncAPI Dialect
- example.yaml: AsyncAPI example
- parse.sh: parse script
- validate.sh: validate script
- errors.txt: Errors found in the AsyncAPI specification
- amf.jar: bundled version of AMF for the parse and validate script

## Parsing

Parse the example

``` bash
$./parse.sh example
```

Parse the dialect:

``` bash
$./parse.sh dialect
```

## Validate

Validate the example

``` bash
$./validate.sh example
```

Validate the dialect:

``` bash
$./validate.sh dialect
```

## Differences from spec

- security scheme requirements format is slightly different
- declarations are not under components but directly under the top level node
- support for JSON schema nodes has been done inline for convenience, not complete
