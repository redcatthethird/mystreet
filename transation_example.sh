#!/bin/sh

curl -i -X POST -d "{\"api_token\":\"42\",\"customer\":1,\"quantity\":1}" localhost:3000/api/purchase/3
