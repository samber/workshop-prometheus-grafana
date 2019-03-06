#!/bin/bash

#
# this should be called inside tmux
#

while [ true ]; do
    echo Insert new user in db
    #psql postgres://workshop:workshop@localhost:5432/workshop --command "INSERT INTO users(email, password, name) VALUES ('a', 'b', 'c');"
    docker-compose exec postgres psql postgres://workshop:workshop@localhost:5432/workshop --command "INSERT INTO users(email, password, name) VALUES ('a', 'b', 'c');"

    # run at least once every 30 seconds
    pause_time=$(( ${RANDOM} % 30 ))
    echo sleep ${pause_time}
    sleep ${pause_time}

    echo
done
