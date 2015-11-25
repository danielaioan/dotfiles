;; -*- mode: lisp -*-

;;Starts on fullscreen mode
(run-with-idle-timer 0.1 nil 'toggle-frame-fullscreen)

(add-to-list 'load-path (expand-file-name "conf" user-emacs-directory))

(require 'init-constants)
(require 'init-ui)
(require 'init-path)
(require 'init-general)
(require 'init-packages)
(require 'init-helm)
(require 'init-magit)
(require 'init-projectile)
(require 'init-rbenv)
(require 'init-web-mode)
(require 'init-yaml)
(require 'init-indent-guide)
(require 'init-ruby)
(require 'ruby-tools)
(require 'rspec-mode)
;;(require 'init-guide-key)

(add-to-list 'load-path (expand-file-name "conf/emacs-rails-reloaded" user-emacs-directory))
  (require 'rails-autoload)
  ;;M x + rails/bytecompile


(add-to-list 'load-path (expand-file-name "conf/robe" user-emacs-directory))
  (require 'robe)
  (add-hook 'ruby-mode-hook 'robe-mode)
  (eval-after-load 'company
    '(push 'company-robe company-backends))
  (add-hook 'robe-mode-hook 'ac-robe-setup)

(add-to-list 'load-path "~/.emacs.d/conf/emacs-pry")
(require 'pry)


(defun custom/vcr-toggle ()
 (interactive)
 (if (getenv "VCR_OFF")
 (progn
 (setenv "VCR_OFF" nil)
 (message "VCR is ON"))
 (setenv "VCR_OFF" "true")
 (message "VCR is OFF")))
(global-set-key (kbd "M-0") 'custom/vcr-toggle)


(defun custom/remote-factory-toggle ()
 (interactive)
 (if (getenv "ENABLE_REMOTE_FACTORY_GIRL")
 (progn
 (setenv "ENABLE_REMOTE_FACTORY_GIRL" nil)
 (message "ENABLE_REMOTE_FACTORY_GIRL is ON"))
 (setenv "ENABLE_REMOTE_FACTORY_GIRL" "true")
 (message "ENABLE_REMOTE_FACTORY_GIRL is OFF")))
(global-set-key (kbd "M-9") 'custom/remote-factory-toggle)

