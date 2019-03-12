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

(add-to-list 'load-path "~/.emacs.d/rust-mode/")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(add-to-list 'load-path "~/.emacs.d/plugins/")
(require 'linum-relative)

;; Make linums relative by default
(global-linum-mode nil)
(linum-relative-toggle)

;; Use `display-line-number-mode` as linum-mode's backend for smooth performance
(setq linum-relative-backend 'display-line-numbers-mode)

(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(setq yas-snippet-dirs
    '("~/.emacs.d/snippets"                 ;; personal snippets
))

(yas-global-mode 1)
