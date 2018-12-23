#!/bin/bash

zpool list | awk '/^zroot/ { print $7 }'
