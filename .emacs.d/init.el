					;Moving auto saves to emacs directory
(setq auto-save-file-name-transforms
          `((".*" ,(concat user-emacs-directory "auto-save/") t)))
					;Enable Evil mode

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

					; Enable org mode
(add-to-list 'load-path "~/.emacs.d/plugins/evil-org")
(require 'evil-org)
(add-hook 'org-mode-hook 'evil-org-mode)
(evil-org-set-key-theme '(navigation insert textobjects additional calendar))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)

(menu-bar-mode -1) 

(add-to-list 'load-path "~/.emacs.d/vendor/scel/el")
(require 'sclang)

(setenv "PATH" (concat (getenv "PATH") ":/Applications/SuperCollider:/Applications/SuperCollider/SuperCollider.app/Contents/MacOS"))
(setq exec-path (append exec-path '("/Applications/SuperCollider"  "/Applications/SuperCollider/SuperCollider.app/Contents/MacOS" )))
