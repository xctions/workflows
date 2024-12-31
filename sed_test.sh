#!/usr/bin/env bash

set -e

a=$(echo "ABC
<!-- A -->
abc
abc
xxx
<!-- A -->
")

del="<!-- A -->"
echo "$a"
echo "==========================="
b=$(echo "$a" | sed -n "/$del/,/$del/p")
echo "$b"
echo "==========================="

c=$(echo "$b" | sed '1d;$d')
echo "$c"