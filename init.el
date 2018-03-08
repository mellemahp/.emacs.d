;; Hunter Mellema Emacs Config

;; ==============
;; Basic settings
;; ==============

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(show-paren-mode t)
(column-number-mode t)
(global-linum-mode t)
(which-function-mode t)

;; ==============================
;; Package Repos and filepaths
;; ==============================

(require 'package)
(package-initialize)
(setq package-archives '())

 (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
 (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
 (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))

 (package-refresh-contents)

 (package-initialize)

;; Email, El-get & other lisp code
(add-to-list 'load-path
	     "/usr/local/share/emacs/site-lisp/mu4e/")
(add-to-list 'load-path
	     "~/.emacs.d/lisp/")


;; ==========================================
;; Install Packages if not already installed
;; =========================================
(require 'package-vars)
(require 'cl)
(loop for pkg in packages do
      (package-install pkg))



;; ========================
;; Load other config  files
;; ========================(defvar *extra-packages*
(setq configs
      '(lang-cfg
	org-cfg
	latex-cfg
	other-cfg
	style-cfg
	ocodo-svg-mode-line ; cool modeline
	mu4e ;email
	org-bullets ; org mode ut8 bullets
	))

(dolist (cfg configs)
 (require cfg))

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (autothemer rust-mode magit ido dash yasnippet company org-bullets svg-mode-line-themes smartparens rainbow-mode rainbow-delimiters racer python-mode project-explorer pretty-mode org-beautify-theme nose neotree multi-term magithub magic-latex-buffer latex-preview-pane jedi gruvbox-theme flycheck-rust fireplace elpy darkokai-theme cyberpunk-theme cargo autopair auctex atom-dark-theme all-the-icons))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'scroll-left 'disabled nil)
