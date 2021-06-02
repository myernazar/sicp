#lang sicp
(define (sum-square a b)
  (+ (* a a)(* b b)))

(define (sum-largest-square a b c)
  (cond ((and (> a b)(> b c))(sum-square a b))
        ((and (> a b)(> c b))(sum-square a c))
        ((and (> b a)(> c a))(sum-square b c))))

(sum-largest-square 3 4 5)