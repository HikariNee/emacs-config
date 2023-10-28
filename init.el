(load-file "~/.config/emacs/packages.el")
(load-file "~/.config/emacs/packcfg/elcord.el")
(load-file "~/.config/emacs/packcfg/doom-modeline.el")
(load-file "~/.config/emacs/packcfg/doom-themes.el")
(load-file "~/.config/emacs/packcfg/vertico.el")
(load-file "~/.config/emacs/packcfg/flycheck.el")
(load-file "~/.config/emacs/packcfg/lsp-mode.el")
(load-file "~/.config/emacs/packcfg/which-key.el")
(load-file "~/.config/emacs/packcfg/dashboard.el")
(load-file "~/.config/emacs/packcfg/ocaml.el")
(load-file "~/.config/emacs/packcfg/markdown.el")
(load-file "~/.config/emacs/packcfg/nixe.el")
(load-file "~/.config/emacs/packcfg/direnv.el")
(load-file "~/.config/emacs/packcfg/fsharp.el")

(menu-bar-mode -1)  
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)

(setq make-backup-files nil)

(setq native-comp-deferred-compilation t)
(setq native-compile-prune-cache t)
(setq default-frame-alist '((font . "Iosevka Nerd Font-12")))
(electric-pair-mode 1)

(setq gc-cons-threshold 1000000000)
(run-with-idle-timer
 5 nil
 (lambda ()
   (setq gc-cons-threshold (* 1024 1024 100))
   (message "gc-cons-threshold restored to %S"
            gc-cons-threshold)))

(setq native-comp-deferred-compilation-deny-list '())
(setq native-comp-async-report-warnings-errors nil)

(setq
 lexical-binding t
 load-prefer-newer t)


(setq use-package-compute-statistics t)
(setq use-package-minimum-reported-time 0.01)

(pixel-scroll-precision-mode 1)

(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(setq frame-resize-pixelwise 't)
(blink-cursor-mode 0)
(setq read-process-output-max (* 1024 1024)) ;; 1mb

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)


(show-paren-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-gruvbox))
 '(custom-safe-themes
   '("e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2"
     "013728cb445c73763d13e39c0e3fd52c06eefe3fbd173a766bfd29c6d040f100"
     "871b064b53235facde040f6bdfa28d03d9f4b966d8ce28fb1725313731a2bcc8"
     "d445c7b530713eac282ecdeea07a8fa59692c83045bf84dd112dd738c7bcad1d"
     "046a2b81d13afddae309930ef85d458c4f5d278a69448e5a5261a5c78598e012"
     default))
 '(inhibit-startup-screen t)
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
