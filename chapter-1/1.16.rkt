#lang sicp
(define (exp-log base counter product)
  (cond ((= counter 0) 1)
        ((even? counter) (square (exp-log base (/ counter 2) (* product base))))
        (else (* base (exp-log base (- counter 1)(* base product))))))

(define (square b)(* b b))

(exp-log 2 4 1) 
(exp-log 4 0 1) 
(exp-log 5 1 1) 
(exp-log 7 10 1) 
  