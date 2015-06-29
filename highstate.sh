#!/bin/sh

vagrant ssh -c 'sudo salt "*" state.highstate'
