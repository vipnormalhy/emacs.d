
;; hide line and region package
;; if you want to useit
;; use M-x key
(require-package 'hide-region)
(require-package 'hide-lines)

(defun my-hide-region-hook ()
  (hs-minor-mode t))

(add-hook 'c++-mode-hook 'my-hide-region-hook)
(add-hook 'c-mode-hook 'my-hide-region-hook)
(add-hook 'python-mode-hook 'my-hide-region-hook)

(global-set-key (kbd "C-c h h") 'hs-hide-block)
(global-set-key (kbd "C-c h s") 'hs-show-block)

(provide 'init-hide-region)
