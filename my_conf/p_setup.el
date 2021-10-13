(provide 'p_setup)



;; ====================================================================
;; Indentation
;; ====================================================================

(setq custom-tab-width 2)
(setq-default indent-tabs-mode nil)
(setq tab-width 2)

(setq-default python-indent-offset custom-tab-width)
(setq-default js-indent-level custom-tab-width)




;; =====================================================================
;; Graphics
;; =====================================================================

(setq inhibit-startup-message t)
(load-theme 'material t)
(global-linum-mode t)
(setq linum-format "%4d \u2502 ")





;; =====================================================================
;; Utility
;; =====================================================================

(require 'duplicate-thing)
