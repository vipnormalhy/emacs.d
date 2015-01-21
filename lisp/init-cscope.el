(require-package 'xcscope)

;; use it while open c-mode or c++ mode
;; (add-hook 'c-mode-common-hook
;; 	  '(lamda ()
;; 		  (require 'xcscope)))

;; (add-hook 'c++-mode-common-hook
;; 	  '(lamda ()
;; 		  (require 'xcscope)))
(defun my-cscope-hook ()
  (require 'xcscope)
  (cscope-setup))

(add-hook 'c-mode-common-hook 'my-cscope-hook)
(add-hook 'c++-mode-common-hook 'my-cscope-hook)

(provide 'init-cscope)

