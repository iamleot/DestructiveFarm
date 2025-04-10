#!/bin/sh

# Use FLASK_DEBUG=True if needed

if [ -z "${SERVER_PASSWORD}" ]; then
	echo "Please set a password via SERVER_PASSWORD environment variable"
	exit 1
fi

if [ -z "${API_TOKEN}" ]; then
	echo "Please set an API token via API_TOKEN environment variable"
	exit 1
fi

FLASK_APP=$(dirname $(readlink -f $0))/standalone.py python3 -m flask run --host 0.0.0.0 --with-threads
