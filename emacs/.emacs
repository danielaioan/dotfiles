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
(require 'inf-ruby)
(require 'robe)
(require 'company-robe)
(require 'ac-robe)
(require 'rspec-mode)
(require 'ruby-tools)
