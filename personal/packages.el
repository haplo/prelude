;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Auto-installed packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(prelude-require-packages '(ag
                            go-dlv
                            go-guru
                            go-snippets
                            godoctor
                            pip-requirements
                            solarized-theme
                            visual-regexp-steroids
                            yasnippet))

; load svelte-mode, but must be checked out from github
; git clone https://github.com/leafOfTree/svelte-mode --depth 1 ~/Code/svelte-mode
(if (file-directory-p "~/Code/svelte-mode")
    (progn (add-to-list 'load-path "~/Code/svelte-mode")
           (require 'svelte-mode)))
