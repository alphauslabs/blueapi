# Compile for blue-sdk-go.
echo "Compiling proto files..." && buf generate

# Compile services for blue-sdk-python; with grpc.
echo "Compiling Python GRPC services..."
mkdir -p generated/py/alphausblue
python3 -m grpc_tools.protoc -I . --python_out=./generated/py/alphausblue --grpc_python_out=./generated/py/alphausblue \
        ./org/v1/*.proto \
        ./kvstore/v1/*.proto \
        ./iam/v1/*.proto \
        ./admin/v1/*.proto \
        ./cost/v1/*.proto \
        ./billing/v1/*.proto \
        ./operations/v1/*.proto \
        ./cover/v1/*.proto \
        ./pricing/v1/*.proto \
        ./preferences/v1/*.proto

# Compile ./api/* for blue-sdk-python; without grpc.
echo "Compiling Python SDK data..."
python3 -m grpc_tools.protoc -I . --python_out=./generated/py/alphausblue \
        $(for v in $(find ./api -type d); do echo -n "$v/*.proto "; done)

echo "Replacing implicit relative imports with absolute imports..."
for package in $(find generated/py/alphausblue -mindepth 1 -maxdepth 1 -type d -printf "%f "); do
        echo "Found package ${package}. Beginning replacement"
        find generated/py/alphausblue/. -name '*.py' -exec sed -i -e "s/from ${package}/from alphausblue.${package}/g" {} \;
done

echo "Creating Python package files..."
find generated/py/alphausblue/. -type d -exec touch {}/__init__.py \;

echo "Generating OpenAPI docs..."
protoc -I . --openapiv2_out ./openapiv2 --openapiv2_opt logtostderr=true --openapiv2_opt allow_merge=true \
       ./org/v1/*.proto \
       ./iam/v1/*.proto \
       ./admin/v1/*.proto \
       ./cost/v1/*.proto \
       ./billing/v1/*.proto \
       ./operations/v1/*.proto \
       ./cover/v1/*.proto \
       ./pricing/v1/*.proto \
       ./preferences/v1/*.proto

echo "Generating html docs..."
protoc --doc_out=./generated/ --doc_opt=html,index.html \
       ./org/v1/*.proto \
       ./iam/v1/*.proto \
       ./admin/v1/*.proto \
       ./cost/v1/*.proto \
       ./billing/v1/*.proto \
       ./operations/v1/*.proto \
       ./cover/v1/*.proto \
       ./pricing/v1/*.proto \
       ./preferences/v1/*.proto
