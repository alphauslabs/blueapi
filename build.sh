echo "Compiling proto files..." && buf generate

echo "Generating OpenAPI docs..."
protoc -I . --openapiv2_out ./openapiv2 --openapiv2_opt logtostderr=true --openapiv2_opt allow_merge=true \
       ./org/v1/*.proto \
       ./iam/v1/*.proto \
       ./cost/v1/*.proto \
       ./billing/v1/*.proto \
       ./operations/v1/*.proto \
       ./preferences/v1/*.proto
