#lang sicp
(define (cube-root guess x)
  (if (good-enough? guess x)
      guess
      (cube-root (improve guess x) x)))

(define (cube guess)
  (* guess guess guess))

(define (good-enough? guess x)
  (< (abs (- x (cube guess))) 0.01))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(cube-root 1.0 8)