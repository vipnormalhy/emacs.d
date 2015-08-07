;; load auto complete settings

(require-package 'auto-complete)
(require 'auto-complete)
;; (require 'pop-tip)
(require 'auto-complete-config)
(global-auto-complete-mode t)

(setq-default ac-expand-on-auto-complete nil)
(setq-default ac-auto-start nil)
(setq-default ac-dwim nil) ; To get pop-ups with docs even if a word is uniquely completed

(define-key ac-mode-map [(\M p)] 'auto-complete)

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

;; open clang auto complete while use c-mode and c++mode
(defun my-clang-complete-setup ()
  ;; TODO
  ;; ac-clang-flags is define by local evironment
  ;; I don't know how to auto create them now
  ;; Now, the string generated by echo "" | g++ -v -x c++ -E -
  (require-package 'auto-complete-clang)
  (require 'auto-complete-clang)
  (setq ac-clang-flags (list
  			"-I/usr/local/lib/gcc48/include/c++/"
  			"-I/usr/local/lib/gcc48/include/c++//x86_64-portbld-freebsd10.1"
  			"-I/usr/local/lib/gcc48/include/c++//backward"
  			"-I/usr/local/lib/gcc48/gcc/x86_64-portbld-freebsd10.1/4.8.3/include"
  			"-I/usr/local/include"
  			"-I/usr/local/lib/gcc48/gcc/x86_64-portbld-freebsd10.1/4.8.3/include-fixed"
  			"-I/usr/include"
			"-I/include"
			"-I../inc"
			"-Iinc"
			"-I."
			"-Iinclude"
			"-I../include"
			"-I../../include"
			"-I/usr/local/lib/gcc48/include/c++//x86_64-portbld-freebsd9.1"
			"-I/usr/local/lib/gcc48/gcc/x86_64-portbld-freebsd9.1/4.8.4/include-fixed"
			"-I/usr/local/lib/gcc48/gcc/x86_64-portbld-freebsd9.1/4.8.4/include"
			"-I../../inc"))
  (setq ac-sources (append '(ac-source-clang) ac-sources)))

(add-hook 'c-mode-hook 'my-clang-complete-setup)
(add-hook 'c++mode-hook 'my-clang-complete-setup)
(add-hook 'pike-mode-hook 'my-clang-complete-setup)
(add-hook 'lpc-mode-hook 'my-clang-complete-setup)

;; add auto comple paren settings
;; (setq skeleton-pair t)
;; (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
;; (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
;; (local-set-key (kbd "`") 'skeleton-pair-insert-maybe)
;; (local-set-key (kbd "[") 'skeleton-pair-insert-maybe)
;; (local-set-key (kbd "\"") 'skeleton-pair-insert-maybe)

(provide 'init-auto-complete)
