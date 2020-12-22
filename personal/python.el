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

;; prefer flake8 over pyflakes in pyls
;; https://vxlabs.com/2018/06/08/python-language-server-with-emacs-and-lsp-mode/
(defun lsp-python-use-flake8 ()
  (let ((lsp-cfg `(:pyls (:configurationSources ("flake8")))))
    ;; TODO: check lsp--cur-workspace here to decide per server / project
    (lsp--set-configuration lsp-cfg)))

(defun my-python-config ()
  "My personal configuration for python-mode"
  (subword-mode +1)
  (pyvenv-mode +1)
  (auto-virtualenv-set-virtualenv)
  (lsp-python-use-flake8)
  (lsp)
  (python-black-on-save-mode)
  )
(add-hook 'python-mode-hook 'my-python-config)
