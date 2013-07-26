;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Keybindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "M--") 'hippie-expand)

; I hate minimize
(global-set-key (kbd "C-z") 'ignore)
(global-set-key (kbd "C-x C-z") 'ignore)

; quicker window splitting
(global-set-key (kbd "M-1") 'delete-other-windows) ; was digit-argument
(global-set-key (kbd "M-2") 'split-window-vertically) ; was digit-argument
(global-set-key (kbd "M-3") 'split-window-horizontally) ; was digit-argument
(global-set-key (kbd "M-0") 'delete-window) ; was digit-argument
(global-set-key (kbd "M-s") 'other-window) ; was center-linea

(global-set-key (kbd "C-x c") 'calc)
(global-set-key (kbd "C-x C-c") 'calc) ; was save-buffers-kill-terminal
(global-set-key (kbd "C-x C") 'full-calc)

; whitespace cleanup
(global-set-key (kbd "C-c C-w") 'whitespace-cleanup)

; browse-kill-ring
(global-set-key (kbd "C-x C-k") 'browse-kill-ring)
