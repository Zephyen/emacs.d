(global-linum-mode t)

(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))


(delete-selection-mode 1)

(require 'hungry-delete)
(global-hungry-delete-mode)



(global-hl-line-mode 1)
(require 'web-mode)


(setq make-backup-files nil)
(global-auto-revert-mode 1)

(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

(defun kill-other-buffers ()
  "Kill all other buffers."
  (interactive)
  (mapc 'kill-buffer
        (delq (current-buffer)
              (remove-if-not 'buffer-file-name (buffer-list)))))

(provide 'init-local)
