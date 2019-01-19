[![Build Status](https://travis-ci.org/purcell/emacs.d.png?branch=master)](https://travis-ci.org/purcell/emacs.d)
<a href="https://www.patreon.com/sanityinc"><img alt="Support me" src="https://img.shields.io/badge/Support%20Me-%F0%9F%92%97-ff69b4.svg"></a>

# A reasonable Emacs config

This is my emacs configuration tree, continually used and tweaked
since 2000, and it may be a good starting point for other Emacs
users, especially web developers. These days it's
somewhat geared towards OS X, but it is known to also work on Linux
and Windows.

Emacs itself comes with support for many programming languages. This
config adds improved defaults and extended support for the following, listed
in the approximate order of how much I use them, from most to least:

* CSS / LESS / SASS / SCSS
* Javascript / Typescript / Coffeescript
* HTML / HAML / Markdown / Textile / ERB
* Python
* Common Lisp (with Slime)
* PHP

In particular, there's a nice config for *autocompletion* with
[company](https://company-mode.github.io/), and
[flycheck](http://www.flycheck.org) is used to immediately highlight
syntax errors in Ruby, Python, Javascript, Haskell and a number of
other languages.

## Supported Emacs versions

The config should run on Emacs 24.3 or greater and is designed to
degrade smoothly - see the Travis build - but note that Emacs 24.5 and
above is required for an increasing number of key packages, so to get
full functionality you should use the latest Emacs version available
to you.

Some Windows users might need to follow
[these instructions](http://xn--9dbdkw.se/diary/how_to_enable_GnuTLS_for_Emacs_24_on_Windows/index.en.html)
to get TLS (ie. SSL) support included in their Emacs.

## Other requirements

To make the most of the programming language-specific support in this
config, further programs will likely be required, particularly those
that [flycheck](https://github.com/flycheck/flycheck) uses to provide
on-the-fly syntax checking.

## Installation

To install, clone this repo to `~/.emacs.d`, i.e. ensure that the
`init.el` contained in this repo ends up at `~/.emacs.d/init.el`:

```
git clone https://github.com/purcell/emacs.d.git ~/.emacs.d
```

Upon starting up Emacs for the first time, further third-party
packages will be automatically downloaded and installed. If you
encounter any errors at that stage, try restarting Emacs, and possibly
running `M-x package-refresh-contents` before doing so.

## KeyBindings

| window | keybinding                  |
| -      | -                           |
| C-=    | expand                      |
| C-s    | swiper                      |
| j k    | escape in evil insert state |
| C-x o  | other-window                |
| C-x 1  | delete other windows        |
| C-x 2  | split-window-below          |
| C-x 3  | split-window-right          |
| C-f    | forward-char                |
| C-b    | backward-char               |
| C-.    | mark set like C-SPC         |
| C-,    | evil-jump-backward          |
| M-,    | evil-jump-forward           |
| ,/     | comment                     |
    

## Evil mode KeyBinding

### Evil-leader is SPC

| key | function                                |
| ff  | find-file                               |
| pf  | projectile-find-file                    |
| pp  | projectile-switch-projectile            |
| pr  | projectile-replace                      |
| ps  | helm-ag-projectile-root                 |
| pd  | projectile-dired                        |
| fj  | dired-other-window                      |
| fe  | open-init-file                          |
| fr  | ivy-recentf                             |
| fc  | copy-file                               |
| fs  | save-buffer                             |
| fR  | rename-this-file-and-buffer             |
| r   | counsel-recentf                         |
| j   | avy-goto-char                           |
| oa  | org-agenda                              |
| oc  | org-capture                             |
| bb  | switch-to-buffer                        |
| bk  | kill-other-buffers                      |
| bi  | ibuffer                                 |
| s   | save-buffer                             |
| 0   | select-window-0                         |
| 1   | select-window-1                         |
| 2   | select-window-2                         |
| 3   | select-window-3                         |
| w/  | split-window-right                      |
| w-  | split-window-below                      |
| :   | counsel-M-X                             |
| wM  | delete-other-window                     |
| wd  | delete-window                           |
| SPC | counsel-M-X                             |
| C-o | evil-jump-backward in evil normal state |
| TAB | evil-jump-forward in evil normal state  |
| ,/  | comment evil nerd commenter             |

## Updates

Update the config with `git pull`. You'll probably also want/need to update
the third-party packages regularly too:

<kbd>M-x package-list-packages</kbd>, then <kbd>U</kbd> followed by <kbd>x</kbd>.

You should usually restart Emacs after pulling changes or updating
packages so that they can take effect. Emacs should usually restore
your working buffers when you restart due to this configuration's use
of the `desktop` and `session` packages.

## Changing themes and adding your own customization

To add your own customization, use <kbd>M-x customize</kbd>, <kbd>M-x
customize-themes</kbd> etc. and/or create a file
`~/.emacs.d/lisp/init-local.el` which looks like this:

```el
... your code here ...

(provide 'init-local)
```

If you need initialisation code which executes earlier in the startup process,
you can also create an `~/.emacs.d/lisp/init-preload-local.el` file.

If you plan to customize things more extensively, you should probably
just fork the repo and hack away at the config to make it your own!
Remember to regularly merge in changes from this repo, so that your
config remains compatible with the latest package and Emacs versions.

*Please note that I cannot provide support for customised versions of
this configuration.*

## Similar configs

You might also want to check out `emacs-starter-kit` and `prelude`.

## Support / issues

If you hit any problems, please first ensure that you are using the latest version
of this code, and that you have updated your packages to the most recent available
versions (see "Updates" above). If you still experience problems, go ahead and
[file an issue on the github project](https://github.com/purcell/emacs.d).

-Steve Purcell

<hr>

[Support this project and my other Open Source work](https://www.patreon.com/sanityinc)

[![](http://www.linkedin.com/img/webpromo/btn_liprofile_blue_80x15.png)](http://uk.linkedin.com/in/stevepurcell)

[sanityinc.com](http://www.sanityinc.com/)

[@sanityinc](https://twitter.com/sanityinc)
