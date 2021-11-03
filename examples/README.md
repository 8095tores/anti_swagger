# ANTI_SWAGGER - конвертор OpenAPI Specification (OAS) в код 1С


- OpenAPISpecicification.json - пример взятый с официального репозитория OAS 3.0 https://github.com/OAI/OpenAPI-Specification/blob/main/examples/v3.0/petstore-expanded.json

- OAS2CFE.cfe - расширение, полученное в результате работы приложения anti_swagger на основе OpenAPISpecicification.json командой 

```
anti_swagger convert .\examples\OpenAPISpecicification.json to_cfe OAS2CFE .\examples\OAS2CFE.cfe
```

или подготовленным скриптом

```
oscript .\examples\convert.os
```

