#!/usr/bin/env bash

apt-get update
apt-get install -y build-essential libreadline6 libreadline6-dev postgresql postgresql-contrib python-pip libpq-dev python-dev
pip install pgcli

source ${SHARED_DIR}/scripts/pg-setup.sh
