docker run --rm ^
    -v "%cd%":/local ^
    openapitools/openapi-generator-cli:v7.14.0 generate ^
    -g openapi-yaml ^
    -i /local/ontology-api.yaml ^
    -o /local ^
    --additional-properties=outputFile=/local/openapi.yaml