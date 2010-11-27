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

(defun mult_grid (n)
  "create an n-by-n multiplication grid"
  (interactive "nHow big?")
  (with-temp-buffer 
    (let ((i 1))
      (while (< i (1+ n))
	 (loop for var from 1 to n
	       do (princ (format "%4d" (* i var))))
	 (terpri)
	(setq i (1+ i))
	)
      ))
(terpri))
(mult_grid 12)

(defun fib (n)
  "fibonacci series up to n"
  (interactive "nEnter Level: ")
  (if (< n 2)
      n
    (+ (fib (- n 1)) (fib (- n 2)))))
(fib 30)

(defun multi_grid ()
  (mapcar '* '(1 2 3 4 5 6) '(1 2 3 4 5 6)))
(multi_grid)

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