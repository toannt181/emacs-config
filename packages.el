;; list packages
(use-package doom-themes
  :ensure t)
(use-package creamsody-theme
  :ensure t)
(use-package grayscale-theme
  :ensure t)

(use-package spacemacs-common
    :ensure spacemacs-theme)

;; setting theme
;;(load-theme 'spacemacs-dark t)
;; (load-theme 'doom-city-lights t)

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
;;(use-package yasnippet
;;  :defer t
;;  :init
;;  (yas-global-mode 1))

;; import javascript
(use-package js2-mode
  :ensure t)

;; make sure on mac get correct path
(use-package exec-path-from-shell
  :ensure t
  :config (when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize)))

(use-package avy
  :ensure t
  :commands (avy-goto-char)
  :config
    (setq avy-background t)
  :custom-face
    (avy-lead-face ((t(:weight bold))))
    (avy-lead-face-0 ((t(:weight bold))))
  )

(use-package projectile
  :ensure t)

(setq projectile-project-search-path '("~/work/"))

(use-package counsel-projectile
  :ensure t)

(use-package golden-ratio-scroll-screen
  :ensure t)

(use-package flycheck
  :ensure t
  :config (global-flycheck-mode))

;; never lose your cursor
(use-package beacon
  :ensure t
  :init (beacon-mode t))

;; undo professional
(use-package undo-tree
  :ensure t
  :config (global-undo-tree-mode))

;; smart paren
(use-package smartparens-config
  :ensure smartparens
  :config (smartparens-global-mode 1))

;; use file editorconfig
(use-package editorconfig
  :ensure t
  :commands editorconfig-mode
  :delight editorconfig-mode
  :init (add-hook 'prog-mode-hook #'editorconfig-mode)
  :config
  (progn
    (add-to-list 'editorconfig-indentation-alist
                 '(swift-mode swift-indent-offset))))
