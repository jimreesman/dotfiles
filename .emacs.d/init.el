
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(package-initialize)

(mapc 'load (directory-files "~/.emacs.d/lib/" t "\.el$"))

(ido-mode t)
(require 'smex)
(smex-initialize)

(bind-key "M-x" 'smex)
(bind-key "M-N" 'windmove-right)
(bind-key "M-P" 'windmove-left)

(bind-key "C-x C-f" 'lusty-file-explorer)

(require 'lusty-explorer)

(menu-bar-mode -1)
(setq inhibit-startup-message t)
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(package-selected-packages
;;    (quote
;;     (xref-js2 js2-refactor js2-mode solarized-theme smex bind-key))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;; (autoload 'js2-mode "js2" nil t) (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; (require 'js2-refactor)
;; (require 'xref-js2)

;; (add-hook 'js2-mode-hook #'js2-refactor-mode)
;; (js2r-add-keybindings-with-prefix "C-c C-r")
;; (define-key js2-mode-map (kbd "C-k") #'js2r-kill)

;; ;; js-mode (which js2 is based on) binds "M-." which conflicts with xref, so
;; ;; unbind it.
;; (define-key js-mode-map (kbd "M-.") nil)

;; (add-hook 'js2-mode-hook (lambda ()
;; 			   (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (xref-js2 solarized-theme smex js2-refactor bind-key))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
