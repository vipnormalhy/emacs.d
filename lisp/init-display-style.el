;; linenumber and colume number
(column-number-mode t)
(line-number-mode t)

;; c-set-style bsd
;; I don't know what it does when the file is not c or c++ files
;;(c-set-style "bsd")

;; show paren mode
(show-paren-mode t)

;; display time
(display-time-mode t)
(setq display-time-24hr-format t)

;; I do not need auto save mode
(auto-save-mode nil)
(setq auto-save-default nil)
;; Do not need back file too
(setq-default make-backup-files nil)

;; keep in line tail when move cursor
;;(setq track-eol t)

;; display the function name where the cursor is in minibuffer
(which-function-mode t)

;; encoding and language
(set-language-environment 'utf-8) ;; language environment
(set-buffer-file-coding-system 'utf-8) ;; open file encoding
(set-terminal-coding-system 'utf-8) ;; terminal encoding
(set-keyboard-coding-system 'utf-8) ;; keyboard input encoding
(set-clipboard-coding-system 'utf-8) ;; clipboard encoding
(set-file-name-coding-system 'utf-8) ;; file read or write encoding
(set-selection-coding-system 'utf-8)
(setq-default pathname-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8) ;; new file encoding
(set-default-coding-systems 'utf-8)

;; add auto mode list by filename
;; (setq auto-mode-alist
;;       (append
;;        '(("\\.py\\'" . python-mode))
;;        ))

;; tool bar mode(not use securecrt and other terminal)
(tool-bar-mode nil)
(menu-bar-mode nil)
(scroll-bar-mode nil)

(provide 'init-display-style)
