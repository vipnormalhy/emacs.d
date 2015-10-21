(require-package 'smart-tab)
(require-package 'python-mode)
(require-package 'highlight-indentation)

(require 'python-mode)

(setq auto-mode-alist
       (append
	        '(("\\.py\\'" . python-mode))
		        ))  

(add-hook 'Py-mode-hook 'my_python_setup)
(add-hook 'python-mode-hook 'my_python_setup)
;;(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defun my_python_setup()
  (setq-default indent-tabs-mode t)
  (setq indent-tabs-mode t)
  (setq python-indent-offset 4)
  (setq tab-width 4)
  (require 'highlight-indentation)
  (highlight-indentation-mode t)
  (require 'smart-tab)
  (global-smart-tab-mode t)) 

(provide 'init-python)
