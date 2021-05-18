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

(require 'lsp-pylsp)

(setq lsp-pylsp-configuration-sources ["flake8"])
(setq lsp-pylsp-plugins-autopep8-enabled nil)
(setq lsp-pylsp-plugins-flake8-enabled t)
(setq lsp-pylsp-plugins-jedi-completion-enabled t)
(setq lsp-pylsp-plugins-pycodestyle-enabled nil)
(setq lsp-pylsp-plugins-pydocstyle-enabled nil)
(setq lsp-pylsp-plugins-pyflakes-enabled nil)
(setq lsp-pylsp-plugins-pylint-enabled nil)
(setq lsp-pylsp-plugins-rope-completion-enabled t)
(setq lsp-pylsp-plugins-yapf-enabled nil)

(defun my-python-config ()
  "My personal configuration for python-mode"
  (subword-mode +1)
  (pyvenv-mode +1)
  (auto-virtualenv-set-virtualenv)
  (lsp-deferred)
  )
(defun lsp-python-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t))
(add-hook 'python-mode-hook #'my-python-config)
(add-hook 'python-mode-hook #'lsp-python-install-save-hooks)
