(require 'package)
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

;; projectile
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)

;; grizzl
(setq *grizzl-read-max-results* 7)

;; neotree
(setq projectile-switch-project-action 'neotree-projectile-action)

;; smartparens
(smartparens-global-mode t)

(global-set-key (kbd "C-v")
		(lambda () (interactive) (next-line 5)))

(global-set-key (kbd "M-v")
		(lambda () (interactive) (previous-line 5)))

;; highligh current line
(global-hl-line-mode 1)

(setq fci-rule-width 1)
(setq fci-rule-color "#59606F")
(setq fci-rule-column 120)
(add-hook 'js-mode-hook 'fci-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (atom-one-dark)))
 '(custom-safe-themes
   (quote
    ("91faf348ce7c8aa9ec8e2b3885394263da98ace3defb23f07e0ba0a76d427d46" default)))
 '(global-linum-mode t)
 '(global-visual-line-mode nil)
 '(line-number-mode t)
 '(line-spacing 0.2)
 '(menu-bar-mode nil)
 '(projectile-global-mode t)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(truncate-lines t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#282C34" :foreground "#ABB2BF" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "nil" :family "Source Code Pro")))))
