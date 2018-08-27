;;; All of the base packages to load in init.el

;; Necessary Tools
(setq packages
  '(company
    rainbow-mode
    rainbow-delimiters
    smartparens
    yasnippet
    pretty-mode
    dash
    ido
    multi-term
    neotree
    all-the-icons
    magit
    magithub
    auctex
    ;; Programming
    ; Python
    jedi
    elpy

    ; Rust
    rust-mode
    cargo
    origami
    ;flycheck
    flycheck-rust
    racer
    ;; Latex stuff
    auctex
    latex-preview-pane
    magic-latex-buffer
    ;; Volatile highlights
    volatile-highlights

    ;; Org Stuff
    org-autolist
    org-bullets
    ob-ipython
    org-wunderlist
    org-super-agenda
    org-chef
    ;; Style
    fireplace
    challenger-deep-theme
    smart-mode-line
    ))

(provide 'package-vars)

;;
;; EOF
