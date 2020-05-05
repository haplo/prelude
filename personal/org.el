;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq org-directory "~/Org")
(setq org-default-notes-file (concat org-directory "/notes.org"))

;; add all *.org files in the org-directory defined above
(setq org-agenda-files (directory-files org-directory 't "^[^#].*org$"))

;; save time when a task is done
(setq org-log-done 'time)

;; turn off auto-fold
(setq org-startup-folded nil)

;; use org-mode keys
(setq org-disputed-keys (quote (([(shift up)] . [(meta shift up)])
                                ([(shift down)] . [(meta shift down)])
                                ([(shift left)] . [(meta shift left)])
                                ([(shift right)] . [(meta shift right)])
                                ([(control shift right)] . [(control meta shift right)])
                                ([(control shift left)] . [(control meta shift left)])))
      org-replace-disputed-keys t)

;; disable linum-mode in org buffers, it's too slow
(add-hook 'org-mode-hook
  '(lambda () (linum-mode 0)))

;; enable more languages support in org-babel
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (ipython . t)
   (rust . t)
   (sql-mode . t)))

;; use python3 in org-babel
(setq org-babel-python-command "python3")
