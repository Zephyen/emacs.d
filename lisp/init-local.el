(global-linum-mode t)

(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))


(delete-selection-mode 1)

(require-package 'hungry-delete)
(global-hungry-delete-mode)



(global-hl-line-mode 1)
(require 'web-mode)

;; 去除备份文件， 去除自动保存
(setq make-backup-files nil)
(setq auto-save-default nil)


(global-auto-revert-mode 1)

(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

(defun kill-other-buffers ()
  "Kill all other buffers."
  (interactive)
  (mapc 'kill-buffer
        (delq (current-buffer)
              (remove-if-not 'buffer-file-name (buffer-list)))))

(defun xah-dired-mode-setup ()
  "to be run as hook for 'dired-mode'."
  (dired-hide-details-mode 1))
(setq dired-dwim-target t)
(add-hook 'dired-mode-hook 'xah-dired-mode-setup)


(provide 'init-local)
