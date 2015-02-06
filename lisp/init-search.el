(require-package 'highlight-symbol)

;; bind hot-keys
;; (global-set-key (kbd "C-") 'highlight-symbol-next) ;;search the word where the cursor at
;; (global-set-key (kbd "C-#") 'highlight-symbol-prev) ;;search the word prev where the cursor at

(defface highlight-symbol-face
	 '((((class color) (background dark))
	    (:background "#5ff"))
	   (((class color) (background light))
	    (:background "#5ff")))
	 "Face used by `highlight-symbol-mode'."
	 :group 'highlight-symbol)

;; combine search keys
(global-set-key (kbd "M-s *") 'highlight-symbol-next)
(global-set-key (kbd "M-s #") 'highlight-symbol-prev)
(global-set-key (kbd "M-s h *") 'highlight-symbol-next-in-defun)
(global-set-key (kbd "M-s h #") 'highlight-symbol-prev-in-defun)

(require 'highlight-symbol)

(highlight-symbol-mode t)

(provide 'init-search)
