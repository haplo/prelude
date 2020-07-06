;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ivy
;; https://oremacs.com/swiper/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; show more candidates
(setq ivy-height 20)

;; case-insensitive search when running counsel-git-log
(setq counsel-git-log-cmd "GIT_PAGER=cat git log --no-color -i --grep '%s'")
