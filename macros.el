(defun xah-comment-dwim ()
  "Like `comment-dwim', but toggle comment if cursor is not at end of line."
  (interactive)
  (if (region-active-p)
      (comment-dwim nil)
    (let ((-lbp (line-beginning-position))
          (-lep (line-end-position)))
      (if (eq -lbp -lep)
          (progn
            (comment-dwim nil))
        (if (eq (point) -lep)
            (progn
              (comment-dwim nil))
          (progn
            (comment-or-uncomment-region -lbp -lep)
            (forward-line )))))))

(defun switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (save-some-buffers t)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

;; save on lose focus
(add-hook 'focus-out-hook (lambda () (save-some-buffers t)))
(add-hook 'projectile-find-file-hook (lambda () (save-some-buffers t)))

(defun split-and-jump-window-right ()
  (interactive)
  (split-window-right)
  (other-window 1))