#lang sicp
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

(define (square x)
  (* x x))
;; Calling this function leads to infinite loop,
;; as it was wrapped as function new-if
;(define (sqrt-iter guess x)
;  (new-if (good-enough? guess x)
;          guess
;          (sqrt-iter (improve guess x) x)))

;; If & Cond clauses evaluate the procedure by Normal Eval Order
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
       guess
       (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs(- x (square guess))) 0.01))

(define (average a b)
  (/ (+ a b) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(sqrt-iter 0.1 2.0)