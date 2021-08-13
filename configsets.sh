#!/bin/bash


set -eu


# shellcheck disable=SC2034
declare -a CONFIGSETS=(
    "donl_concepts"
    "donl_dataset"
    "donl_location_data"
    "donl_search"
    "donl_signals"
    "donl_signals_aggregated"
    "donl_suggester"
)
