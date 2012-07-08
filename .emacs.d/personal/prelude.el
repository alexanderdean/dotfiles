; Prelude (http://batsov.com/prelude/)-specific configuration for Emacs

; Making arrow keys work again
(defun disable-guru-mode ()
  (guru-mode -1)
)

(add-hook 'prelude-prog-mode-hook 'disable-guru-mode t)

; Default to menu-bar visible (F12 to hide again)
(menu-bar-mode 1)
