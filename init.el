
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-benchmarking)

(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp)
(require 'init-elpa)
(require 'init-exec-path)

(require 'init-smex)

(require 'init-color-theme)

(require 'init-cedet)
;; auto complete environment
(require 'init-auto-complete)

;; hide region and lines
(require 'init-hide-region)

;; display style settings(include encoding)
(require 'init-display-style)

(require 'init-search)

(require 'init-cscope)

;;(require 'init-git)

(require 'init-open-dir)

(provide 'init)
