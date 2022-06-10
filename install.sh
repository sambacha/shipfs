#!/bin/sh

bin=shipfs

binpath=/usr/local/bin
if [ -d "$binpath" ]; then
	mv "$bin" "$binpath/$bin"
	echo "installed $binpath/$bin"
	exit 0;
fi

binpath=/usr/bin
if [ -d "$binpath" ]; then
	mv "$bin" "$binpath/$bin"
	echo "installed $binpath/$bin"
	exit 0;
fi

echo "ERROR: Command not found"
exit 127;