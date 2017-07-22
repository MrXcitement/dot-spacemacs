;;; packages.el --- vbnet-mode layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Mike Barker <mike@gopher.thebarkers.lan>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `vbnet-mode-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `vbnet-mode/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `vbnet-mode/pre-init-PACKAGE' and/or
;;   `vbnet-mode/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst vbnet-mode-packages
  '((vbnet-mode :location (recipe
                           :fetcher github
                           :repo "mrxcitement/vbnet-mode"))
    ))

(defun vbnet-mode/init-vbnet-mode ()
  (use-package vbnet-mode
    :defer t
    :mode "\\.\\(frm\\|bas\\|cls\\|vb\\)$"
    :init
    ;; This block executes before the package has been loaded
    :config
    ;; This block executes after the package has been loaded
    ;; Clear the default settings for these faces, by default in
    ;; Xamarin/MonoDevelop/Visual Code they are not syntax highlighted.
    (set-face-attribute 'vbnet-namespace-face nil
                        :foreground nil
                        :background nil)
    (set-face-attribute 'vbnet-funcall-face nil
                        :foreground nil
                        :background nil)
    ))

;;; packages.el ends here
