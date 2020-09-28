#!/bin/bash


set -eu


PROJECT_ROOT="$(realpath "$(dirname "$0")/../")"
cd "${PROJECT_ROOT}"

if [ ! -e /.dockerenv ]; then
    source .env
fi


declare -a CONFIGSETS=("donl_dataset" "donl_search" "donl_suggester" "donl_signals")
echo "Generating configset metadata"

for CONFIGSET in "${CONFIGSETS[@]}";
do
    METADATA_PATH="./configsets/${CONFIGSET}/conf/metadata"

    if [ -f "${METADATA_PATH}" ]; then
        rm -r "${METADATA_PATH}"
    fi

    echo "> Adding metadata to configset ${CONFIGSET}"
    cat > "${METADATA_PATH}" <<EOF
# Configset: ${CONFIGSET}
# Generated on: $(date)
# Source: https://github.com/dataoverheid/solr-configsets
# Version: $(cat ./VERSION)
EOF
done
