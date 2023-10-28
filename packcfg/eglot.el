(require 'eglot)
(require 'eglot-fsharp)

(add-hook 'tuareg-mode-hook #'eglot-ensure)
(add-hook 'haskell-mode-hook #'eglot-ensure)
(add-hook 'fsharp-mode-hook #'eglot-ensure)
(setq eglot-sync-connect nil)
(setq completion-category-overrides '((eglot (styles orderless))))
(with-eval-after-load 'eglot
   (setq completion-category-defaults nil))


(use-package eglot-fsharp
  :ensure t)

(advice-add 'eglot-completion-at-point :around #'cape-wrap-buster)
