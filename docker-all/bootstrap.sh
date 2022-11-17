#!/bin/bash

echo "Creating .env file..."
if [[ `uname` == "Darwin" ]]; then

ENV_CONF="\
HOST_SHORT=$(hostname -s)
HOST_FQDN=$(hostname -f)
HOST_IP=$(host $(hostname -f) | cut -d" " -f4)"

else

ENV_CONF="\
HOST_SHORT=$(hostname -s)
HOST_FQDN=$(hostname -f)
HOST_IP=$(hostname -I | awk '{print $1}')"

fi

# Write .env file using our settings in ENV_CONF
if [ ! -z "${ENV_CONF}" ] ; then 
   echo "${ENV_CONF}" > ./.env || fatal "Failed to write .env"
else
   warn "No .env content defined! :("
fi
