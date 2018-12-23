#!/bin/bash

df /mnt/win | awk '{print $5}' | grep -v Use

