;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GPG/PGP configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Use QubesOS' wrapper for split GPG
(require 'epg-config)
(setq epg-gpg-program "/usr/bin/qubes-gpg-client-wrapper")
(push (cons 'OpenPGP (epg-config--make-gpg-configuration epg-gpg-program))
      epg--configurations)

; Play nice with GPG signatures in Emacs packages
(setq package-gnupghome-dir nil)
