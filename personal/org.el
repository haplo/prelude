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
        ("sj" "Jira" entry (file+headline ,(expand-file-name "solidshape/notes.org" org-directory) "Jira tasks management")
         "** TODO %?" :clock-in t :clock-resume t)
        ("sr" "PR review" entry (file+headline ,(expand-file-name "solidshape/notes.org" org-directory) "Reviews")
         "** [[%^{PR URL}][%^{PR description}]]" :clock-in t :clock-resume t)
        ))

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

;; syntax highlighting for exported source code blocks, needs listings and color latex
;; packages (texlive-latex-recommended package in Debian/Ubuntu)
(require 'ox-latex)
(setq org-latex-listings 'minted)
(add-to-list 'org-latex-packages-alist '("" "minted"))
(setq org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

;; color links in Latex PDF output
(add-to-list 'org-latex-packages-alist "\\hypersetup{colorlinks=true,linkcolor=blue,urlcolor=blue}")
