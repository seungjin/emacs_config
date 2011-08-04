

;;;Clearing Shell Mode Output
;;;;;http://www.emacswiki.org/emacs/ShellMode#toc11


(defun clear-shell ()
  (interactive)
       (let ((old-max comint-buffer-maximum-size))
	       (setq comint-buffer-maximum-size 0)
	            (comint-truncate-buffer)
		         (setq comint-buffer-maximum-size old-max))) 

