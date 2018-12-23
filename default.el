;; font-size
(set-face-attribute 'default nil :height 150)

;; customize
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(menu-bar-mode nil)
;; '(package-selected-packages
;;   (quote
;;    (add-node-modules-path flycheck-mode web-mode exec-path-from-shell js2-mode flycheck golden-ratio-scroll-screen vue-mode counsel-projectile ;; ;; projectile avy yasnippet company counsel neotree sublimity spacemacs-theme restart-emacs foo use-package)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))

;; make typing delete/overwrites selected text
(delete-selection-mode 1)

;; turn on highlighting current line
(global-hl-line-mode 1)

;; turn on bracket match highlight
(show-paren-mode 1)

;; remember cursor position, for emacs 25.1 or later
;; (save-place-mode 1)

;; UTF-8 as default encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;; show cursor position within line
(column-number-mode 1)

;; stop creating those backup~ files
(setq make-backup-files nil)

;; stop creating those #auto-save# files
(setq auto-save-default nil)

;; when a file is updated outside emacs, make it update if it's already opened in emacs
(global-auto-revert-mode 1)

;; wrap long lines by word boundary, and arrow up/down move by visual line, etc
(global-visual-line-mode 1)

(defalias 'yes-or-no-p 'y-or-n-p)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(avy-lead-face ((t (:weight bold))))
 '(avy-lead-face-0 ((t (:weight bold)))))

;; Display line number when programming
(global-linum-mode t)
;; (setq linum-format "%4d \u2502")

(setq-default indent-tabs-mode nil)
(setq js-indent-level 2)

;; disable awkard sound
(setq ring-bell-function 'ignore)

