;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Behavior
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; backup files are for sissies
(setq-default make-backup-files nil)

; always indent with spaces
(setq-default indent-tabs-mode nil)
(setq-default default-tab-width 4)

; save files to home directory by default
(setq-default default-directory '~)

; (much) bigger kill ring
(setq-default kill-ring-max 5000)

; enable set goal column (C-x C-n)
(put 'set-goal-column 'disabled nil)

; mondays are the first day of the week (for M-x calendar)
(setq-default calendar-week-start-day 1)

; integrate copy/paste with X
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

; make scripts (files that start with #!) executable after saving
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)

; automatically revert files that changed on disk when the open buffer
; has no unsaved changes
(global-auto-revert-mode 1)

; echo keystrokes after 0.1s (default is 1s)
(setq echo-keystrokes 0.1)
