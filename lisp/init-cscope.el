(require-package 'xcscope)

;; use it while open c-mode or c++ mode
(add-hook 'c-mode-common-hook
	  '(lamda ()
		  (require 'xcscope)))

(add-hook 'c++-mode-common-hook
	  '(lamda ()
		  (require 'xcscope)))

(provide 'init-cscope)

