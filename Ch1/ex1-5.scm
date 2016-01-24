;;; SICP Exercise 1.5 Solution
;;; Written by Christopher McIntyre (chrsintyre)
;;;
;;; Improve the sqrt-iter procedure.
;;;

(define
  (sqrt x)
  (sqrt-iter 1 x)
)

(define
  (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
               x))
)

(define
  (good-enough? guess x)
  (< (abs (- (improve guess x) guess))
     (* guess .0001))
)

(define
  (improve guess x)
  (average guess (/ x guess))
)

(define
  (average x y)
  (/ (+ x y) 2)
)

(define
  (square x)
    (* x x)
)
