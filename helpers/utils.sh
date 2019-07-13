#!/bin/bash

function as_user {
    echo $2 | su $1 -l -c $0
}

