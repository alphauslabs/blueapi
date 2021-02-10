echo "Compiling proto files..." && buf generate

echo "Generating OpenAPI docs..."
protoc -I . --openapiv2_out ./openapiv2 --openapiv2_opt logtostderr=true $(find ./blue -name '*.proto')
protoc -I . --openapiv2_out ./openapiv2 --openapiv2_opt logtostderr=true $(find ./awscost -name '*.proto')
protoc -I . --openapiv2_out ./openapiv2 --openapiv2_opt logtostderr=true $(find ./operations -name '*.proto')

echo "Generating html docs..."
protoc --doc_out=./htmldocs --doc_opt=html,blue.html $(find ./blue -name '*.proto')
protoc --doc_out=./htmldocs --doc_opt=html,awscost.html $(find ./awscost -name '*.proto')
protoc --doc_out=./htmldocs --doc_opt=html,operations.html $(find ./operations -name '*.proto')
