(require 'package)

;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(require 'use-package-ensure)
(setopt use-package-always-ensure t)

(menu-bar-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(column-number-mode 1)
(blink-cursor-mode 0)
(global-hl-line-mode 1)
(electric-pair-mode 1)
(electric-quote-mode 1)
(save-place-mode 1)

(setopt indent-tabs-mode nil
        fill-column 80
        tab-width 4)

(setq inhibit-startup-screen t
      help-window-select t
      sentence-end-double-space nil
      x-stretch-cursor t
      backup-by-copying t
      backup-directory-alist `(("." . ,(concat user-emacs-directory
                                               ".backups"))))

(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))
(global-unset-key (kbd "<pinch>"))

(use-package atom-one-dark-theme)

(use-package helm
  :bind (("M-x" . 'helm-M-x)
		 ("C-x b" . helm-buffers-list)
		 ("C-x C-f" . helm-find-files))
  :config (setopt helm-split-window-inside-p t))

(use-package helm-projectile
  :defer
  :bind ("C-x p f" . helm-projectile-find-file))

(use-package magit :defer)

(use-package project
  :commands project-find-functions
  :config
  (defun project-find-go-module (dir)
  (when-let ((root (locate-dominating-file dir "go.mod")))
    (cons 'go-module root)))
  (cl-defmethod project-root ((project (head go-module)))
    (cdr project))
  (add-hook 'project-find-functions #'project-find-go-module))

;; https://github.com/golang/tools/blob/master/gopls/doc/emacs.md
(use-package go-mode
  :defer
  :hook (go-mode . eglot-ensure)
  :hook (go-mode . display-line-numbers-mode)
  :config
  (defun eglot-format-buffer-on-save ()
    (add-hook 'before-save-hook #'eglot-format-buffer -10 t))
  (add-hook 'go-mode-hook #'eglot-format-buffer-on-save))

(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file)

;; https://git.sr.ht/~technomancy/better-defaults
;; https://stackoverflow.com/questions/151945/how-do-i-control-how-emacs-makes-backup-files
;; https://github.com/dustacio/better-defaults/blob/master/better-defaults.el
;; https://github.com/angrybacon/dotemacs
;; https://github.com/KaratasFurkan/.emacs.d
