;; http://stackoverflow.com/questions/251908/how-can-i-insert-current-date-and-time-into-a-file-using-emacs
;;

;;
(defvar current-date-time-format "%a %b %d %H:%M:%S %Z %Y"
  "Format of date to insert with `insert-current-date-time' func
See help of `format-time-string' for possible replacements")

;; insert current date time into bufffer/file
(defun insert-current-date-time ()
  "insert the current date and time into current buffer.
Uses `current-date-time-format' for the formatting the date/time."
       (interactive)
       (insert "\n(")
;       (insert (let () (comment-start)))
       (insert (format-time-string current-date-time-format (current-time)))
       (insert ")\n")
       )


