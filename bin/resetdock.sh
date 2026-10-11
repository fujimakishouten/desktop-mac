#!/bin/sh

set -e

defaults write com.apple.dock ResetLaunchPad -bool true
killall Dock

