;; .emacs


(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(auth-source-save-behavior nil)
 '(csv-align-max-width 10)
 '(csv-align-style 'auto)
 '(custom-enabled-themes '(wombat))
 '(diff-switches "-u")
 '(dired-listing-switches "-alh")
 '(dired-use-ls-dired t)
 '(global-auto-revert-mode t)
 '(global-display-line-numbers-mode t)
 '(global-visual-line-mode t)
 '(inhibit-startup-screen t)
 '(org-agenda-files '("~/Sync/occlear/master.org"))
 '(package-selected-packages
   '(rust-mode sparql-mode dictionary csv-mode auctex markdown-mode elpy polymode poly-R csv-mode wrap-region docker-tramp dockerfile-mode stan-mode sparql-mode))
 '(save-place-mode t))
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))


; Flash on error
(setq visible-bell t)

; Add newline with C-n at end of buffer
(setq next-line-add-newlines t)

;; Automatically install packages of not already present
(unless package-archive-contents
  (package-refresh-contents))
(package-install-selected-packages)

;; Elpy options
(setq elpy-rpc-python-command "python3")
(setq python-shell-interpreter "python3")

;; Reftex
(require 'reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

(setq reftex-cite-format
      '(
        (?\C-m . "\\cite[]{%l}")
        (?t . "\\textcite{%l}")
        (?a . "\\autocite[]{%l}")
        (?p . "\\parencite{%l}")
        (?f . "\\footcite[][]{%l}")
        (?F . "\\fullcite[]{%l}")
        (?P . "[@%l]")
        (?T . "@%l [p. ]")
        (?x . "[]{%l}")
        (?X . "{%l}")
        ))

(setq font-latex-match-reference-keywords
      '(("cite" "[{")
        ("cites" "[{}]")
        ("footcite" "[{")
        ("footcites" "[{")
        ("parencite" "[{")
        ("textcite" "[{")
        ("fullcite" "[{") 
        ("citetitle" "[{") 
        ("citetitles" "[{") 
        ("headlessfullcite" "[{")))


;; Company Mode
;(add-hook 'after-init-hook 'global-company-mode)
;(setq ess-use-company t)
 	
;; AucTeX Options
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(add-hook 'LaTeX-mode-hook 'prettify-symbols-mode)


;; poly-R Options
(require 'poly-R)
;; this works but god knows why
(add-to-list 'auto-mode-alist '("de\\..Rmd" . poly-R))


;; Dictionary Options
(setq dictionary-server "localhost")


;; sparql-mode Options
(autoload 'sparql-mode "sparql-mode.el"
    "Major mode for editing SPARQL files" t)
(add-to-list 'auto-mode-alist '("\\.sparql$" . sparql-mode))
(add-to-list 'auto-mode-alist '("\\.rq$" . sparql-mode))




;; Custom Keybindings
(global-set-key (kbd "M-#") 'dictionary-lookup-definition)
(global-set-key [remap dabbrev-expand] 'hippie-expand)



;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
