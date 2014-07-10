#!/bin/bash
/usr/local/bin/brew update > /dev/null

OUTDATED=`/usr/local/bin/brew outdated`
if [ -n "$OUTDATED" ] ; then
	/Applications/terminal-notifier.app/Contents/MacOS/terminal-notifier -title "Homebrew Updates" -message "$OUTDATED"
fi