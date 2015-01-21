;; config for cedet

(require 'cedet)

(setq semantic-default-submodes '(global-semantic-idle-scheduler-mode
				   global-semanticdb-minor-mode
				   global-semantic-idle-summary-mode
				   ;;global-semantic-idle-completions-mode
				   ;;global-semantic-highlight-func-mode
				   ;;global-semantic-decoration-mode
				   ;;global-semantic-stickyfunc-mode
				   ;;semantic-highlight-edits-mode
				   global-semantic-mru-bookmark-mode))

(semantic-mode t)

(global-ede-mode t)

(require-package 'ecb)
(require 'ecb)

(provide 'init-cedet)
