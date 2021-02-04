;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; LSP and lsp-mode configuration
;;
;; Language-specific configuration in their respective files, e.g. python.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; display documentation by the cursor, not at the top of the window
(setq-default lsp-ui-doc-position 'at-point)

(setq-default lsp-ui-doc-include-signature t)

(setq-default lsp-ui-doc-use-webkit nil)

;; https://emacs-lsp.github.io/lsp-mode/page/performance/
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1 MiB

(add-hook 'lsp-after-open-hook 'lsp-enable-imenu)
