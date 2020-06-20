;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; enable auto-virtualenvwrapper
;; https://github.com/robert-zaremba/auto-virtualenvwrapper.el
(require 'auto-virtualenvwrapper)
(add-hook 'python-mode-hook #'auto-virtualenvwrapper-activate)

;; blacken configuration
;; https://github.com/pythonic-emacs/blacken
(require 'blacken)
(add-hook 'python-mode-hook #'blacken-mode)
(setq blacken-only-if-project-is-blackened t)
(setq blacken-line-length fill-column)
