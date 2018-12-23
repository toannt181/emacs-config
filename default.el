(defcustom writeroom-fullscreen-effect 'fullboth
  "Effect applied when enabling fullscreen.
The value can be `fullboth', in which case fullscreen is
activated, or `maximized', in which case the relevant frame is
maximized but window decorations are still available."
  :group 'writeroom
  :type '(choice (const :tag "Fullscreen" fullboth)
                 (const :tag "Maximized" maximized)
                 (const :tag "Mac Native Fullscreen" fullscreen)))

(setq writeroom-fullscreen-effect 'maximized)
