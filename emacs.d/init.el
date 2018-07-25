;;;
;;; Custom emacs configs
;;;


;;; In c-mode, allow tab key to indent (vs format)
;;; No emacs splash screen on startup
(setq c-tab-always-indent nil
      inhibit-splash-screen t)

;;; Set load path
(add-to-list 'load-path "~/.emacs.d/editor-modes")

;;; Load php-mode on startup
(load "php-mode")
;;; don't load php-mode on startup, rather load based on file extension when loading a file
;;;(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
;;;(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
;;;(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))

;;; Don't create backup files (~)
(setq make-backup-files nil)

;;to set foreground color to white
(set-foreground-color "yellow")

;;to set background color to black
(set-background-color "black")

;;; add javascript code mode
;;;(autoload 'js2-mode "js2" nil t)
;;;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;;; end file

