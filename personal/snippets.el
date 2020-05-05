;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Snippets
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; personal snippets dir
(defvar prelude-personal-snippets-dir
  (expand-file-name "snippets" prelude-personal-dir)
  "This folder houses personal yasnippet bundles.")

;; load yasnippet
(require 'yasnippet)
(add-to-list 'yas-snippet-dirs prelude-personal-snippets-dir)
(yas-global-mode 1)

;; term-mode does not play well with yasnippet
(add-hook 'term-mode-hook (lambda ()
                            (yas-minor-mode -1)))
