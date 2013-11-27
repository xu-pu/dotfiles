;;===============================
;; System initial configuration
;;===============================
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; set ibus-el
;; (add-to-list 'load-path "~/.emacs.d/ibus-el-0.3.2")
;; (require 'ibus)
;; (add-hook 'after-init-hook 'ibus-mode-on)

;; set line number display
;; (global-linum-mode 1) ; always show line numbers                              

(setq make-backup-files nil)

;;=======================
;; Package configuration
;;=======================

(add-to-list 'load-path "~/.emacs.d")

;; add package server for 24+
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t))

;; plugins
(require 'tree-mode)
(require 'windata)
(require 'dirtree)
(require 'color-theme)
(require 'highlight-symbol)
(require 'ecb)
(require 'ecb-autoloads)
(require 'generic-x)
(require 'auto-complete)

;;===============
;; Key bindings
;;===============
(global-set-key (kbd "C-x <up>") 'shrink-window)
(global-set-key (kbd "C-x <down>") 'enlarge-window)
(global-set-key (kbd "C-x <left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-x <right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-d") 'dirtree)
(global-set-key (kbd "C-b") 'ibuffer)
;;(global-set-key (kbd "C-c C-c") 'comment-region)
;;(global-set-key (kbd "C-u") 'uncomment-region)


;;=============
;; Hook setups
;;=============

;; universal programming environment
(global-auto-complete-mode t)

;; python environment
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)

;; vhdl environment
(add-hook 'vhdl-mode-hook 'auto-complete-mode)
