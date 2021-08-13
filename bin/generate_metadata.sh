#!/bin/bash


set -eu


PROJECT_ROOT="$(realpath "$(dirname "$0")/../")"
cd "${PROJECT_ROOT}"

if [ ! -e /.dockerenv ]; then
    source ./.env
fi


source ./configsets.sh


echo "Generating configset metadata"

# shellcheck disable=SC2153
for CONFIGSET in "${CONFIGSETS[@]}";
do
    METADATA_PATH="./configsets/${CONFIGSET}/conf/metadata"

    if [ -f "${METADATA_PATH}" ]; then
        rm -r "${METADATA_PATH}"
    fi

    if [ -f "${METADATA_PATH}.txt" ]; then
        rm -r "${METADATA_PATH}.txt"
    fi

    echo "> Adding metadata to configset ${CONFIGSET}"
    cat > "${METADATA_PATH}.txt" <<EOF
# Configset: ${CONFIGSET}
# Generated on: $(date)
# Source: https://github.com/dataoverheid/solr-configsets
# Version: $(cat ./VERSION)
EOF
done
