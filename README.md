# brewupdate #

brewupdate is a [launchd agent][launchd] to update [homebrew][homebrew] formulae automaticly every day at 3 PM (local time).

Brewupdate will not upgrade your installed formulae. It's sole responsibility is to fetch new formulae.

## How to Install ##
To install `brewupdate`, copy the plist to `~/Library/LaunchAgents` and run the command `launchctl load ~/Library/LaunchAgents/eu.gonzonet.brewupdate.plist` to load the LaunchAgent into the launchd manager.

Here is a quick rundown:
```
> mkdir ~/Library/LaunchAgents
> cp eu.gonzonet.brewupdate.plist ~/Library/LaunchAgents
> launchctl load ~/Library/LaunchAgents/eu.gonzonet.brewupdate.plist
```

## How to Upgrade ##
If you installed a previous version of brewupdate, unload the loaded LaunchAgent, copy the new agent to `~/Library/LaunchAgents`, and load the copied LaunchAgent.

Here is a quick rundown:
```
> launchctl unload ~/Library/LaunchAgents/eu.gonzonet.brewupdate.plist
> cp eu.gonzonet.brewupdate.plist ~/Library/LaunchAgents
> launchctl load ~/Library/LaunchAgents/eu.gonzonet.brewupdate.plist
```

[launchd]: http://developer.apple.com/library/mac/#technotes/tn2083/_index.html
[homebrew]: https://github.com/mxcl/homebrew/
[apple-removed-redirection]: http://stackoverflow.com/a/15655471/1712728
