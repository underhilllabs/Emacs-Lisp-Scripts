;; exercise 1.3
(defun square (x) (* x x))
(defun sum-of-squares (x y) (+ (square x) (square y)))
;; is x <= y and z
(defun <=2 (x y z) 
  (and (or (< x y) (= x y)) 
       (or (< x z) (= x z))))

(defun <= (x y)
  (or (< x y) (= x y)))
(<= 3 22)

(defun sum-of-largest (x y z)  
  (cond ((<=2 x y z) (sum-of-squares y z))
        ((<=2 y x z) (sum-of-squares x z))
        ((<=2 z x y) (sum-of-squares x y))))
(sum-of-largest 13 2 3)

(defun a-plus-abs-b (a b)
  (if (< b 0) (- a b) (+ a b)))
(a-plus-abs-b 3 -2)

(defun abs (x) (if (< x 0) (- x) x))
(abs 1)
(defun sqrt-iter (guess x)
  (if (good-enough-p guess x)
      guess
    (sqrt-iter (improve guess x)
               x)))
(defun improve (guess x)
  (average guess (/ x guess)))
(defun average (x y)
  (/ (+ x y) 2.0))
(defun good-enough-p (guess x)
  (< (abs (- (square guess) x)) 0.001))

(sqrt-iter  1 2)
(defun sqrt (x) (sqrt-iter 1.0 x))
(sqrt 3)


;;; Cube Root
(defun cbrt-iter (guess x)
  (if (cube-good-enough-p guess x)
      guess
    (cbrt-iter (cube-improve guess x) 
               x)))
;;   x/y^2 + 2y
(defun cube-improve (guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
(defun cbrt (x) (cbrt-iter 1.0 x))
(defun cube (x) (* x x x))
(defun cube-good-enough-p (guess x)
  (< (abs (- (cube guess) x)) 0.001)) 
(cbrt 1000)

;;; 1.2 shape recursion procedures

;; linear recursive
(defun factorial (n)
  (if (= n 1)
      1
    (* n (factorial (- n 1)))))
(factorial 30)

;; linear iterative
(defun factorial (n)
  (defun iter (product counter)
    (if (> counter n)
        product
      (iter (* counter product)
            (+ counter 1))))
  (iter 1 1))
(factorial 30)

;; peano arithmetic
;; linear iterative version
(defun add (x y)
  (if (= x 0)
      y
    (add (1- x) (1+ y))))

(add 3 4)

;; peano 2
;;; linear recursive version
(defun add2 (x y)
  (if (= x 0)
      y
    (1+ (add2 (1- x) y))))
(add2 3 4)
;; shape
(+ 3 4)
(1+ (+ 2 4))
(1+ (1+ (+ 1 4)))
(1+ (1+ (1+ (+ 0 4))))
(1+ (1+ (1+ 4)))
(1+ (1+ 5))
(1+ 6)
7

(1- 3)

;; fibonacci
(defun fib (n) 
  (if (< n 2)
      n
    (+ (fib (- n 1)) (fib (- n 2)))))
(fib 25)

