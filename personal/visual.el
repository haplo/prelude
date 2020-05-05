;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Visual customization
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; no message in scratch buffer
(setq initial-scratch-message "")

;; disable scrollbars, they just waste precious screen space
(scroll-bar-mode 0)
(tool-bar-mode 0)

;; blinking top and bottom lines instead of speaker buzz
(setq-default visible-bell t)

;; required for non-English keys (like dead acute) to work
;; http://osdir.com/ml/help-gnu-emacs-gnu/2009-05/msg00170.hotel
(require 'iso-transl)

;; better diff coloring
(eval-after-load 'diff-mode
  '(progn
     (set-face-foreground 'diff-added "green4")
     (set-face-foreground 'diff-removed "red3")))

;; move the mouse away from the cursor
(mouse-avoidance-mode 'animate)

;; freedesktop standard fullscreen
(defun fullscreen ()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
                         '(2 "_NET_WM_STATE_FULLSCREEN" 0)))
(global-set-key [f11] 'fullscreen)

;; avoid compiz manager rendering bugs
(add-to-list 'default-frame-alist '(alpha . 100))

;; force white cursor in every frame
(set-cursor-color "gray90")
(add-hook 'window-setup-hook
          '(lambda () (set-cursor-color "gray80")))
(add-hook 'after-make-frame-functions
          '(lambda (f) (with-selected-frame f (set-cursor-color "gray80"))))

;; larger font for my monitor
(add-to-list 'default-frame-alist '(font . "Noto Sans Mono 14"))
(set-face-attribute 'default t :font "Noto Sans Mono 14")
