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
