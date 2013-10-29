(add-to-list 'load-path "git/elisp")
(load-library "vt-funcs")

(defun my-cc-style()
    (c-set-style "linux")
    (c-set-offset 'innamespace '0)
    (c-set-offset 'inextern-lang '0)
    (c-set-offset 'inline-open '0)
    (c-set-offset 'label '*)
    (c-set-offset 'case-label '*)
    (c-set-offset 'access-label '/)
    (setq c-basic-offset 4)
    (setq tab-width 4)
    (setq indent-tabs-mode nil)
)

(add-hook 'c++-mode-hook 'my-cc-style)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key "\C-m" 'newline-and-indent)

;; Start emacs maximized
(defun toggle-fullscreen ()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
)
(toggle-fullscreen)

