#lang sicp
;; Scheme used AOE, it evaluates all values and then runs procedure.
;; If it has infinite loop, it will always looped, even it should not be evaluated.  
;; return same function as value 
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; to see what will be if normal order was used
(test 0 p)

;; to see what will be if applicative order was used
(test 0 (p))