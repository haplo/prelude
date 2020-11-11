;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; enable auto-virtualenv
;; https://github.com/robert-zaremba/auto-virtualenv
(require 'auto-virtualenv)
(add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv)
;; Activate on changing buffers
(add-hook 'window-configuration-change-hook 'auto-virtualenv-set-virtualenv)
;; Activate on focus in
(add-hook 'focus-in-hook 'auto-virtualenv-set-virtualenv)
;; Less verbosity
(setq auto-virtualenv-verbose nil)

;; set up integration with python-language-server
;; https://github.com/andrew-christianson/lsp-python-ms
(require 'lsp-python-ms)
(setq lsp-python-ms-auto-install-server t)
(add-hook 'python-mode-hook #'lsp)

;; blacken configuration
;; https://github.com/pythonic-emacs/blacken
(require 'blacken)
(add-hook 'python-mode-hook #'blacken-mode)
(setq blacken-only-if-project-is-blackened t)
(setq blacken-line-length fill-column)
