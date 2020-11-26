;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq org-directory (expand-file-name "~/Org"))
(setq org-default-notes-file (concat org-directory "/notes.org"))

;; add all *.org files in the org-directory defined above
(setq org-agenda-files (list org-directory (expand-file-name "solidshape" org-directory)))

;; custom org-agenda views
(setq org-agenda-custom-commands
      '(("r" tags "refile")))

;; save time when a task is done
(setq org-log-done 'time)

;; templates for org-capture
(setq org-capture-templates
      `(("n" "Note" entry (file+headline ,(expand-file-name "notes.org" org-directory) "Notes")
         "** %?  :refile:\n  %i\n  %a")
        ("t" "Task" entry (file+headline ,(expand-file-name "notes.org" org-directory) "Tasks")
         "** TODO %?")
        ("m" "Media review")
        ("mb" "Book" entry (file+headline ,(expand-file-name "notes.org" org-directory) "Books")
         "*** %^{Title} - %^{Author}\n    %?")
        ("mm" "Movie" entry (file+headline ,(expand-file-name "notes.org" org-directory) "Movies")
         "*** %^{Title}\n    %?")
        ("mv" "Video" entry (file+headline ,(expand-file-name "notes.org" org-directory) "Videos")
         "*** [[%^{URL}][%^{Title}]]\n    %?")
        ("mw" "Web page" entry (file+headline ,(expand-file-name "notes.org" org-directory) "Web pages")
         "*** [[%^{URL}][%^{Title}]]\n    %?")
        ("c" "Code" entry (file+headline ,(expand-file-name "code.org" org-directory) "Notes")
         "** TODO %?  :refile:\n  %i\n  %a")
        ("s" "Solidshape")
        ("sn" "Note" entry (file+headline ,(expand-file-name "solidshape/notes.org" org-directory) "Notes")
         "** TODO %?  :refile:\n  %i\n  %a")
        ("si" "Interruption" entry (file+headline ,(expand-file-name "solidshape/meetings.org" org-directory) "Interruptions")
         "** %?" :clock-in t :clock-resume t)
        ("sj" "Jira" entry (file+headline ,(expand-file-name "solidshape/notes.org" org-directory) "Jira tasks to create")
         "** TODO %?" :clock-in t :clock-resume t)
        ("sr" "PR review" entry (file+headline ,(expand-file-name "solidshape/notes.org" org-directory) "Reviews")
         "** [[%^{PR URL}][%^{PR description}]]" :clock-in t :clock-resume t)
        ))

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
