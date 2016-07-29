(require-package 'xcscope)

;; use it while open c-mode or c++ mode
(defun my-cscope-hook ()
  (require 'xcscope)
  (setq cscope-do-not-update-database t)
  (cscope-setup)
  (cscope-minor-mode t))
;;  (setq cscope-do-not-update-database t))

(add-hook 'c-mode-common-hook 'my-cscope-hook)
(add-hook 'c++-mode-common-hook 'my-cscope-hook)
(add-hook 'Py-mode-hook 'my-cscope-hook)
(add-hook 'python-mode-hook 'my-cscope-hook)

(provide 'init-cscope)

