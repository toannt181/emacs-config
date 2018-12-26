(use-package company
  :ensure t
  :config
  (setq-default company-idle-delay 0.1
                company-dabbrev-other-buffers 'all
                company-dabbrev-code-other-buffers 'all
                company-dabbrev-code-everywhere t
                company-minimum-prefix-length 3
                company-show-numbers nil
                company-tooltip-limit 10
                company-tooltip-align-annotations t
                company-require-match nil
                company-echo-delay 0.1
                company-dabbrev-downcase nil)

  (setq-default company-frontends '(company-pseudo-tooltip-frontend company-echo-metadata-frontend))
  (setq-default company-backends
                '((company-capf company-dabbrev company-dabbrev-code company-files)))

  (global-company-mode t)
  :hook (elisp-mode . (lambda ()
                        (add-to-list 'company-backends 'company-elisp))))

(use-package company-quickhelp
  :ensure t
  :after company
  :config
  (company-quickhelp-mode 1))

(use-package company-statistics
  :ensure t
  :after company
  :config
  (company-statistics-mode))
