#!/bin/bash

# Location of script
SCRIPT=$(realpath "$0")
SCRIPT_PATH=$(dirname "$SCRIPT")
CONFIG_PATH="${SCRIPT_PATH}/conf.influxdb.toml"

# Run python script using venv built using Python module
"${SCRIPT_PATH}/venv/jobsummary/bin/python3" "${SCRIPT_PATH}/src/jobsummary.py" --influx-config "$CONFIG_PATH" "$@"