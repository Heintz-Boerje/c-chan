(define-module (c-chan packages qtile)
  #:use-module  (guix packages)
  #:use-module  (guix download)
  #:use-module (guix licenses)
  #:use-module  (guix build-system python)
  #:use-module (guix build-system pyproject))

;; ( package
;;   (name "qtile")
;;   (version "0.23.0")
;;   (source
;;    (origin
;;      (method url-fetch)
;;      (uri (pypi-uri "qtile" version))
;;      (sha256
;;       (base32 "1v8rxm2xg2igxv6gwa78wrkxzgfxmxfgflbjdp4fm7cxjdx3zrpa"))))
;;   (build-system pyproject-build-system)
;;   (propagated-inputs (list python-cairocffi python-cffi python-xcffib))
;;   (native-inputs (list python-bowler python-dbus-next python-pygobject
;;                        python-pytest))
;;   (home-page "")
;;   (synopsis "A pure-Python tiling window manager.")
;;   (description "This package provides a pure-Python tiling window manager.")
;;   (license license:expat)
;;  )
(define-public qtile
(package
  (name "qtile")
  (version "0.22.1")
  (source
   (origin
     (method url-fetch)
     (uri (pypi-uri "qtile" version))
     (sha256
      (base32 "12wg8y33xgb0x0gd9xfylxss97p97dy1cy52yln64493fi6wphr7"))))
  (build-system pyproject-build-system)
  (propagated-inputs (list python-cairocffi python-cffi python-xcffib))
  (native-inputs (list python-bowler python-dbus-next python-pygobject
                       python-pytest))
  (home-page "qtile.org")
  (synopsis "A pure-Python tiling window manager.")
  (description "This package provides a pure-Python tiling window manager.")
  (license expat))
)
