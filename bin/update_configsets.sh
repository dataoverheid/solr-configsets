#!/bin/bash


set -eu


PROJECT_ROOT="$(realpath "$(dirname "$0")/../")"
cd "${PROJECT_ROOT}"


bash ./bin/generate_metadata.sh
bash ./bin/zookeeper_upload.sh
