## How does it work?

Quicksilver is a simple tool that automates version control (in Mercurial) for a folder.

Quicksilver will create a LaunchAgent plist file which will run `quicksilver.rb` every time it notices a change in it's `WatchPath`s. You just point to a directory and Quicksilver will automatically version control it.

## Install
```
sudo gem install plist
bash <(curl -s https://raw.github.com/yshchan/quicksilver/master/install.sh)
```
## Uninstall
```
bash <(curl -s https://raw.github.com/yshchan/quicksilver/master/uninstall.sh)
```