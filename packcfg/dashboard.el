(add-hook 'emacs-startup-hook 
  (lambda () 
    (let ( 
      (mgs-list 
         '("Welcome to emacs, the thermonuclear editor." "You enter to Out Space. Emacs on."  "Nice day for Emacsing!")) ) (message (nth (random (length mgs-list)) mgs-list))))) 
