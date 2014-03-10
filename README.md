## How does it work?

Quicksilver is a simple tool that automates version control for a folders on Mac. It is powered by [Mercurial](http://mercurial.selenic.com).

It does so by creating a plist and loading it using `launchctl`. The plist includes a set of *WatchPaths* which consists of folders, that it monitors for changes. Once a change has been detected it will run a shell script that will commit the changes in it's respective repository. 

## Install
```
sudo gem install plist
bash <(curl -s https://raw.github.com/yshchan/quicksilver/master/install.sh)
```
## Uninstall
```
bash <(curl -s https://raw.github.com/yshchan/quicksilver/master/uninstall.sh)
```
