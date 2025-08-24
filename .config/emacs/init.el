;; Disable Toolbar and Menubar
(tool-bar-mode -1)
(menu-bar-mode -1)
;; Line numbers in programming modes
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(tooltip-mode -1)
(setq inhibit-startup-screen t)

;; Set font
(defun my/set-default-font (frame)
  (with-selected-frame frame
    (when (display-graphic-p frame)
      (set-frame-font "Fira Code-14" t t))))
(add-hook 'after-make-frame-functions #'my/set-default-font)
(when (display-graphic-p)
  (set-frame-font "Fira Code-14" t t))

;; Initialize package archives
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Install use-package if not present
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; Server configuration
(use-package server
  :ensure nil
  :defer 1
  :config
  (setq server-client-instructions nil)
  (unless (server-running-p)
    (server-start)))

;; Modus Themes
(use-package modus-themes
  :ensure t
  :demand t
  :bind ("<f5>" . modus-themes-toggle)
  :config
  (modus-themes-load-theme 'modus-vivendi-tinted))

;; (use-package doom-themes
;; :config
;; (load-theme 'doom-one t))

;; VTerm with Fish
 (use-package vterm
   :ensure t
   :config
   (defun my-fish-vterm ()
     (interactive)
     (vterm (executable-find "fish"))))

 ;; Open vterm instead of *scratch*
;; (setq initial-buffer-choice #'my-fish-vterm)

;; Custom file locations
  (setq custom-file (expand-file-name "custom.el" user-emacs-directory))
  (when (file-exists-p custom-file)
    (load custom-file))
  (setq recentf-save-file (expand-file-name "recentf" user-emacs-directory))
  (setq save-place-file (expand-file-name "places" user-emacs-directory))
  (setq bookmark-default-file (expand-file-name "bookmarks" user-emacs-directory))
  (setq tramp-persistency-file-name (expand-file-name "tramp" user-emacs-directory))
  (setq eshell-directory-name (expand-file-name "eshell" user-emacs-directory))
  (setq url-history-file (expand-file-name "url/history" user-emacs-directory))

(use-package vertico
  :ensure t
  :config
  (setq vertico-cycle t)
  (setq vertico-resize nil)
  (vertico-mode 1))

(use-package marginalia
  :ensure t
  :config
  (marginalia-mode 1))

(use-package orderless
  :ensure t
  :config
  (setq completion-styles '(orderless basic)))

(use-package consult
:ensure t
:bind (("M-s M-g" . consult-grep)
      ("M-s M-f" . consult-find)
      ("M-s M-o" . consult-outline)
      ("M-s M-l" . consult-line)
      ("M-s M-b" . consult-buffer)))

(use-package embark
  :ensure t
  :bind (("C-." . embark-act)
	 :map minibuffer-local-map
	 ("C-c C-c" . embark-collect)
	 ("C-c C-e" . embark-export)))

(use-package embark-consult
  :ensure t)

(use-package wgrep
  :ensure t
  :bind ( :map grep-mode-map
	  ("e" . wgrep-change-towgrep-mode)
	  ("C-x C-q" . wgrep-change-to-wgrep-mode)
	  ("C-c C-c" . wgrep-finish-edit)))

(savehist-mode 1)
(recentf-mode 1)

(when (display-graphic-p)
(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)))

;; ------------------------
;; Project management
;; ------------------------
(use-package projectile
:ensure t
:config
(projectile-mode +1)
:bind-keymap
("C-c p" . projectile-command-map))

(use-package nerd-icons-dired
  :ensure t
  :hook
  ((dired-mode . nerd-icons-dired-mode)
   (dired-mode . dired-omit-mode))
  :bind (:map dired-mode-map
	      ("h" . dired-omit-mode))
  :config
  (setq dired-omit-files "^\\.[^.].*"))

(use-package org
  :ensure nil
  :config
  ;; Add zig org babell extension to be supported on source code blocks
  (add-to-list 'load-path "~/.config/emacs/lisp/ob-zig")
  (require 'ob-zig)
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (zig . t )))
  
  ;; Add shortcult for inserting templates as well as adding new templates
  (require 'org-tempo)
  (add-to-list 'org-structure-template-alist '("p" . "src python"))
  (add-to-list 'org-structure-template-alist '("sh" . "src shell"))
  (add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
  (add-to-list 'org-structure-template-alist '("z" . "src zig")))

(use-package emacs
  :config
  (fset 'yes-or-no-p 'y-or-n-p))

;; Automaticall revert all buffers when the file changes on disk
(global-auto-revert-mode 1)

;; Optional: silent , don't show messages
(setq auto-revert-verbose nil)
