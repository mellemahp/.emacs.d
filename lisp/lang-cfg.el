;; Config file to load into .emacs.d/init.el
;; sets the configurations for programming

;; Rust settings
(add-hook 'rust-mode-hook 'cargo-minor-mode)
(setq racer-cmd "~/.cargo/bin/racer") ;; Rustup binaries PATH
(setq company-tooltip-align-annotations t)
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
;;


;; Python settings
(elpy-enable)
(setq  elpy-rpc-backend "jedi")
;;

;; Magit
(load-library "magit")
(load-library "magithub")
(magithub-feature-autoinject t)
(global-set-key (kbd "C-x g") 'magit-status)
;;

(provide 'lang-cfg)
