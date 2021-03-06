;; key bindings
(setq mac-option-modifier 'super)
;;(setq mac-control-modifier nil)
(setq mac-command-modifier 'meta)

(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;(global-set-key (kbd "C-f") 'avy-goto-char)

;; customize
(global-set-key (kbd "C-c c") 'xah-comment-dwim)

;; move windoxfggxf;; Move between windows
(global-set-key (kbd "C-,")  'windmove-left)
(global-set-key (kbd "C-.") 'windmove-right)
;;(global-set-key (kbd "S-c <up>")    'windmove-up)
;;(global-set-key (kbd "S-c <down>")  'windmove-down)
(global-set-key (kbd "C-2") 'split-and-jump-window-right)
(global-set-key (kbd "C-x 2") 'split-window-right)
(global-set-key (kbd "C-x 3") 'split-window-below)

;; project titile
(global-set-key (kbd "M-p") 'counsel-projectile-find-file)
(global-set-key (kbd "C-M-p") 'counsel-projectile-switch-project)

;; moving screen
(global-set-key (kbd "M-<up>") 'golden-ratio-scroll-screen-down)
(global-set-key (kbd "M-<down>") 'golden-ratio-scroll-screen-up)
(global-set-key (kbd "C-<tab>") 'switch-to-previous-buffer)

;; neotree
;(global-set-key (kbd "C-b") 'neotree-toggle)

;; change theme
(global-set-key (kbd "C-c t") 'counsel-load-theme)

;; emmet
(global-set-key (kbd "C-M-j") 'emmet-next-edit-point)
(global-set-key (kbd "C-M-S-j") 'emmet-prev-edit-point)
