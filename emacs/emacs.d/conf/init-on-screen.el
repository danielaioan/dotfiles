(require 'on-screen)

(on-screen-global-mode +1)

(add-hook
  'w3m-mode-hook
  (defun my-w3m-setup-on-screen ()
    (setq-local on-screen-highlight-method 'shadow)))

(provide 'init-on-screen)
