(setq
 ;; default directory
 default-directory (concat (getenv "HOME") "/Workspace/projects")
 ;; disable backup files
 make-backup-files nil
 auto-save-default nil

 backup-inhibited t
 ;; If a frame alredy opened, use it!
 display-buffer-reuse-frames t
)

;; make indentation commands use space only
(setq-default indent-tabs-mode nil)

;; dired configurations
(put 'dired-find-file-other-buffer 'disabled t)

;; whitespace display
(global-whitespace-mode)
(setq whitespace-global-modes
      '(not magit-mode git-commit-mode))
(setq whitespace-style '(face trailing tabs))
(global-set-key (kbd "C-RET") 'whitespace-cleanup) ; 【Ctrl+Enter】
(global-set-key (kbd "C-<return>") 'whitespace-cleanup) ; 【Ctrl+Enter】
(global-set-key (kbd "M-RET") 'whitespace-cleanup-region) ; 【Meta+Enter】


(defalias 'redo 'undo-tree-redo)
(global-set-key (kbd "C-z") 'undo) ; 【Ctrl+z】
(global-set-key (kbd "C-y") 'redo) ; 【Ctrl+y】; Microsoft Windows style

(defun quick-copy-line ()
  "Copy the whole line that point is on and move to the beginning of the next line.
Consecutive calls to this command append each line to the
kill-ring."
  (interactive)
  (let ((beg (line-beginning-position 1))
        (end (line-beginning-position 2)))
    (if (eq last-command 'quick-copy-line)
        (kill-append (buffer-substring beg end) (< end beg))
      (kill-new (buffer-substring beg end))))
  (beginning-of-line 2)
)

(defun quick-cut-line ()
  "Cut the whole line that point is on.  Consecutive calls to this command append each line to the kill-ring."
  (interactive)
  (let ((beg (line-beginning-position 1))
    (end (line-beginning-position 2)))
    (if (eq last-command 'quick-cut-line)
    (kill-append (buffer-substring beg end) (< end beg))
      (kill-new (buffer-substring beg end)))
    (delete-region beg end))
  (beginning-of-line 1)
  (setq this-command 'quick-cut-line))

(global-set-key (kbd "C-c d d") 'quick-cut-line) ;【Ctrl+d】

;; avy
(global-set-key (kbd "C-x a f") 'avy-goto-line)
(global-set-key (kbd "C-x a w") 'avy-goto-word-1)
(global-set-key (kbd "C-x a e") 'avy-goto-word-0)
(global-set-key (kbd "C-x a c") 'avy-goto-char-2)

(provide 'init-general)
