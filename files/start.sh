#!/bin/sh
rtorrent 2>&1 > /dev/null &
wait ${!}
