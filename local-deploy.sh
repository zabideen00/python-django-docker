#!/bin/bash

USER_ID=$(id -u) docker-compose -f docker-compose.local.yml up -d $1
