#!/bin/bash

function create_autostart {
    USERNAME=$1
    NAME=$2
    NAME=$3

    DESKTOP_FILE="[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=$NAME
Exec=$EXEC
Terminal=false"

    as_user $USERNAME "echo $DESKTOP_FILE > ~/.config/autostart/$name.desktop"

}

function create_launcher {


}