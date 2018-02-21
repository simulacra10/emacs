;; My custom definitions. I like to keep them in seperate file 29-12-2009

;; 2018-02-21 - removed contacts as that is no longer used 
(defun dotemacs ()
  (interactive)
  (find-file "~/.emacs/init.el")
)

(defun org-journal ()
  (interactive)
  (find-file "~/MEGA/journal/journal.txt.gpg")
)

(defun org-gtd ()
  (interactive)
  (find-file "~/MEGA/journal/gtd.txt.gpg")
)

