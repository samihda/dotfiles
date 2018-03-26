
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; (add-to-list 'package-archives
;; 	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(blink-cursor-mode nil)
 '(css-indent-offset 2)
 '(custom-enabled-themes (quote (atom-one-dark)))
 '(custom-safe-themes
   (quote
    ("59171e7f5270c0f8c28721bb96ae56d35f38a0d86da35eab4001aebbd99271a8" default)))
 '(electric-pair-mode t)
 '(electric-quote-mode t)
 '(fci-rule-color "#d0bf8f")
 '(fill-column 80)
 '(gc-cons-threshold 100000000)
 '(global-hl-line-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(js-indent-level 2)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (markdown-mode json-mode fill-column-indicator yaml-mode exec-path-from-shell flycheck helm-projectile magit atom-one-dark-theme)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-hook 'js-mode-hook 'linum-mode)
(add-hook 'js-mode-hook 'column-number-mode)
(add-hook 'js-mode-hook 'flycheck-mode)

(defun toggle-line-spacing ()
  "Toggles line-spacing value between 0 and 0.5"
  (interactive)
  (cond ((eq line-spacing nil)
         (setq line-spacing 0.5))
        ((= line-spacing 0)
         (setq line-spacing 0.5))
        (t
         (setq line-spacing 0))))

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x p f") 'helm-projectile-find-file)
(global-set-key (kbd "C-x t f") 'fci-mode)
(global-set-key (kbd "C-x g") 'magit-status)
