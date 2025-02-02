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

(add-hook 'js-mode-hook
	  (lambda ()
	    (company-mode)
	    (eglot-ensure)))

(add-hook 'typescript-mode-hook
	  (lambda ()
	    (company-mode)
	    (eglot-ensure)))

(use-package eglot
  :config
  (add-to-list 'eglot-server-programs
	       '(typescript-mode . ("npx"
				    "typescript-language-server"
				    "--stdio"))))
(use-package eglot
  :config
  (add-to-list 'eglot-server-programs
	       '(js-mode . ("npx"
			    "typescript-language-server"
			    "--stdio"))))
