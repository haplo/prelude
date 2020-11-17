;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Keybindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; M-- is in the same place as M-/ in a Spanish keyboard
(define-key my-mode-map (kbd "M--") 'hippie-expand)

;; I hate minimize
(define-key my-mode-map (kbd "C-z") 'ignore)
(define-key my-mode-map (kbd "C-x C-z") 'ignore)

;; quicker window splitting
(define-key my-mode-map (kbd "M-1") 'delete-other-windows) ; was digit-argument
(define-key my-mode-map (kbd "M-2") 'split-window-vertically) ; was digit-argument
(define-key my-mode-map (kbd "M-3") (lambda () (interactive) (funcall 'split-window-horizontally (+ fill-column 4)))) ; was digit-argument
(define-key my-mode-map (kbd "M-0") 'delete-window) ; was digit-argument
(define-key my-mode-map (kbd "M-s") 'other-window) ; was center-linea

;; quick access to calculator
(define-key my-mode-map (kbd "C-x c") 'calc)
(define-key my-mode-map (kbd "C-x C-c") 'calc) ; was save-buffers-kill-terminal
(define-key my-mode-map (kbd "C-x C") 'full-calc)

;; whitespace cleanup
(define-key my-mode-map (kbd "C-c C-w") 'whitespace-cleanup)

;; browse-kill-ring
(define-key my-mode-map (kbd "C-x C-k") 'browse-kill-ring)

;; visual-regexp
(define-key my-mode-map (kbd "s-v r") 'vr/replace)
(define-key my-mode-map (kbd "s-v q") 'vr/query-replace)

;; Global org-mode keybindings
(define-key my-mode-map (kbd "C-c c") 'org-capture)

;; ivy, counsel, swiper
(define-key my-mode-map (kbd "M-x") (lambda () (interactive) (funcall 'counsel-M-x "")))
(define-key my-mode-map (kbd "C-r") 'swiper-backward)
(define-key my-mode-map (kbd "C-c v") 'ivy-push-view)
(define-key my-mode-map (kbd "C-c V") 'ivy-pop-view)
(define-key my-mode-map (kbd "C-c C-r") 'ivy-resume)
(define-key my-mode-map (kbd "C-c L") 'counsel-git-log)
(define-key my-mode-map (kbd "C-c k") 'counsel-rg)
(define-key my-mode-map (kbd "C-c C-j") 'counsel-org-goto-all)

;; Org-mode keybindings
(eval-after-load 'org-mode
  '(progn
     (define-key my-mode-map (kbd "C-c j") 'counsel-org-goto)
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
