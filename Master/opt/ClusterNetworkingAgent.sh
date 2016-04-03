#!/bin/sh

brctl addif br0 ${INTERFACE}
logger "Adding ${INTERFACE} to Pi Cluster Bridge (br0)"
