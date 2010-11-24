(defun read-lines (fpath)
  "return a list of lines of a file"
  (with-temp-buffer 
    (insert-file-contents fpath)
    (split-string (buffer-string) "\n" t)))

(defun sum-file (fname)
  (let ((lines (read-lines fname))
	(total 0))
    (while lines
      (setq total (+ total (string-to-number (car lines))))
      (setq lines (cdr lines)))
    (message "total is %d" total)))
(sum-file "../numbers.txt")

(defun odd-nums (max)
  "print odd numbers from 1 to max"
  (let ((i 1))
    (while (< i max)
      (when (> (mod i 2) 0) (princ i))
      (setq i (1+ i)))))
(odd-nums 100)

(defun myreverse (str)
  "reverse string"
  (let ((rstr) (mystr)) 
    (setq mystr (string-to-list str))
    (while mystr
      (setq rstr (cons (pop mystr) rstr)))
    (apply 'string rstr)))
(myreverse "one ring")
 
		     
;; (defun sum-ints-file (fname)
;;   "Sum integers in a file, one integer per line"
;;   (interactive "sEnter file name: ")
;;   (let ((i 0) (total 0) (lines ""))
;; 	(setq lines (read-lines fname))
;; 	(while '(lines) 
;; 	  (set total (+ total (car lines)))
;; 	  (setq 'lines (cdr lines))))
;; (setq lines (read-lines "../numbers.txt"))
;; (setq total 0)
;; (defun sum-file ()
;;   ;;(setq lines (read-lines "../numbers.txt"))
;;   ;;(setq total 0)
;;     (while lines
;;       (setq total (+ total (string-to-number (car lines))))
;;       (setq lines (cdr lines)))
;;       (message "total is %d" total))
;; (sum-file)


;;(cadr lines)
;;(princ lines)
;;(setq total (+ (string-to-number 'lines)))