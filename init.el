(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(setq visible-bell nil ring-bell-function 'flash-mode-line)
(setq custom-file "~/.emacs.d/custom.el")

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;(evil-mode)
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

(setq gc-cons-threshold most-positive-fixnum)

(eldoc-mode -1)

(add-hook 'emacs-startup-hook
	  (lambda ()
	    (setq gc-cons-threshold (expt 2 23))))

(add-hook 'emacs-lisp-mode-hook
 	  (lambda ()
 	    (rainbow-delimiters-mode-enable)
	    (company-mode)))

(add-hook 'c-mode-hook
	  (lambda()
	    (eglot-ensure)
	    (eglot-inlay-hints-mode nil)))

(add-hook 'c++-mode-hook
	  (lambda()
	    (eglot-ensure)
	    (eglot-inlay-hints-mode nill)))

(add-hook 'zig-mode-hook
	  (lambda()
	    (eglot-ensure)
	    (eglot-inlay-hints-mode nill)))

(add-hook 'go-mode-hook
	  (lambda()
	    (eglot-ensure)
	    (eglot-inlay-hints-mode nil)))

(add-hook 'python-mode-hook
	  (lambda()
	    (eglot-ensure)
	    (eglot-inlay-hints-mode nil)))

(add-hook 'rust-mode-hook
	  (lambda()
	    (eglot-ensure)
	    (eglot-inlay-hints-mode nill)))

(add-hook 'tex-mode-hook
	  (lambda ()
	    (company-mode)
	    (eglot-ensure)))
