#!/bin/bash

function create_autostart {
    USERNAME=$1
    NAME=$2
    EXEC=$3

    DESKTOP_FILE="[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=$NAME
Exec=$EXEC
Terminal=false"

    as_user $USERNAME "mkdir -p ~/.config/autostart/"
    as_user $USERNAME "echo $DESKTOP_FILE > ~/.config/autostart/$name.desktop"

}

function create_launcher {

    USERNAME=$1
    NAME=$2
    EXEC=$3
    ICON=$4
    COMMENT=$5

    DESKTOP_FILE="[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=$NAME
Icon=$ICON
Exec=$EXEC
Comment=$COMMENT
Terminal=false"

    as_user $USERNAME "mkdir -p ~/.local/share/applications"
    as_user $USERNAME "echo $DESKTOP_FILE > ~/.local/share/applications/$name.desktop"
}