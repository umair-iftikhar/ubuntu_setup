#!/bin/sh

for package; do
    dpkg -s "$package" >/dev/null 2>&1 && {
        echo "$package is installed."
    } || {
        sudo apt-get install $package
    }
done
