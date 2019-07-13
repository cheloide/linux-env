#!/bin/bash

function as_user {
    echo $2 | su $2 -l -c $0
}

