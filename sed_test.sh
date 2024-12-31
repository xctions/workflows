#!/usr/bin/env bash

set -e

a=$(echo "ABC
<!-- A:START -->
abc
abc
xxx
<!-- A:END -->
")

echo "$a"
echo "==========================="
b=$(echo "$a" | sed -n '/<!-- A:START -->/,/<!-- A:END -->/p')
echo "$b"
echo "==========================="

c=$(echo "$b" | sed '1d;$d')
echo "$c"