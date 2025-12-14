#!/bin/zsh

if pgrep -x hyprsunset > /dev/null; then
    pkill hyprsunset
    caelestia shell toaster info "Night Light" "Off" ""
else
    hyprsunset --temperature 4500 &
    caelestia shell toaster info "Night Light" "On" ""
fi
