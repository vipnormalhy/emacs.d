;; load auto complete settings

(require-package 'auto-complete)
(require 'auto-complete)
;; (require 'pop-tip)
(require 'auto-complete-config)
(global-auto-complete-mode t)

(setq-default ac-expand-on-auto-complete nil)
(setq-default ac-auto-start t)
(setq-default ac-dwim nil) ; To get pop-ups with docs even if a word is uniquely completed

(define-key ac-mode-map [(control return)] 'auto-complete)

;; ;;----------------------------------------------------------------------------
;; ;; Use Emacs' built-in TAB completion hooks to trigger AC (Emacs >= 23.2)
;; ;;----------------------------------------------------------------------------
;; (setq tab-always-indent 'complete)  ;; use 't when auto-complete is disabled
;; (add-to-list 'completion-styles 'initials t)
;; ;; Stop completion-at-point from popping up completion buffers so eagerly
;; (setq completion-cycle-threshold 5)

;; ;; TODO: find solution for php, haskell and other modes where TAB always does something
;; ;;----------------------------------------------------------------------------

;; (setq c-tab-always-indent nil
;;       c-insert-tab-function 'indent-for-tab-command)

(set-default 'ac-sources
             '(ac-source-imenu
               ac-source-dictionary
               ac-source-words-in-buffer
               ac-source-words-in-same-mode-buffers
               ac-source-words-in-all-buffer))

(provide 'init-auto-complete)
