;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Auto-installed packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(prelude-require-packages '(ag
                            auto-virtualenv
                            geiser-guile
                            git-timemachine
                            go-dlv
                            go-guru
                            go-snippets
                            godoctor
                            htmlize
                            ivy-hydra
                            ob-ipython
                            ob-restclient
                            ob-rust
                            ob-sql-mode
                            orgit
                            pip-requirements
                            python-docstring
                            ripgrep
                            solarized-theme
                            visual-regexp-steroids
                            yasnippet
                            yasnippet-snippets))

;; load svelte-mode, but must be checked out from github
;; git clone https://github.com/leafOfTree/svelte-mode --depth 1 ~/Code/svelte-mode
(if (file-directory-p "~/Code/svelte-mode")
    (progn (add-to-list 'load-path "~/Code/svelte-mode")
           (require 'svelte-mode)))
