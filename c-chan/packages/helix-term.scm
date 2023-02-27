(define-module (c-chan packages helix-term)
  #:use-module (guix packages)
  #:use-module (guix build-system cargo)
  #:use-module (guix download)
  #:use-module (guix licenses))

(define-public helix-term-22.12
  (package
    (name "helix-term")
    (version "22.12")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "helix-term" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
                (base32 "0n3lfnsl9ajgp2sf90fxn6jns9p4akv2mhxnsdarc2d1b2l45niz"))))
    (build-system cargo-build-system)
    (argument '(#:configure-flags '("--locked" "--path")))
    (home-page "https://helix-editor.com")
    (synopsis "A post modern text editor")
    (description "A Kakoune/Neovim inspired editor, written in Rust.
    The editing model is very heavily based on Kakoune. Core features include:

    - Vim-like modal editing
    - Multiple selections
    - Built-in language server support
    - Smart, incremental syntax higlighting and code editing via tree-sitter")
    (license license:mpl2.0)))
