;; list packages
(use-package doom-themes
  :ensure t)

(use-package spacemacs-common
    :ensure spacemacs-theme
    :config (load-theme 'spacemacs-dark t))

(use-package restart-emacs
  :ensure t)

;; Display a directory tree view on the left side
(use-package neotree
 :config (progn
	  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
 :bind ("C-x n o" . neotree-toggle))

(use-package counsel
  :config (ivy-mode 1)
  :init)

;; Autocomplete
(use-package company
  :config (global-company-mode t))

;; Snippets
(use-package yasnippet
  :defer t
  :init
  (yas-global-mode 1))

(use-package avy
  :ensure t)

(use-package projectile
  :ensure t)

(use-package counsel-projectile
  :ensure t)
