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

(require 'origami)
(add-hook 'rust-mode-hook 'origami-mode)
;;


;; Python settings
(elpy-enable)
(setq  elpy-rpc-backend "jedi")
(add-hook 'python-mode-hook 'flycheck-mode)
;;

;; Latex Settings
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
;;


;; Magit
(load-library "magit")
(load-library "magithub")
(magithub-feature-autoinject t)
(global-set-key (kbd "C-x g") 'magit-status)
;;

(provide 'lang-cfg)
