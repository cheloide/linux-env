#!/bin/bash

function as_user {
    echo running \"$2\" as $1
    su $1 -l -c "$2"
}

