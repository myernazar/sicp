#lang sicp
(define (double x)(+ x x))
(define (half x)(/ x 2))

(define (x* a b)
  (if (= b 0)
      ((even? a)(double (x* (a (half b)))))
      (+ a (* a (- b 1)))))

(x* 2 3)