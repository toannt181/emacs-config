(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(use-package web-mode
  :ensure t
  :init
  (use-package company-tern :ensure t)
  (use-package company-web :ensure t)
  (use-package eslintd-fix :ensure t)
  (use-package xref-js2 :ensure t)
  (use-package emmet-mode :ensure t
    :config (setq emmet-expand-jsx-className? t
                  emmet-self-closing-tag-style " /"
                  emmet-move-cursor-between-quotes t))
  :config
  (with-eval-after-load 'flycheck
    (dolist (checker '(javascript-eslint))
      (flycheck-add-mode checker 'web-mode)))

  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers
                        '(javascript-jshint json-jsonlist)))

  (add-hook 'flycheck-mode-hook #'use-eslint-from-node-modules)

  ;; Auto-complete for webmode
  (defun company-web-mode-hook ()
    (set (make-local-variable 'company-backends)
         '(company-capf company-dabbrev company-tern company-css company-web company-files)))

  (add-hook 'web-mode-hook (lambda ()
                             ;(tern-mode)
                             (company-mode)
                             (emmet-mode)
                             (eslintd-fix-mode t)
                             (company-web-mode-hook)
                             (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))

  (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html.eex\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.s?css\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))

  (setq web-mode-markup-indent-offset 2
        web-mode-code-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-enable-auto-pairing t
        web-mode-enable-css-colorization t
        web-mode-enable-current-element-highlight t))

;; Make use of local Eslint over global
(defun use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))

(provide 'webmode-init)
;;; webmode-init.el ends here