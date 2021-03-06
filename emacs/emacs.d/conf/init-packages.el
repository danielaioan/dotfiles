;;; init=packages.el --- List and management of my packages

;; That file contains my-packages list and a dolist function that install each package
;; This idea of managing packages was stolen from: https://github.com/rranelli/emacs-dotfiles
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa-milkbox" . "http://melpa.milkbox.net/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)


(defvar my-packages
  '(
    ac-inf-ruby
    ac-html
    ac-php
    ace-jump-mode
    ace-window
    async
    auto-complete
    ;;    auto-package-update
    avy
    bundler
    ;;    company
    ;;    company-inf-ruby
    ;;    company-emoji
    ;;    column-marker
    crux
    dash
    dash-functional
    ;;    dash-at-point
    ;;    discover-my-major
    ;; easy-kill
    elfeed
    elfeed-goodies
    elfeed-org
    elfeed-web
    eshell
    ;;    expand-region
    f
    fill-column-indicator
    ;;    floobits
    flycheck
    ;;    flymake-ruby
    ;;    git-gutter
    ;;    git-timemachine
    gnus-desktop-notify
    guide-key
    helm
    ;;    helm-ag
    helm-bundle-show
    helm-flycheck
    helm-robe
    helm-projectile
    highlight-indentation
    indent-guide
    inf-ruby
    ;;    ido-vertical-mode
    magit
    neotree
    ;;    on-screen
    php-mode
    popup
    projectile
    projectile-rails
    rake
    rbenv
    ;;    restclient
    robe
    rspec-mode
    ruby-end
    ruby-test-mode
    ruby-tools
    rubocop
    rvm
    s
    smartparens
    sml-mode
    undo-tree
    ;;    wakatime-mode
    web-beautify
    web-mode
    ws-butler
    yaml-mode
    yasnippet
    elixir-yasnippets
    toggle-quotes

    ;; Themes
    monokai-theme
    gruvbox-theme
)
  "A list of packages to be installed at application lauch.")

(setq packaged-contents-refreshed-p nil)
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (condition-case ex
  (package-install p)
  ('error (if packaged-contents-refreshed-p
      (error ex)
    (package-refresh-contents)
    (setq packaged-contents-refreshed-p t)
    (package-install p))))))

(provide 'init-packages)
;;; init-packages ends here
