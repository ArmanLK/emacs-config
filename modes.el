(setq major-mode-remap-alist
      '(
	(c++-mode . c++-ts-mode)
	(c-mode . c-ts-mode)
	(css-mode . css-ts-mode)
	(clojure-mode . clojure-ts-mode)
	(html-mode . html-ts-mode)
	(javascript-mode . javascript-ts-mode)
	(kotlin-mode . kotlin-ts-mode)
	(python-mode . python-ts-mode)
	(rust-mode . rust-ts-mode)
	(typescript-mode . typescript-ts-mode)
	))

(setq treesit-language-source-alist
      '(
	(bash . ("https://github.com/tree-sitter/tree-sitter-bash" nil nil nil nil))
	(c . ("https://github.com/tree-sitter/tree-sitter-c" nil nil nil nil))
	(cpp . ("https://github.com/tree-sitter/tree-sitter-cpp" nil nil nil nil))
	(css . ("https://github.com/tree-sitter/tree-sitter-css" nil nil nil nil))
	(clojure . ("https://github.com/sogaiu/tree-sitter-clojure" nil nil nil nil))
	(html . ("https://github.com/tree-sitter/tree-sitter-html" nil nil nil nil))
	(javascript . ("https://github.com/tree-sitter/tree-sitter-javascript" nil nil nil nil))
	(kotlin . ("https://github.com/fwcd/tree-sitter-kotlin" nil nil nil nil))
	(python . ("https://github.com/tree-sitter/tree-sitter-python" nil nil nil nil))
	(rust . ("https://github.com/tree-sitter/tree-sitter-rust" nil nil nil nil))
	(typescript . ("https://github.com/tree-sitter/tree-sitter-typescript" nil nil nil nil))
	))
