;; LPC mode
;; Learn from <http://cc-mode.sourceforge.net/derived-mode-ex.el>
;; Create date : 2015-08-07 11:32:40
;; create by   : normalhy

(require 'cc-mode)

;; when compile
(eval-when-compile
  (require 'cc-langs)
  (require 'cc-fonts))

;; add lpc-mode to c-mode
(eval-and-compile
  (c-add-language 'lpc-mode 'c-mode))

;; Handle key words in lpc what is different from c
(c-lang-defconst c-primitive-type-kwds
  lpc
  (append
   '("mapping"
     "mixed"
     "array"
     "object"
     "string"
     "buffer")
   (delete "const"
	   (append
	    ;; Due to the fallback to c, we need not give
	    ;; a language to `c-lang-const'.???
	    (c-lang-const c-primitive-type-kwds)
	    nil))))

;; (c-lang-defconst c-modifier-kwds
;;   "Type modifier keywords.  These can occur almost anywhere in types
;; but they don't build a type of themselves.  Unlike the keywords on
;; `c-primitive-type-kwds', they are fontified with the keyword face and
;; not the type face."
;;   lpc
;;   (append
;;    '("__FILE__"
;;      "__LINE__")
;;    (c-lang-const c-modifier-kwds)
;;    nil))

;; some macros
;; (c-lang-defconst c-cpp-matchers
;; 		 lpc (cons
;; 		     ;; Use the eval form for `font-lock-keywords' to be able to use
;; 		     ;; the `c-preprocessor-face-name' variable that maps to a
;; 		     ;; suitable face depending on the (X)Emacs version.
;; 		     '(eval . (list "^\\s *\\(#pragma\\)\\>\\(.*\\)"
;; 				    (list 1 c-preprocessor-face-name)
;; 				    '(2 font-lock-string-face)))
;; 		     ;; There are some other things in `c-cpp-matchers' besides the
;; 		     ;; preprocessor support, so include it.
;; 		     (c-lang-const c-cpp-matchers)))

(defcustom lpc-font-lock-extra-types
  '("__FILE__")
  (c-make-font-lock-extra-types-blurb "LPC" "lpc-mode"
  "*List of extra types (aside from the type keywords) to recognize in LPC mode.
Each list item should be a regexp matching a single identifier.")
  :type 'c-extra-types-widget
  :group 'c)

(defconst lpc-font-lock-keywords-1 (c-lang-const c-matchers-1 lpc)
  "Minimal highlighting for LPC mode.")

(defconst lpc-font-lock-keywords-2 (c-lang-const c-matchers-2 lpc)
  "Fast normal highlighting for LPC mode.")

(defconst lpc-font-lock-keywords-3 (c-lang-const c-matchers-3 lpc)
  "Accurate normal highlighting for LPC mode.")

(defvar lpc-font-lock-keywords lpc-font-lock-keywords-3
  "Default expressions to highlight in LPC mode.")

(defvar lpc-mode-syntax-table nil
  "Syntax table used in lpc-mode buffers.")
(or lpc-mode-syntax-table
    (setq lpc-mode-syntax-table
	  (funcall (c-lang-const c-make-mode-syntax-table lpc))))

(defvar lpc-mode-abbrev-table nil
  "Abbreviation table used in lpc-mode buffers.")
(c-define-abbrev-table 'lpc-mode-abbrev-table
		       ;; Keywords that if they occur first on a line might alter the
		       ;; syntactic context, and which therefore should trig reindentation
		       ;; when they are completed.
		       '(("else" "else" c-electric-continued-statement 0)
			 ("while" "while" c-electric-continued-statement 0)
			 ("catch" "catch" c-electric-continued-statement 0)
			 ("finally" "finally" c-electric-continued-statement 0)))

(defvar lpc-mode-map (let ((map (c-make-inherited-keymap)))
		      ;; Add bindings which are only useful for LPC
		      map)
  "Keymap used in lpc-mode buffers.")

(easy-menu-define lpc-menu lpc-mode-map "LPC Mode Commands"
  ;; Can use `lpc' as the language for `c-mode-menu'
  ;; since its definition covers any language.  In
  ;; this case the language is used to adapt to the
  ;; nonexistence of a cpp pass and thus removing some
  ;; irrelevant menu alternatives.
  (cons "LPC" (c-lang-const c-mode-menu lpc)))

;;;###autoload
(defun lpc-mode ()
    "Major mode for editing LPC (pronounced \"big nose\") code.
This is a simple example of a separate mode derived from CC Mode to
support a language with syntax similar to C/C++/ObjC/Java/IDL/Pike.

The hook `c-mode-common-hook' is run with no args at mode
initialization, then `lpc-mode-hook'.

Key bindings:
\\{lpc-mode-map}"
    (interactive)
    (kill-all-local-variables)
    (c-initialize-cc-mode t)
    (set-syntax-table lpc-mode-syntax-table)
    (setq major-mode 'lpc-mode
	  mode-name "LPC"
	  local-abbrev-table lpc-mode-abbrev-table
	  abbrev-mode t)
    (use-local-map c-mode-map)
    ;; `c-init-language-vars' is a macro that is expanded at compile
    ;; time to a large `setq' with all the language variables and their
    ;; customized values for our language.
    (c-init-language-vars lpc-mode)
    ;; `c-common-init' initializes most of the components of a CC Mode
    ;; buffer, including setup of the mode menu, font-lock, etc.
    ;; There's also a lower level routine `c-basic-common-init' that
    ;; only makes the necessary initialization to get the syntactic
    ;; analysis and similar things working.
    (c-common-init 'lpc-mode)
    (easy-menu-add lpc-menu)
    (run-hooks 'c-mode-common-hook)
    (run-hooks 'lpc-mode-hook)
    (c-update-modeline))

(provide 'init-lpc-mode2)

