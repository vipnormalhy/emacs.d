(require-package 'color-theme)

(color-theme-initialize)
(color-theme-midnight)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (warm-night)))
 '(custom-safe-themes
   (quote
    ("6209442746f8ec6c24c4e4e8a8646b6324594308568f8582907d0f8f0260c3ae" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require-package 'warm-night-theme)
(load-theme 'warm-night)

(provide 'init-color-theme)
