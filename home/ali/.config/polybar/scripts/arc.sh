#!/bin/bash

awk '/^size/ { print $3 / 1048576 }' < /proc/spl/kstat/zfs/arcstats | sed 's/\..*$//'
