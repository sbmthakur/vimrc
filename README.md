# vimrc

This repository contains code for my personal vim configuration. If you are thinking of cloning it then I request you to refrain from it. Because to understand vim, you must know everything that goes into your vimrc. My vimrc is designed to keep the user on the home row. I am not a fan of using arrow keys in vim. They didn't exist on [ADM-3A](https://en.wikipedia.org/wiki/ADM-3A#Legacy), the machine on which `vi` was created. Please read the following points before using this configuration:

## Running on Linux(excluding WSL)

* `Caps Lock` has been mapped to `Control` using `gnome-tweak-tool`(or changing Caps Lock behavior in `Keyboard Hardware and Layout` under System Settings in KDE.)
*  When pressed and released, `Caps Lock` functions as `Escape`, so that we can quickly switch to normal mode from insert mode. This was achieved using a lightweight but great program named [xcape](https://github.com/alols/xcape).

## Running on Windows(including WSL)

* On Windows, `Caps Lock` can be used as `Control` and `Escape` by using the following AutoHotKey script(*caps.ahk*):
```
https://gist.github.com/sbmthakur/1f3550c4fe2995b6af7e535e2e3cc637
```
* To run the script on startup everytime, create a shorcut to `caps.ahk` in the Starup folder.
