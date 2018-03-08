;; Config setting for emacs style


;; Set startup screen
    (setq inhibit-startup-message t) ; Hide Startup Message

    (setq initial-scratch-message "
Welcome Back!
Have a blast Coding!
")

(add-hook 'emacs-startup-hook #'org-agenda-list 7)


;; nicer parenthesis handling
(smartparens-global-mode t)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'rainbow-mode)

;; Set theme
(load-theme
'dracula t)

;; Font settings
(set-frame-font "FiraMono" nil t) ;
(set-face-attribute 'default (selected-frame) :height 135)

;; ido mode
(ido-mode t)
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)

;; whitespace-mode
(setq whitespace-line-column 80)
(setq whitespace-style '(faces lines-tail))
(add-hook 'prog-mode-hook 'whitespace-mode)

; Make emacs delete trailing whitespace on save for programming files
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Adds in volatile highlights
(require volatile-highlights)
(volatile-highlights-mode t)

(provide 'style-cfg)

;; EOF
;;
