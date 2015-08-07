;; config for cedet

(require 'cedet)

;; semantic settings
(setq semantic-default-submodes '(global-semantic-idle-scheduler-mode
				   global-semanticdb-minor-mode
				   global-semantic-idle-summary-mode
				   ;;global-semantic-idle-completions-mode
				   ;;global-semantic-highlight-func-mode
				   ;;global-semantic-decoration-mode
				   ;;global-semantic-stickyfunc-mode
				   ;;semantic-highlight-edits-mode
				   global-semantic-idle-local-symbol-highlight-mode
				   global-semantic-show-unmatched-syntax-mode
				   global-semantic-show-parser-state-mode
				   global-semantic-mru-bookmark-mode))

(semantic-mode t)

;; semantic completion
(require 'semantic/ia)
;; semantic system header files in gcc
(require 'semantic/bovine/gcc)
(defun my-semantic-include-func ()
	(semantic-add-system-include "./inc" 'c-mode)
	(semantic-add-system-include "./inc" 'c++-mode)
	(semantic-add-system-include "./inc" 'pike-mode)
	(semantic-add-system-include "./inc" 'lpc-mode)	
	(semantic-add-system-include "./include" 'c-mode)
	(semantic-add-system-include "./include" 'c++-mode)
	(semantic-add-system-include "./include" 'pike-mode)
	(semantic-add-system-include "./include" 'lpc-mode)	
	(semantic-add-system-include "./../include" 'c-mode)
	(semantic-add-system-include "./../include" 'c++-mode)
	(semantic-add-system-include "./../include" 'pike-mode)
	(semantic-add-system-include "./../include" 'lpc-mode)	
	(semantic-add-system-include "./../../include" 'c-mode)
	(semantic-add-system-include "./../../include" 'c++-mode)
	(semantic-add-system-include "./../../include" 'pike-mode)
	(semantic-add-system-include "./../../include" 'lpc-mode)	
	(semantic-add-system-include "./../inc" 'c++-mode)
	(semantic-add-system-include "./../inc" 'c-mode)
	(semantic-add-system-include "./../inc" 'pike-mode)
	(semantic-add-system-include "./../inc" 'lpc-mode)	
	(semantic-add-system-include "./" 'c-mode)
	(semantic-add-system-include "./" 'c++-mode)
	(semantic-add-system-include "./" 'pike-mode)
	(semantic-add-system-include "./" 'lpc-mode))
(add-hook 'semantic-init-hooks 'my-semantic-include-func)

;; semantic completion hot-keys
(local-set-key "\C-RET" 'semantic-ia-complete-symbol)
;;(local-set-key "\C-c?" 'semantic-ia-complete-symbol-menu) cannot found this function
(local-set-key "\C-c>" 'semantic-complete-analyze-inline)
(local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle)

;; mrub tag jump key
(global-set-key (kbd "C-o") 'semantic-mrub-switch-tags)
(global-set-key (kbd "M-]") 'semantic-ia-fast-jump)
(global-set-key (kbd "M-[ l") 'semantic-complete-jump-local)
(global-set-key (kbd "M-[ g") 'semantic-complete-jump)
;;(global-set-key (kbd "C-x o") 'open-line)

;; add sematic autocomplete to auto-complete menu
(add-to-list 'ac-sources 'ac-source-semantic)

;; ede settings
(global-ede-mode t)
;; copyed the test project
;; (ede-cpp-root-project "Test"
;; :name "Test Project"
;; :file "~/work/project/CMakeLists.txt"
;; :include-path '("/"
;; "/Common"
;; "/Interfaces"
;; "/Libs"
;; )
;; :system-include-path '("~/exp/include")
;; :spp-table '(("isUnix" . "")
;; ("BOOST_TEST_DYN_LINK" . "")))

;; ecb settings
(require-package 'ecb)
(require 'ecb)
;(setq ecb-auto-activate t)

;(global-set-key [M-left] 'windmove-left)
;(global-set-key [M-right] 'windmove-right)
;(global-set-key [M-up] 'windmove-up)
;(global-set-key [M-down] 'windmove-down)

(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

(provide 'init-cedet)
