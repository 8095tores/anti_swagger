# Anti Swagger

библиотека для OneScript, которая преобразовывает описания сервиса по спецификации OpenApi в расширение

opm build .

opm install ./anti_swagger-0.0.4.ospx

anti_swagger --version

anti_swagger c --help

anti_swagger c "D:\Users\vinnichenko\Documents\mule\postman2openapi\postman_collection_3.json" "My_ext" "D:\temp\OAS2сfe_FULL.cfe"

anti_swagger c .\test_data\OAS3.json "My_ext" .\test_data\OAS2сfe_FULL.cfe

anti_swagger c --pt true .\test_data\postman_collection.json "My_ext" .\test_data\OAS2сfe_FULL.cfe

anti_swagger c --pt true "D:\git\Oscript\anti_swagger\test_data\postman_collection.json" "My_ext" "D:\git\Oscript\anti_swagger\test_data\OAS2сfe_FULL.cfe"