#!/bin/bash
read -p "Press enter to continue or ctrl+c to cancel setup"

printf "%s\n" "Removing old docker compose session"
docker compose -f docker-compose.yml down

printf "%s\n" "Starting dge docker compose session"
docker compose -f docker-compose.yml up -d

printf "%s\n" ""
printf "%s\n" "-------------------------------------------------------------------------"
printf "%s\n" ""
printf "%s" "Wait 60 seconds until Grafana, etc is up and running... "
sleep 60
printf "%s\n" "Done"
printf "%s\n" ""
printf "%s\n" "To see the dashboard open 127.0.0.1:3000 in a browser and login"
printf "%s\n" ""
exit 0
