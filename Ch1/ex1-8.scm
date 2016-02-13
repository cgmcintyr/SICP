;;; SICP Exercise 1.8 Solution
;;; Written by Christopher McIntyre (chrsintyre)
;;;
;;; Analysis of the Ackerman function
;;;

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;;;
;;; (A 1 10)
;;; (A 0 (A 1 9))
;;; (A 0 (A 0 (A 1 8)))
;;; (A 0 (A 0 (A 0 (A 1 7))))
;;; (A 0 (A 0 (A 0 (A 0 (A 1 6)))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 5))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 4)))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 3))))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 2)))))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (2))))))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (4)))))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (8))))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (16)))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (32))))))
;;; (A 0 (A 0 (A 0 (A 0 (64)))))
;;; (A 0 (A 0 (A 0 (128))))
;;; (A 0 (A 0 (256)))
;;; (A 0 (512))
;;; 1024
;;;

;;;
;;; (A 2 4)
;;; (A 1 (A 2 3))
;;; (A 1 (A 1 (A 2 2)))
;;; (A 1 (A 1 (A 1 (A 2 1))))
;;; (A 1 (A 1 (A 1 2)))
;;; (A 1 (A 1 (A 0 (A 1 1))))
;;; (A 1 (A 1 (A 0 2))))
;;; (A 1 (A 1 4))))
;;; (A 1 (A 0 (A 1 3)))
;;; (A 1 (A 0 (A 0 (A 1 2))))
;;; (A 1 (A 0 (A 0 (A 0 (A 1 1)))))
;;; (A 1 (A 0 (A 0 (A 0 2))))
;;; (A 1 (A 0 (A 0 4)))
;;; (A 1 (A 0 8))
;;; (A 1 16)
;;; (A 0 (A 1 15))
;;; (A 0 (A 0 (A 1 14)))
;;; (A 0 (A 0 (A 0 (A 1 13))))
;;; (A 0 (A 0 (A 0 (A 0 (A 1 12)))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 11))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 10)))))))
;;; ...
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2))))))))))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4))))))))))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8))))))))))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 16))))))))))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 32))))))))))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 64))))))))))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 128))))))))))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 256))))))))))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 512))))))))))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 1024))))))))))))))
;;; (A 0 (A 0 (A 0 (A 0 (A 0 2048))))))))))))))
;;; (A 0 (A 0 (A 0 (A 0 4096))))))))))))))
;;; (A 0 (A 0 (A 0 8192))))))))))))))
;;; (A 0 (A 0 16384))))))))))))))
;;; (A 0 32768))))))))))))))
;;; 65536
;;;

;;;
;;; (define (f n) (A 0 n))
;;;
;;; let N+ be the set of all non-zero positive integers
;;;
;;; The function f: N+ -> N+ defined by f(n) = 2n
;;;

;;;
;;; (define (g n) (A 1 n))
;;;
;;; let N+ be the set of all non-zero positive integers
;;;
;;; The function f: N+ -> N+ defined by g(n) = 2^n
;;;

;;;
;;; (define (h n) (A 2 n))
;;;
;;; let N+ be the set of all non-zero positive integers
;;;
;;; The function f: N+ -> N+ defined by h(n) = 2^2^2^... n times
;;;
