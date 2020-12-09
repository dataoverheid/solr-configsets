#!/bin/bash


set -eu


PROJECT_ROOT="$(realpath "$(dirname "$0")/../")"
cd "${PROJECT_ROOT}"

if [ ! -e /.dockerenv ]; then
    source .env
fi


declare -a CONFIGSETS=(
    "donl_dataset"
    "donl_search"
    "donl_suggester"
    "donl_signals"
    "donl_signals_aggregated"
)
echo "Uploading configsets to Apache Zookeeper"

for CONFIGSET in "${CONFIGSETS[@]}";
do
    echo "> Uploading ${CONFIGSET}"

    bash "${SOLR_INSTALLATION_PATH}/server/scripts/cloud-scripts/zkcli.sh" \
        -z "${ZOOKEEPER_CONNECTION_STRING}" \
        -cmd upconfig \
        -confdir "${PROJECT_ROOT}/configsets/${CONFIGSET}/conf" \
        -confname "${CONFIGSET}" > /dev/null 2>&1
done
