(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(use-package flycheck-eglot
  :ensure t
  :after (flycheck eglot)
  :config (global-flycheck-eglot-mode 1))

