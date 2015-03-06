#!/bin/sh

curl -i -X POST -d "{\"api_token\":\"42\",\"customer\":5432567,\"quantity\":1}" localhost:3000/api/purchase/7
