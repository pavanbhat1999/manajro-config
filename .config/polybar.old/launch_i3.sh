#!/bin/bash

pkill polybar
polybar bottom --config=$HOME/.config/polybar.old/config_i3 & polybar right --config=$HOME/.config/polybar.old/config_i3


