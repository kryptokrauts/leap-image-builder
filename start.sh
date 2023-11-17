#!/bin/bash

NODEOSBINDIR="/usr/bin"

echo -e "Starting Nodeos \n";

ulimit -n 65535
ulimit -s 64000

$NODEOSBINDIR/nodeos "$@"