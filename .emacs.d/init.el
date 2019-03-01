					;Moving auto saves to emacs directory
(setq auto-save-file-name-transforms
          `((".*" ,(concat user-emacs-directory "auto-save/") t))) 
					;Enable Evil mode

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
