;;; flycheck-pbxproj.el --- Syntax checking for Xcode projects using Kin. -*- lexical-binding:t -*-

;; Copyright (C) 2017 Daniel Martín <mardani29@yahoo.es>
;;
;; Author: Daniel Martín <mardani29@yahoo.es>
;; Created: 10 April 2017
;; Version: 0.1
;; Package-Requires: ((flycheck "0.25"))

;;; Commentary:

;; This package adds support for syntax checking Xcode projects using
;; Kin (https://github.com/Karumi/Kin).  To use it, add something like
;; the following to your init.el:

;; (require 'flycheck-pbxproj)
;; (add-hook 'pbxproj-mode-hook 'flycheck-mode)

;; Kin can be installed using your favorite Python package manager:
;; $ pip install kin
;; $ easy_install kin

;;; License:

;; This file is not part of GNU Emacs.
;; However, it is distributed under the same license.

;; GNU Emacs is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:
(require 'flycheck)

(flycheck-define-checker pbxproj
  "A checker for Xcode project files (.pbxproj), showing syntax
errors typically as a result of a bad merge conflict fix."
  :command ("kin" source)
  :error-patterns
  ((error line-start
          "ERROR: line " line ":" column (message)
          line-end))
  :modes pbxproj-mode)

(add-to-list 'flycheck-checkers 'pbxproj)

(provide 'flycheck-pbxproj)
;;; flycheck-pbxproj.el ends here
