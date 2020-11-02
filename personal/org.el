;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq org-directory (expand-file-name "~/Org"))
(setq org-default-notes-file (concat org-directory "/notes.org"))

;; add all *.org files in the org-directory defined above
(setq org-agenda-files (list org-directory))

;; save time when a task is done
(setq org-log-done 'time)

;; templates for org-capture
(setq org-capture-templates
      '(("n" "Note" entry (file+headline (concat org-directory "/notes.org") "Notes")
         "** %?  :refile:\n  %i\n  %a")
        ("t" "Task" entry (file+headline (concat org-directory "/notes.org") "Tasks")
         "** TODO %?  :refile:\n  %i\n  %a")
        ("c" "Code" entry (file+headline (concat org-directory "/code.org") "Notes")
         "** TODO %?  :refile:\n  %i\n  %a")
        ("s" "Solidshape note" entry (file+headline (concat org-directory "/solidshape/notes.org") "Notes")
         "** TODO %?  :refile:\n  %i\n  %a")
        ("S" "Solidshape meeting" entry (file+headline (concat org-directory "/solidshape/meetings.org") "Interruptions")
         "** TODO %?  :refile:\n  %i\n  %a" :clock-in t :clock-resume t)))

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
   (shell . t)
   (sql-mode . t)))

;; use python3 in org-babel
(setq org-babel-python-command "python3")
