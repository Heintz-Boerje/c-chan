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
                        (url "https://github.com/qtile/qtile")
                        (commit "4c69fca361bcb1d9753b37b9b903af32b27983c5")))
              (sha256
             (base32
              "0mvn8k1jp6qhj84x5syc6rdld3zs79q73mfgym61x4ryp7bpxzbk"))
              )))(arguments
     `(#:tests? #f ; Tests require Xvfb and writable temp/cache space
       #:phases
       (modify-phases %standard-phases
         (add-after 'patch-paths
           (lambda* (#:key inputs #:allow-other-keys)
             (substitute* "libqtile/pangocffi.py"
               (("^gobject = ffi.dlopen.*")
                 (string-append "gobject = ffi.dlopen(\""
                  (assoc-ref inputs "glib") "/lib/libgobject-2.0.so.0\")\n"))
                (("^pango = ffi.dlopen.*")
                 (string-append "pango = ffi.dlopen(\""
                  (assoc-ref inputs "pango") "/lib/libpango-1.0.so.0\")\n"))
                (("^pangocairo = ffi.dlopen.*")
                 (string-append "pangocairo = ffi.dlopen(\""
                  (assoc-ref inputs "pango") "/lib/libpangocairo-1.0.so.0\")\n"))))))))
