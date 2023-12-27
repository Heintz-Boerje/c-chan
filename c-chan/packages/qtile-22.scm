(define-module (c-chan packages qtile-23)
  #:use-module (gnu packages wm)
  #:use-module  (guix packages)
  #:use-module  (guix download)
  #:use-module  (guix build-system python))

(define-public qtile-0.23.0
  (package
    (inherit qtile)
    (version "0.23.0")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "qtile" version))
              (sha256
             (base32
              "1v8rxm2xg2igxv6gwa78wrkxzgfxmxfgflbjdp4fm7cxjdx3zrpa"))
              ))))
