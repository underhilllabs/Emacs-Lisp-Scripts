;; # change counter: adds up the change in your pocket.
;; def main():
;;     print "This program counts the change in your pocket!"
;;     quarters = input("How many quarters do you have? ")
;;     dimes = input("Dimes? ")
;;     nickels = input("Nickels? ")
;;     pennies = input("Pennies? ")
;;     total = quarters * .25 + dimes * .10 + nickels *.05 + pennies *.01
;;     print "The total change adds up to $", total, "!"
;;

(defun count-change (quarters dimes nickels pennies)
  "adds up change in your pocket"
  (interactive "nHow many quarters? \nnDimes? \nnNickels? \nnand Pennies? ")
  (let (total)
    (setq total (+ (* .25 quarters) (* .10 dimes) (* .05 nickels) (* .01 pennies)))
    (message "You've got a total of $%.2f!" total)))