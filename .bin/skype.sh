#!/usr/bin/env sh

pkill skype -9
#skype
env PULSE_LATENCY_MSEC=60 skype %U
