;; ==============================================================================
;; MELPA
;; ==============================================================================

(require 'package)

(setq package-list '(auctex
		     material-theme
		     duplicate-thing))

(setq package-archives '(("melpa-stable" . "https://stable.melpa.org/packages/")
			 ("melpa" . "https://melpa.org/packages")
			 ("elpa" . "http://tromey.com/elpa/")
			 ("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")))

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
