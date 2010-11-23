;; grade1.el enter number between 0 and 5 and it returns a grade 
;; 
;;   PYTHON version
;; def main():
;;     print "Grade Report: enter number between 5-0 and returns a letter grade"
;;     print 
;;     grade_letters = ["F","F","D","C","B","A"]
;;     grade_num = raw_input("Please enter a grade from 0-5: ")
;;     grade_num = eval(grade_num)
;;     if grade_num > 5 or grade_num < 0:
;;         print "You failed!"
;;     else:
;;         print "Grade is %s" % (grade_letters[grade_num])


(defun grade (num) 
  "returns the grade for a number passed in."
  (interactive "nEnter score (0 to 5): ")
  (let ((grades '(?f ?f ?d ?c ?b ?a)))
    (message "Here's your grade: %c!" (upcase(nth num grades)))
    ))