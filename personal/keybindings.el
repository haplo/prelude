;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Keybindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; M-/ isn't easily available in my Spanish keyboard
(global-set-key (kbd "M--") 'hippie-expand)

;; I hate minimize
(global-set-key (kbd "C-z") 'ignore)
(global-set-key (kbd "C-x C-z") 'ignore)

;; quicker window splitting
(global-set-key (kbd "M-1") 'delete-other-windows) ; was digit-argument
(global-set-key (kbd "M-2") 'split-window-vertically) ; was digit-argument
(global-set-key (kbd "M-3") (lambda () (interactive) (funcall 'split-window-horizontally (+ fill-column 4)))) ; was digit-argument
(global-set-key (kbd "M-0") 'delete-window) ; was digit-argument
(global-set-key (kbd "M-s") 'other-window) ; was center-linea

;; quick access to calculator
(global-set-key (kbd "C-x c") 'calc)
(global-set-key (kbd "C-x C-c") 'calc) ; was save-buffers-kill-terminal
(global-set-key (kbd "C-x C") 'full-calc)

;; whitespace cleanup
(global-set-key (kbd "C-c C-w") 'whitespace-cleanup)

;; browse-kill-ring
(global-set-key (kbd "C-x C-k") 'browse-kill-ring)

;; Org-mode keybindings
(global-set-key (kbd "C-c c") 'org-capture)

;; Python keybindings
(eval-after-load 'anaconda-mode
  '(progn
     (define-key anaconda-mode-map (kbd "M-RET") 'anaconda-mode-find-definitions)
     (define-key anaconda-mode-map (kbd "C-M-RET") 'anaconda-mode-find-definitions-other-window)
     ))

;; Go keybindings
(eval-after-load 'go-mode
  '(progn
     (define-key go-mode-map (kbd "M-RET") 'godef-jump)
     (define-key go-mode-map (kbd "C-M-RET") 'godef-jump-other-window)
     ))

;; Rust keybindings
(eval-after-load 'rust-mode
  '(progn
     (define-key rust-mode-map (kbd "M-RET") 'racer-find-definition)
     (define-key rust-mode-map (kbd "C-M-RET") 'racer-find-definition-other-window)
     ))
