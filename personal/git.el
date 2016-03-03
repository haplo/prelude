;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Git settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; use Magit WIP minor mode to save changing files
(setq magit-wip-after-apply-mode' t)
(setq magit-wip-after-save-mode' t)
(setq magit-wip-before-change-mode' t)

;; path to my root code dir, so I can do C-x g from anywhere
(setq magit-repository-directories '("~/Code/"))

;; create a local tracking branch when visiting a remote branch
(setq magit-visit-ref-create t)

;; don't ask for confirmation when pushing branches
(setq magit-push-always-verify nil)

;; enable magit-clean
(put 'magit-clean 'disabled nil)
