#!/usr/bin/env bash

polo() {
    cd $MACRO ; echo "now you $0  back to last $(pwd)" || echo 'error' >&2
}