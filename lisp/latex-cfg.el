;; Config settings for latex/auctex

;; Latex
(latex-preview-pane-enable)
(add-hook 'latex-mode-hook 'magic-latex-buffer)

;; magic buffer opptions (t: enable, nil: disable)
(setq magic-latex-enable-block-highlight t
      magic-latex-enable-suscript        t
      magic-latex-enable-pretty-symbols  t
      magic-latex-enable-block-align     t
      magic-latex-enable-inline-image    t
      magic-latex-enable-minibuffer-echo t)

(provide 'latex-cfg)
