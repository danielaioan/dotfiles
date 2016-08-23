;;Starts on fullscreen mode
(run-with-idle-timer 0.0 nil 'toggle-frame-fullscreen)

;; custom theme options
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; load theme
(load-theme 'gruvbox t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :family "Monaco"))))
)

;; Customize gruvbx theme
(custom-theme-set-faces
 'gruvbox
 '(default ((t (:background "#111111"))))
 '(linum ((t (:background "#111111" :foreground "#fdf1a2"))))
 )

(setq
 ;; better startup
 inhibit-splash-screen t
 inhibit-startup-message t
 ;; show column number at bottom bar
 column-number-mode t
 ;; disable anoying beep
 ring-bell-function 'ignore
 ;; improve rendering performance
 redisplay-dont-pause t
 )

;; Hide Emacs bars forever
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)


;; line numbers
(add-hook 'prog-mode-hook 'linum-mode)
(setq linum-format "%4d ")

;; Highlight current line
(global-hl-line-mode 1)

;; Undo and Redo windows
(winner-mode 1)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-ui)
