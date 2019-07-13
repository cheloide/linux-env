#!/bin/bash

function as_user {
    echo $2 | sudo su $2 -l -c $0
}

