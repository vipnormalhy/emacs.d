;; Do not change work directory where use find file

(add-hook 'find-file-hook
	  (lambda ()
	    (setq default-directory command-line-default-directory)))

(provide 'init-open-dir)
