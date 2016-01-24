;;; SICP Exercise 1.2 Solution
;;; Written by Christopher McIntyre (chrsintyre)
;;;
;;; Define a procedure which takes three numbers as arguments and returns the 
;;; sum of the squares of the two largest numbers.
;;;

(define
  (square x)
    (* x x)
)

(define
  (sum-of-squares x y)
    (+ (square x) (square y))
)

(define
  (larger x y)
    (if (> x y) x y)
)

(define
  (largest-two-squares-sum x y z)
    (if (= x (larger x y))
      (sum-of-squares x (larger y z))
      (sum-of-squares y (larger x z))
    )
)
