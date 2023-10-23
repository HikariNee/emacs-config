(add-hook 'ocaml-mode-hook 'eglot-ensure)

(setq completion-category-overrides '((eglot (styles orderless))))
(with-eval-after-load 'eglot
   (setq completion-category-defaults nil))

