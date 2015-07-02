
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-benchmarking)

(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp)
(require 'init-elpa)
(require 'init-exec-path)

(require 'init-smex)

(require 'init-color-theme)

(require 'init-auto-complete)
(require 'init-cedet)
;; auto complete environment

;; hide region and lines
(require 'init-hide-region)

;; display style settings(include encoding)
(require 'init-display-style)

(require 'init-search)

(require 'init-cscope)

;;(require 'init-git)

(require 'init-open-dir)

(provide 'init)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
