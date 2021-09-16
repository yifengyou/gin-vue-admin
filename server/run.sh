#!/bin/bash

set -xe

go generate

go build -o server main.go

./server
