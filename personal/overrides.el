;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Prelude overrides
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; I like my arrow keys thankyouverymuch
(setq prelude-guru nil)

; don't clean whitespace on file save
(setq prelude-clean-whitespace-on-save nil)

; disable spellchecking
(setq prelude-flyspell nil)

; fix GnuTLS bug on Emacs<26.3 that causes errors when downloading
; Emacs packages over HTTPS
; https://debbugs.gnu.org/34341
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
