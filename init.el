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
