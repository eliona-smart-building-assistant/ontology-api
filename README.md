# Eliona Ontology REST API #

The Eliona Ontology REST API enables access to the resources and data of an Eliona environment.

## API Specification ##

The API is defined by an OpenAPI specification. This specification has a main version to handle changes, that are not backward compatible. The current main version is v1. All changes that are backward compatible have to result in an increased version depending on whether it's a minor and major change.

In view of a simplified editing the specification is partitioned into multiple files. The file `ontology-api.yaml` combines all the other files grouped by `parameters`, `paths` and `schemas`.

[See Eliona Ontology API Documentation](https://api.eliona.io/ontology)

This repository contains HTTP request examples for IntelliJ IDEA and Postman.
The [usage examples](./examples) folder includes `.http` files, and `postman_collection.json` provides an importable Postman collection.

## Generation ##

Each new version of the Eliona Ontology REST API specification requires a list of further generation steps. These steps ensure, that the version is available in the API implementation itself and in all dependent modules.

#### 1. Generate single openapi.yaml file ####

Because the OpenAPI specification is partitioned into multiple files, a single `openapi.yaml` file that contains the complete API definition in one must be generated. This single file is needed for further code generation which is easier using one file instead of multiple files in different directories.

The easiest way to generate the `openapi.yaml` file is to use one of the predefined generation scripts `generate.cmd` or `generate.sh` which use the [OpenAPI Generator](https://openapi-generator.tech/docs/generators/openapi-yaml) Docker image.

After generating the `openapi.yaml` the new version must be committed and pushed to GitHub Repository. After this, the latest specification is available for further processing via the raw file link `https://raw.githubusercontent.com/eliona-smart-building-assistant/ontology-api/develop/openapi.yaml`.

#### 2. Generate API server stub ####

To implement the changes made to the API specification, you have to (re-)generate the source code for the API server. The API server is a private repository which covers all the implementation to access an Eliona environment. A documentation how to generate the server source code is included in the API server repository.

After generating the API server repository should be tagged with the current API version.