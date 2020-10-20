#!/usr/bin/env bash
# Unofficial Bash Strict Mode
set -euo pipefail
IFS=$'\n\t'

# internal variables
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

git clone https://github.com/LHRchina/funny-webrtc.git  /tmp/funny-webrtc

cd /tmp/funny-webrtc
npm install
