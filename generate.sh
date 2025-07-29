docker run --rm \
    -v "${PWD}:/local" \
    openapitools/openapi-generator-cli:v7.14.0 generate \
    -i /local/ontology-api.yaml \
    -g openapi-yaml \
    --additional-properties=outputFile=/local/openapi.yaml \
    -o /local