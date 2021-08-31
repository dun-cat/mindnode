#! /bin/bash

# osascript mindnode-export.applescript
find ~/Library/Mobile\ Documents/ -path \*MindNode/Documents/\*.mindnode -exec cp -R "{}" ./src/ \;
