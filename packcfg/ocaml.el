(use-package tuareg
  :ensure t
  :after (eglot flycheck-eglot)
  :config
    (setq tuareg-match-patterns-aligned t))

(add-hook 'tuareg-mode-hook
            (lambda() (setq tuareg-mode-name "🐫")))

(add-hook 'tuareg-mode-hook (lambda () (eglot)))
