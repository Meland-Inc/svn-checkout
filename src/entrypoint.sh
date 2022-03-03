
#!/usr/bin/env bash

set -o errexit
set -o pipefail

tmp_dir=$(dirname $(dirname "${BASH_SOURCE}"))
cd "$tmp_dir"
PROJECT_ROOT=$(pwd)
RUN_ROOT=/$(pwd)

URL=$1
TARGET_DIR=$2
USERNAME=$3
PASSWORD=$4

svn checkout --username $USERNAME --password $PASSWORD $URL $TARGET_DIR

rm -rf $TARGET_DIR/.svn