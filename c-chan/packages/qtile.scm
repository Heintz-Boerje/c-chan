(define-module (c-chan packages qtile)
  #:use-module  (guix packages)
  #:use-module  (guix download)
  #:use-module (guix licenses)
  #:use-module  (guix build-system python)
  #:use-module (guix build-system pyproject))

(define-public qtile
(package
  (name "qtile")
  (version "0.25.1")
  (source
   (origin
     (method url-fetch)
     (uri (pypi-uri "qtile" version))
     (sha256
      (base32 "04gwcgip7469zq0vivrq2ppw25f3v99kymhhr1740z7137q0yyc"))))
  (build-system pyproject-build-system)
  (arguments '(#:test? #f))
  (propagated-inputs (list python-cairocffi python-cffi python-xcffib python-dbus-next))
  (home-page "https://qtile.org")
  (synopsis "A pure-Python tiling window manager.")
  (description "This package provides a pure-Python tiling window manager.")
  (license expat)))
