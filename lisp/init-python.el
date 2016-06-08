(require-package 'smart-tab)
(require-package 'python-mode)
(require-package 'highlight-indentation)
(require-package 'flycheck)
(require-package 'jedi)

(require 'python-mode)
(require 'jedi)

(setq auto-mode-alist
      (append
       '(("\\.py\\'" . python-mode))
       ))

(add-hook 'Py-mode-hook 'my_python_setup)
(add-hook 'python-mode-hook 'my_python_setup)
(add-hook 'Py-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t) ; optional
;;(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defun my_python_setup()
  (interactive)
  ;;(setq-default indent-tabs-mode t)
  ;; Needn't set indent-tabs-mode but py-indent-tabs-mode
  ;; see python-mode.el
  ;;(setq indent-tabs-mode t)
  ;;(setq py-indent-tabs-mode t)
  ;;(message "enable indent-tabs-mode")
  (setq python-indent-offset 4)
  (setq tab-width 4)
  (require 'highlight-indentation)
  ;;(highlight-indentation-mode t)
  (require 'smart-tab)
  (global-smart-tab-mode t)
  (require 'flycheck)
  (flycheck-mode t))

(provide 'init-python)
