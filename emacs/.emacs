;; -*- mode: lisp -*-

(add-to-list 'load-path (expand-file-name "~/.emacs.d/conf" user-emacs-directory))

(require 'init-constants)
(require 'init-ui)
(require 'init-path)
(require 'init-general)
(require 'init-packages)
(require 'init-async)
(require 'init-yasnippet)
(require 'init-helm)
(require 'init-magit)
(require 'init-projectile)
(require 'init-rbenv)
(require 'init-rvm)
(require 'init-web-mode)
(require 'init-php-mode)
(require 'init-yaml)
(require 'init-ruby)
(require 'init-inf-ruby)
(require 'init-robe)
(require 'init-helm-robe)
(require 'init-ruby-tools)
(require 'init-rspec-mode)
(require 'init-auto-complete)
;;(require 'init-ac-inf-ruby)
;;(require 'init-company)
;;(require 'init-company-inf-ruby)
(require 'init-ac-php)
(require 'init-neotree)
(require 'init-highlight-indentation)
;;(require 'init-indent-guide)
(require 'init-fill-column-indicator)
(require 'init-dash)
(require 'init-elixir-yasnippets)
;;(require 'init-smartparens)
(require 'init-undo-tree)
(require 'init-guide-key)
;;(require 'init-on-screen)
(require 'init-f)
(require 'init-flycheck)
(require 'init-helm-flycheck)
(require 'init-rubocop)
(require 'init-ruby-end)
;;(require 'init-ws-butler)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (vibrant-ink)))
 '(custom-safe-themes
   (quote
    ("a6d39b3e27d45aea4bf0c20a9f6ccbff858eae1728ac0cf72d6a86bd873202d2" default)))
 '(robe-completing-read-func (quote helm-robe-completing-read)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "black" :foreground "light gray" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :family "Monaco")))))
