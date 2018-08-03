;;(require-package 'tagedit)
;;(after-load 'sgml-mode
;;  (tagedit-add-paredit-like-keybindings)
;;  (define-key tagedit-mode-map (kbd "M-?") nil)
;;  (add-hook 'sgml-mode-hook (lambda () (tagedit-mode 1))))

;;(add-auto-mode 'html-mode "\\.\\(jsp\\|tmpl\\)\\'")


(require-package 'web-mode)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(require-package 'emmet-mode)
(emmet-mode 1)

(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

;; Note: ERB is configured in init-ruby

(provide 'init-html)
