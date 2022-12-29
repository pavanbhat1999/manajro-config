#!/bin/bash
killall -q polybar
polybar bottom --config=/home/root99/.config/polybar.old/config & polybar right --config=/home/root99/.config/polybar.old/config
