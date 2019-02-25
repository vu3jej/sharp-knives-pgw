#!/usr/bin/env bash

apt-get update
apt-get install -y aptitude postgresql postgresql-contrib tree
source ${SHARED_DIR}/scripts/pg-setup.sh
