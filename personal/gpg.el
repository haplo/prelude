;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GPG/PGP configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Detect QubesOS and use its wrapper for split GPG
(if (file-exists-p "/usr/bin/qubes-gpg-client-wrapper")
    (progn
      (require 'epg-config)
      (setq epg-gpg-program "/usr/bin/qubes-gpg-client-wrapper")
      (push (cons 'OpenPGP (epg-config--make-gpg-configuration epg-gpg-program))
            epg--configurations)))

; Play nice with GPG signatures in Emacs packages
(setq package-gnupghome-dir nil)
