; Making arrow keys work again
(prelude-restore-arrow-keys)

; Default to menu-bar visible (F12 to hide again)
(menu-bar-mode 1)

; A more generous line-width
(setq whitespace-line-column 120)

; Change the whitespace display mode
(setq whitespace-style (quote (tabs trailing lines empty indentation::space)))

;; make whitespace-mode use “¶” for newline and “▷” for tab.
;; together with the rest of its defaults
(setq whitespace-display-mappings
 '(
   (space-mark 32 [183] [46]) ; normal space, ·
   (space-mark 160 [164] [95])
   (space-mark 2208 [2212] [95])
   (space-mark 2336 [2340] [95])
   (space-mark 3616 [3620] [95])
   (space-mark 3872 [3876] [95])
   (newline-mark 10 [182 10]) ; newline, ¶
   (tab-mark 9 [9655 9] [92 9]) ; tab, ▷
))

; Don't break lines automatically
(add-hook 'text-mode-hook 'turn-on-auto-fill)

; Always truncate
(setq-default truncate-lines t)

; Only correct spelling in comments for programming modes that we care about
(mapcar (lambda (mode-hook) (add-hook mode-hook 'flyspell-prog-mode))
        '(python-mode-hook emacs-lisp-mode-hook ruby-mode-hook java-mode-hook))

;; Don't highlight the current line (looks naff)
(global-hl-line-mode 0)

;; Start the speedbar automatically when we're in X
(when window-system
  (speedbar t))

;; Always show all files in Speedbar
(custom-set-variables
 '(speedbar-show-unknown-files t)
 )

;; Switch speedbar back on if closed with 'q'
(global-set-key (kbd "<f11>") 'speedbar)

;; Finally change the default theme
(load-theme 'tango-dark t)
