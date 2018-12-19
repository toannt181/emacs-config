(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

;; This is only needed once, near the top of the file
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package));; Load `use-package`

;;(require 'diminish)
;;(require 'bind-key)

(setq use-package-always-ensure t)

;; load other path
(load "~/.emacs.d/keybindings.el")
(load "~/.emacs.d/packages.el")

;; font-size
(set-face-attribute 'default nil :height 140)

;; customize
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (counsel neotree sublimity spacemacs-theme restart-emacs foo use-package)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))

;; make typing delete/overwrites selected text
(delete-selection-mode 1)

;; turn on highlighting current line
(global-hl-line-mode 1)

;; turn on bracket match highlight
(show-paren-mode 1)

;; remember cursor position, for emacs 25.1 or later
(save-place-mode 1)

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
 )

;; Display line number when programming
;; (add-hook 'prog-mode-hook 'linum-mode)
(global-linum-mode t)
(setq linum-format "%4d \u2502")
