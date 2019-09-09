#!/bin/bash

# stop the daemons
/etc/init.d/dbus stop
/etc/init.d/bluetooth stop
killall -9 bluetoothd
killall -9 dbus-daemon

# start the daemons
/etc/init.d/dbus start
/etc/init.d/bluetooth start
