(use-package vertico
  :ensure t
  :init (vertico-mode))

(use-package savehist
  :ensure t 
  :init (savehist-mode))

(use-package orderless
  :ensure t
  :init
  (setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides '((file (styles partial-completion)))))

(use-package corfu
 :ensure t
 :init (global-corfu-mode))

(use-package consult
 :ensure t
 :bind (
       ("C-x 4 b" . consult-buffer-other-window)
       ("M-g M-g" . consult-goto-line)
       ("C-x b" . consult-buffer)
       ("M-s g" . consult-ripgrep)
       ("M-s d" . consult-fd))
 :init 
   (advice-add #'register-preview :override #'consult-register-window))


(use-package emacs
  :init
  (defun crm-indicator (args)
    (cons (format "[CRM%s] %s"
                  (replace-regexp-in-string
                   "\\`\\[.*?]\\*\\|\\[.*?]\\*\\'" ""
                   crm-separator)
                  (car args))
          (cdr args)))
  (advice-add #'completing-read-multiple :filter-args #'crm-indicator)

  (setq minibuffer-prompt-properties
        '(read-only t cursor-intangible t face minibuffer-prompt))
  (add-hook 'minibuffer-setup-hook #'cursor-intangible-mode)

  (setq enable-recursive-minibuffers t))

(use-package recentf
  :ensure t
  :init
  (recentf-mode)
  :custom ((recentf-save-file (concat user-emacs-directory ".recentf"))
           (recentf-max-menu-items 40)))
