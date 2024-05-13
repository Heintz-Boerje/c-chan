(define-module (python-xcffib)
	       #:use-module (guix packages)
	       #:use-module (guix download)
	       #:use-module (guix build-system python)
	       #:use-module (guix build-system pyproject)
	       #:use-module (gnu packages libffi)
	       #:use-module (gnu packages python-xyz))

(define-public python-xcffib-1.5.0
  (package
    (inherit python-xcffib)
    (name "python-xcffib")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "xcffib" version))
       (sha256
        (base32 "1k0sd7dpfdp5pxbzsq5p3kvjv8q7hkhd2sv0vv74yyzry9jr8p59"))))
    (build-system pyproject-build-system)
    ;(propagated-inputs (list python-cffi))
    (home-page "http://github.com/tych0/xcffib")
    (synopsis "A drop in replacement for xpyb, an XCB python binding")
    (description
     "This package provides a drop in replacement for xpyb, an XCB python binding")
    (license #f)))
