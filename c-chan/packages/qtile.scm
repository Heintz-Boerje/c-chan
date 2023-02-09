(use-modules (gnu packages wm)
              (guix packages)
              (guix download)
              (guix build-system python)
)

(define qtile-0.22.1
  (package
    (inherit qtile)
    (version "0.22.1")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "qtile" version))
              (sha256
             (base32
              "12wg8y33xgb0x0gd9xfylxss97p97dy1cy52yln64493fi6wphr7"))
              ))))