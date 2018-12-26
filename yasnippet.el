(use-package yasnippet
  :ensure t
  :after company
  :config (yas-global-mode))

(use-package yasnippet-snippets
  :ensure t
  :after yasnippet)

(use-package ivy-yasnippet
  :ensure t
  :after yasnippet)
