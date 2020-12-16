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
;; Less verbosity (set to t for debugging)
(setq auto-virtualenv-verbose nil)

(require 'pyvenv)
(setq pyvenv-mode-line-indicator
      '(pyvenv-virtual-env-name ("[venv:" pyvenv-virtual-env-name "] ")))

(defun my-python-config ()
  "My personal configuration for python-mode"
  (subword-mode +1)
  (pyvenv-mode +1)
  (auto-virtualenv-set-virtualenv)
  (lsp)
  (python-black-on-save-mode)
  )
(add-hook 'python-mode-hook 'my-python-config)
