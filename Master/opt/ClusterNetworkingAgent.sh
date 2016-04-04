#!/bin/sh

case "${ACTION}" in
        remove)
                logger "Removing ${INTERFACE} to Pi Cluster Bridge (br0)"
                brctl delif br0 ${INTERFACE}
                ;;
        add)
                logger "Adding ${INTERFACE} to Pi Cluster Bridge (br0)"
                brctl addif br0 ${INTERFACE}
                ;;
        *)
                logger "Doing Nothing on ${INTERFACE} to Pi Cluster Bridge (br0) -- ${ACTION}"
                ;;
esac
