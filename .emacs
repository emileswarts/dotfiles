
(put 'set-goal-column 'disabled nil)
(setq backup-directory-alist '(("." . ".~")))

(defun google ()
  "Google the selected region if any, display a query prompt otherwise"
  (interactive)
  (browse-url
   (concat
    "http://www.google.com/search?ie=utf-8&oe=utf-8&q="
    (url-hexify-string (if mark-active
			   (buffer-substring (region-beginning) (region-end))
			 (read-string "Google: "))))))
(global-set-key (kbd "C-c g") 'google)

(defun copy-file-to-clipboard ()
  "Copy the current file name to the clipboard."
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
		      default-directory
		    (buffer-file-name))))
  (when filename
    (kill-new filename)
    (message "Copied buffer file name '%s' to the clipboard." filename))))
