;; linenumber and colume number
(column-number-mode t)
(line-number-mode t)

;; c-set-style bsd
;; I don't know what it does when the file is not c or c++ files
;; (add-hook 'c-mode-common-hook
;; 	  '(lamda()
;; 		 (c-set-style "bsd")))

;; (add-hook 'c++-mode-common-hook
;; 	  '(lamda()
;; 		 (c-set-style "bsd")))
(defun my-c-style-hook ()
  (c-set-style "cc-mode"))

(add-hook 'c-mode-common-hook 'my-c-style-hook)
(add-hook 'c++-mode-common-hook 'my-cscope-hook)
(add-hook 'pike-mode-common-hook 'my-c-style-hook)
(add-hook 'lpc-mode-common-hook 'my-cscope-hook)

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
;;(set-language-environment 'utf-8) ;; language environment
;; (set-buffer-file-coding-system 'utf-8) ;; open file encoding
;;(set-terminal-coding-system 'utf-8) ;; terminal encoding
;; (set-keyboard-coding-system 'utf-8) ;; keyboard input encoding
;; (set-clipboard-coding-system 'utf-8) ;; clipboard encoding
;; (set-file-name-coding-system 'utf-8) ;; file read or write filename encoding
;; (set-selection-coding-system 'utf-8) ;; Coding system `utf-16-le-dos' is useful as the value of `selection-coding-system' in MS Windows, allowing you to paste multilingual text from the clipboard.
;; (setq default-pathname-coding-system 'utf-8)
;;(setq default-buffer-file-coding-system 'chinese-gbk) ;; new file encoding
;; (setq default-coding-systems 'utf-8)

;; bakcup commands
;; backup, next command coding system, should never used here
;; (set-universal-coding-system-argument)
;; backup, subprocess coding system
;; (set-buffer-process-coding-system)
;; backup, specifies a coding system to use when encoding and decoding system strings such as system error messages and format-time-string formats and time stamps
;; (set-locale-coding-system)

;; add auto mode list by filename
;; (setq auto-mode-alist
;;       (append
;;        '(("\\.py\\'" . python-mode))
;;        ))

;; tool bar mode(not use securecrt and other terminal)
(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (menu-bar-mode -1)
      (scroll-bar-mode -1)))

;; frame name
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
	    '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

(global-auto-revert-mode t)
(provide 'init-display-style)
