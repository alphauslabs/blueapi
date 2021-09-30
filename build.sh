# Compile for blue-sdk-go.
echo "Compiling proto files..." && buf generate

# Compile services for blue-sdk-python; with grpc.
mkdir -p ./generated/py
python3 -m grpc_tools.protoc -I . --python_out=./generated/py --grpc_python_out=./generated/py \
        ./org/v1/*.proto \
        ./kvstore/v1/*.proto \
        ./iam/v1/*.proto \
        ./admin/v1/*.proto \
        ./cost/v1/*.proto \
        ./billing/v1/*.proto \
        ./operations/v1/*.proto \
        ./preferences/v1/*.proto

# Compile ./api/* for blue-sdk-python; without grpc.
python3 -m grpc_tools.protoc -I . --python_out=./generated/py \
        $(for v in $(find ./api -type d); do echo -n "$v/*.proto "; done)

echo "Generating OpenAPI docs..."
protoc -I . --openapiv2_out ./openapiv2 --openapiv2_opt logtostderr=true --openapiv2_opt allow_merge=true \
       ./org/v1/*.proto \
       ./kvstore/v1/*.proto \
       ./iam/v1/*.proto \
       ./admin/v1/*.proto \
       ./cost/v1/*.proto \
       ./billing/v1/*.proto \
       ./operations/v1/*.proto \
       ./preferences/v1/*.proto
