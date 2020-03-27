#!/bin/bash

jo -p pretty=true type=Service filter="match(\"*swap*\", service.name)" author=icingaadmin comment="Who needs swap" fixed=true start_time=$(date +%s -d "+0 hour") end_time=$(date +%s -d "+1 minute") > file.json

exit 0
