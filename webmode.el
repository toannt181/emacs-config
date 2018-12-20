(use-package web-mode
  :ensure t
  :init
  (use-package flycheck :ensure t)
  ;;(use-package company-web :ensure t)
  ;;(use-package eslintd-fix :ensure t)
  ;;(use-package xref-js2 :ensure t)
  :config
  ;; use web-mode for .jsx files
  (add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

  ;; turn on flychecking globally
  (add-hook 'after-init-hook #'global-flycheck-mode)

  ;; disable jshint since we prefer eslint checking
  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers
                        '(javascript-jshint)))

  ;; use eslint with web-mode for jsx files
  (flycheck-add-mode 'javascript-eslint 'web-mode)

  ;; customize flycheck temp file prefix
  (setq-default flycheck-temp-prefix ".flycheck")

  ;; disable json-jsonlist checking for json files
  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers
                        '(json-jsonlist)))

  ;; https://github.com/purcell/exec-path-from-shell
  ;; only need exec-path-from-shell on OSX
  ;; this hopefully sets up path and other vars better
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize))

  (setq web-mode-markup-indent-offset 2
        web-mode-code-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-enable-auto-pairing t
        web-mode-enable-css-colorization t
        web-mode-enable-current-element-highlight t))

;; Make use of local Eslint over global
;; use local eslint from node_modules before global
;; http://emacs.stackexchange.com/questions/21205/flycheck-with-file-relative-eslint-executable
(defun my/use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))
(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)

(provide 'webmode-init)
;;; webmode-init.el ends here
