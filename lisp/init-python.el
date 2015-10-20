(defun my-init-python-hook()
	(require-package 'hl-indent)
	(setq hl-indent-mode t)
	(require-package 'flymake-python-pyflakes)
	(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
	(require-package 'elpy)
	(require-package 'jedi)
	(require-package 'pycomplete)
	(setq indent-tabs-mode t))

(add-hook 'python-mode-hook 'my-init-python-hook)

(provide 'init-python)
