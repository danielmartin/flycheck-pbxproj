# flycheck-pbxproj

Adds syntax checking capabilities to flycheck for Xcode projects
(.pbxproj) using Kin (https://github.com/Karumi/Kin).

This is a work in progress that would probably require some
performance improvements in Kin for "on the fly" syntax checks.

## Install

### MELPA

Not Available Yet

### Manual

* Download flycheck-pbxproj from https://github.com/danielmartin/flycheck-pbxproj
* Put the repo in some directory like `~/.emacs.d/vendor/`
* Add this code into your Emacs configuration:

```
(require 'flycheck-pbxproj)
(add-hook 'pbxproj-mode-hook 'flycheck-mode)
```
