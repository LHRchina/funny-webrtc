#!/usr/bin/env bash
# Unofficial Bash Strict Mode
set -euo pipefail
IFS=$'\n\t'

# internal variables
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

sudo openssl req -x509 -sha256 -nodes -newkey rsa:2048 -days 3650 -subj "/C=US/ST=Oregon/L=Portland/O=Company Name/OU=Org/CN=localhost" -keyout ${DIR}/privkey.pem -out ${DIR}/fullchain.pem