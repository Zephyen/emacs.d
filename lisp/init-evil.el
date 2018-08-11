;;Note: You should enable global-evil-leader-mode before you enable evil-mode,
;;otherwise evil-leader won’t be enabled in initial buffers (*scratch*, *Messages*, …).
(require-package 'evil-escape)
(evil-escape-mode 1)
(setq-default evil-escape-key-sequence "jk")

(require-package 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader "SPC")
(evil-leader/set-key
  "ff" 'find-file
  "pf" 'projectile-find-file
  "pp" 'projectile-switch-project
  "pr" 'projectile-replace
  "ps" 'helm-ag-project-root
  "pe" 'projectile-recentf
  "pd" 'projectile-dired
  "fj" 'dired-other-window
  "fe" 'open-init-file
  "fr" 'ivy-recentf
  "fc" 'copy-file
  "fs" 'save-buffer
  "fR" 'rename-this-file-and-buffer
  "r"  'counsel-recentf
  "j"  'avy-goto-char
  "oa" 'org-agenda
  "oc" 'org-capture
  "bb" 'switch-to-buffer
  "bk" 'kill-other-buffers
  "bi" 'ibuffer
  "s"  'save-buffer
  "0"  'select-window-0
  "1"  'selEct-window-1
  "2"  'select-window-2
  "3"  'select-window-3
  "w/" 'split-window-right
  "w-" 'split-window-below
  ":"  'counsel-M-x
  "wM" 'delete-other-windows
  "wd" 'delete-window
  "SPC" 'counsel-M-X
  )

(define-key evil-normal-state-map (kbd ",.") 'other-window)
(define-key evil-visual-state-map (kbd ",.") 'other-window)

(require-package 'evil)
(evil-mode 1)

;;下面的代码可以将 insert state map 中的快捷键清空，使其可以回退（Fallback）到 Emacs State 中，
;;这样我们之前的 Emacs State 里面定义的 C-w 等快捷键就不会被 evil insert minor mode state 所覆盖，
(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)

(require-package 'evil-surround)
(global-evil-surround-mode 1)

;; evil-nerd-commenter
(require-package 'evil-nerd-commenter)
(evilnc-default-hotkeys)
(define-key evil-normal-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)
(define-key evil-visual-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)

(provide 'init-evil)
;;; init-evil.el
