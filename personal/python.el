;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; enable auto-virtualenv
;; https://github.com/robert-zaremba/auto-virtualenv
(require 'auto-virtualenv)
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

;; blacken configuration
;; https://github.com/pythonic-emacs/blacken
(require 'blacken)
(setq blacken-only-if-project-is-blackened t)

(defun my-python-config ()
  "My personal configuration for python-mode"
  (subword-mode +1)
  (auto-virtualenv-set-virtualenv)
  (lsp)
  (blacken-mode +1)
  )
(add-hook 'python-mode-hook 'my-python-config)
