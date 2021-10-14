;; ==============================================================================
;; MELPA
;; ==============================================================================

(require 'package)

(setq package-list '(auctex
		     material-theme
		     use-package
		     auto-complete
		     duplicate-thing))

(setq package-archives '(("melpa-stable" . "https://stable.melpa.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("elpa" . "http://tromey.com/elpa/")
			 ("gnu" . "http://elpa.gnu.org/packages/")
			 ;;			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ))

;; activate all packages (in particular autoloads)
(package-initialize)

(unless package-archive-contents (package-refresh-contents))
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


(require 'use-package)
(setq use-package-always-ensure t)

(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)



;; ===============================================================================
;; Load my configuration
;; ===============================================================================

(add-to-list 'load-path "~/.emacs.d/my_conf")

(require 'p_setup)
(require 'p_python)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (use-package material-theme auto-complete auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
