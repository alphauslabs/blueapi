protoc -I . --openapiv2_out ./openapiv2 --openapiv2_opt logtostderr=true $(find ./blue -name '*.proto')
protoc -I . --openapiv2_out ./openapiv2 --openapiv2_opt logtostderr=true $(find ./awscost -name '*.proto')
