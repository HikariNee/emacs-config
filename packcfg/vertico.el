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

(use-package cape
  :ensure t
  :bind (("C-c p p" . completion-at-point) ;; capf
         ("C-c p t" . complete-tag)        ;; etags
         ("C-c p d" . cape-dabbrev)        ;; or dabbrev-completion
         ("C-c p h" . cape-history)
         ("C-c p f" . cape-file)
         ("C-c p k" . cape-keyword)
         ("C-c p s" . cape-elisp-symbol)
         ("C-c p e" . cape-elisp-block)
         ("C-c p a" . cape-abbrev)
         ("C-c p l" . cape-line)
         ("C-c p w" . cape-dict)
         ("C-c p :" . cape-emoji)
         ("C-c p \\" . cape-tex)
         ("C-c p _" . cape-tex)
         ("C-c p ^" . cape-tex)
         ("C-c p &" . cape-sgml)
         ("C-c p r" . cape-rfc1345))
  :init
  (add-to-list 'completion-at-point-functions #'cape-dabbrev)
  (add-to-list 'completion-at-point-functions #'cape-file)
  (add-to-list 'completion-at-point-functions #'cape-elisp-block)
)


(use-package corfu
 :ensure t
 :bind (:map corfu-map
         ("TAB" . corfu-next)
         ([tab] . corfu-next)
         ("S-TAB" . corfu-previous)
         ([backtab] . corfu-previous))

 :custom
  (corfu-cycle t)
  (corfu-auto t)
  (corfu-auto-prefix 1) 
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
