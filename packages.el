;; list packages
(use-package restart-emacs
  :ensure t)

(use-package esup
  :ensure t)

(use-package counsel
  :config (ivy-mode 1)
  :init)

;; make sure on mac get correct path
;; (use-package exec-path-from-shell
;;  :ensure t
;;  :config (when (memq window-system '(mac ns x))
;;  (exec-path-from-shell-initialize)))

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

(use-package counsel-projectile
  :ensure t)

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

;; git
(use-package magit
  :ensure t)
(use-package diff-hl
  :ensure t
  :config
  
  ;; Better looking colours for diff indicators /w spacemacs-light theme
  (custom-set-faces
  '(diff-hl-change ((t (:background "#3a81c3"))))
  '(diff-hl-insert ((t (:background "#7ccd7c"))))
  '(diff-hl-delete ((t (:background "#ee6363")))))

  (global-diff-hl-mode)
  (diff-hl-flydiff-mode)
  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh t))