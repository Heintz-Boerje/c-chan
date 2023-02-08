(define-module (c-chan packages qtile)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (gnu packages wm))
  
  ; #:use-module (gnu packages base)
  ; #:use-module (guix build-system python)
  ; #:use-module (guix licenses)

(define-public qtile
  (package
      (name "qtile")
      (inherit qtile)
      (version "0.22.1")
      (source (origin
                (method url-fetch)
                (uri (pypi-uri "qtile" version))
                (sha256
                 (base32
                  "12wg8y33xgb0x0gd9xfylxss97p97dy1cy52yln64493fi6wphr7")
          
         )
     
    )
   
  )
  
 )
 
)
