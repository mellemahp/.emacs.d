;; Config settings for miscellaneous non-style things

;; TRAMP Settings
; Allows you to edit external file as sudo by calling "M-x sudo"
(defun sudo ()
  "Use TRAMP to 'sudo the current buffer"
  (interactive)
  (when buffer-file-name
     (find-alternate-file
     (concat "/sudo:root@localhost:"
	     buffer-file-name))));; TRAMP

;; Multi-terminal settings
(setq multi-term-program "/bin/zsh") ;; sets zshell to default shell
(add-hook 'term-mode-hook
          (lambda ()
	    (setq term-buffer-maximum-size 10000))) ;; allows for a longer history in the terminal
(add-hook 'term-mode-hook
          (lambda ()
	    (define-key term-raw-map (kbd "C-y") 'term-paste))) ;; adds the ability to yank in terminal emulator

;; Neotree
(global-set-key [s-XF86TouchpadToggle] 'neotree-toggle) ;;sets <F8> to neotree toggle
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

(provide 'other-cfg)
