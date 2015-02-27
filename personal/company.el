;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Company-mode (autocompletion) customization
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; bigger popup window
(setq company-tooltip-limit 20)

; wait until at least one character before autocompleting
(setq company-minimum-prefix-length 1)

; shorter delay before autocompletion popup
(setq company-idle-delay 0.3)

; removes annoying blinking
(setq company-echo-delay 0)
