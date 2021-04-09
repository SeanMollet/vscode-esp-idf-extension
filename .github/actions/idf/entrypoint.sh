#!/usr/bin/env bash
set -e

. $IDF_PATH/export.sh

cd /github/workspace

pip install -r requirements.txt
pip install -r esp_debug_adapter/requirements.txt

yarn
yarn lint
Xvfb :99 & sleep 2
yarn test
cat testing.results.log