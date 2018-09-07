# AsyncAPI AMF Parser

Experimental parser for AsyncAPI written as an [AML](http://a.ml) vocabulary and dialect.
It will support standard AsyncAPI but the main goal is to try new ideas for the spec.


## Files

The declaration of the AsyncAPI vocabulary semantics and the dialect for the AsyncAPI specification can be found in the `asyncapi` directory.
These [AML](http://a.ml) documents are parsed by [AMF](http://github.com/aml-org/amf) to generate a graph with the information for the AsyncAPI spec.

- asyncapi/vocabulary.yaml: AsyncAPI Vocabulary
- asyncapi/dialect.yaml: AsyncAPI Dialect

AMF is bundled in the repo and it can be found in the `lib` directory.

Uitlities to work with the AMF parser can be found in the `bin` directory. It has the following scripts:

- bin/parse.sh: parse script
- bin/validate.sh: validate script
- bin/patch.sh: applies a patch to a base AsyncAPI spec

## Parsing

Parse the example. From the top level directory of the project:

``` bash
$./bin/parse.sh example $PATH_TO_EXAMPLE_FILE
```

Parse the dialect:

``` bash
$./bin/parse.sh dialect
```

## Validate

Validate the example. From the top level directory of the project:

``` bash
$./bin/validate.sh example $PATH_TO_EXAMPLE_FILE
```

Validate the dialect:

``` bash
$./bin/validate.sh dialect
```

## Patching

To apply a patch, just point the `patch.sh` script to the file to be patched from the top level directory of the project.

``` bash
$./bin/patch.sh $PATH_TO_EXAMPLE_PATCH_FILE
```

## Examples

### Basic

Just a basic AsyncAPI file used for testing.
It can be found at `examples/basic`.

### Modular

The same API as in the basic example but using modules to break the spec in stand-alone parsing and validating units.
It can be found at `examples/modular`. It includes the base API, one library of messages and a for a security scheme.

### Overlays

An example of how to separate spec functional and deployment aspects in two files: a base spec and a patch that can be applied semantically over the basic spec.
Multiple patches could be used to deploy the same API in multiple environments. It can be found in `examples/overlays`.


## Differences from spec

- security scheme requirements format is slightly different
- declarations are not under components but directly under the top level node
- support for JSON schema nodes has been done inline for convenience, not complete
