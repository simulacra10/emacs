;;2018-02-21
;;emacs init.el - Norman V. Bauer
;; Wye Oak Information Systems
;;
;;
;;
;; I have decided to start from scratch with emacs 25 and finally host this on GitHub. I use emacs-nox so somethings may act different with Xemacs or emacs-gui
;;
;;
;;[backups configuration]
;; we like them, but we don't like them cluttering the filesystem up so we will add backups to the .saves directory

(setq backup-directory-alist `(("." . "~/.saves"))) 

;; Since all backups are now in the .saves directory, we can set up the frequency. 
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

;;[start up]
;; Get rid of the annoying splash screen

(setq inhibit-startup-screen t)

;;My custom definitions file - stored in directory /elisp/
(load-file "~/custom-defs/custom-defs.el")

;; [theme related stuff]
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("e9df267a1c808451735f2958730a30892d9a2ad6879fb2ae0b939a29ebf31b63" default)))
 '(package-selected-packages (quote (markdown-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load-theme 'monokai t)
;; Kill the menu bar, scroll bar and the toolbar if using GUI version.
;;(menu-bar-mode -1)
;(tool-bar-mode -1)
;;(toggle-scroll-bar -1)
;; Gotta have visual line mode on globally
(global-visual-line-mode t)

;;installs markdown-mode and configures it to load when markdown files are opened.
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
