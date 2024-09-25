FROM swaggerapi/swagger-ui:v5.17.7

COPY openapi.yml /docs/openapi.yml

ENV SWAGGER_JSON=/docs/openapi.yml
