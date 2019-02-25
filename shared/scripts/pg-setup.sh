#!/usr/bin/env bash

sudo -u postgres createuser -s pgw; echo "created user"
sudo -u postgres createdb pgw-main; echo "created database"
