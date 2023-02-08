#!/bin/bash
#
#    Update everything on your machine
#

# Quit script and exit on errors
set -e

# Functions:

update () {
    echo "Starting system update.."
    sudo apt update -yy
    sudo apt upgrade -yy
}

clean () {
    echo "Clearning up..."
    sudo apt autoremove -yy
    sudo apt autoclean
}

leave () {
    echo "--------------------"
    echo "- Update completed -"
    echo "--------------------"
    exit
}

help () {
    echo "To update the system, run script wituout arguments"
    echo "To clean up, run script with the argument: --clean"
}

# Execution:

if [ "$1" == "--clean" ]; then
    update
    clean
    leave
fi

if [ "$1" == "--help" ]; then
    help
    exit
fi

if [ -n "$1" ]; then
    echo "Invalid argument"
    exit 1
fi

update
leave