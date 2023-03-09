(define-module (c-chan packages qtile-git)
  #:use-module (gnu packages wm)
  #:use-module (guix git-download)
  #:use-module  (guix packages)
  #:use-module  (guix download)
  #:use-module  (guix build-system python))

(define-public qtile-git
  (package
    (inherit qtile)
   (name "qtile-git")
    (version "0.22.2")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                        (url "https://github.com/qtile/qtile.git")
                        (commit "4c69fca361bcb1d9753b37b9b903af32b27983c5")))
              (sha256
             (base32
              "12wg8y33xgb0x0gd9xfylxss97p97dy1cy52yln64493fi6wphr7"))
              ))))
