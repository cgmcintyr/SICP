;;; SICP Exercise 1.6 Solution
;;; Written by Christopher McIntyre (chrsintyre)
;;;
;;; Implement a cube-root procedure using newton's method. 
;;;

(define
  (cubert x)
  (cubert-iter 1 2 x)
)

(define
  (cubert-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
    guess
    (cubert-iter (improve guess x)
                 guess
                 x))
)

(define
  (good-enough? guess prev-guess)
  (< (abs (- guess prev-guess))
     (abs (* guess .001)))
)

(define
  (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3)
)

(define
  (square x)
  (* x x)
)

(define
  (cube x)
  (* x x x)
)
