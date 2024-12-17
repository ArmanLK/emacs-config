(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(package-install-selected-packages)

(setq visible-bell nil ring-bell-function 'flash-mode-line)

(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(setq lsp-file(concat user-emacs-directory "lsp.el"))
(when (file-exists-p lsp-file)
  (load lsp-file))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(evil-mode)
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

(setq gc-cons-threshold most-positive-fixnum)

(eldoc-mode -1)
