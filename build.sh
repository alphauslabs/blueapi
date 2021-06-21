echo "Compiling proto files..." && buf generate

echo "Generating OpenAPI docs..."
protoc -I . --openapiv2_out ./openapiv2 --openapiv2_opt logtostderr=true --openapiv2_opt allow_merge=true \
       ./org/v1/*.proto \
       ./iam/v1/*.proto \
       ./cost/v1/*.proto \
       ./globalconfig/v1/*.proto \
       ./operations/v1/*.proto

# echo "Generating html docs..."
# protoc --doc_out=./htmldocs --doc_opt=html,awscost.html $(find ./iam -name '*.proto')
# protoc --doc_out=./htmldocs --doc_opt=html,awscost.html $(find ./org -name '*.proto')
# protoc --doc_out=./htmldocs --doc_opt=html,awscost.html $(find ./awscost -name '*.proto')
# protoc --doc_out=./htmldocs --doc_opt=html,operations.html $(find ./operations -name '*.proto')
# protoc --doc_out=./htmldocs --doc_opt=html,operations.html $(find ./globalconfig -name '*.proto')
