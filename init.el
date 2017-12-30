

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-benchmarking)

(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp)
(require 'init-elpa)
(require 'init-exec-path)

(require 'init-smex)

(require 'init-color-theme)

(require 'init-python)
(require 'init-auto-complete)
(require 'init-cedet)
;; auto complete environment

;; hide region and lines
(require 'init-hide-region)

;; display style settings(include encoding)
(require 'init-display-style)

(require 'init-search)

(require 'init-cscope)

(require 'init-git)

(require 'init-open-dir)

(require 'protobuf-mode)

(require 'init-helm)

(require 'init-json)

(require 'init-cmake)

(require 'init-gradle)

(require 'init-csharp)

(provide 'init)

(setq vc-handled-backends ())

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(ecb-windows-width 0.2)
 '(package-selected-packages
   (quote
    (csharp-mode gradle-mode cmake-mode json-mode helm magit xcscope highlight-symbol hide-lines hide-region ecb jedi flycheck highlight-indentation python-mode smart-tab smex fullframe exec-path-from-shell color-theme auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
