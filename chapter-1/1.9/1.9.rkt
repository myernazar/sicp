#lang sicp
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

(+ 4 5)
;; Recursive: Output 9
; (inc (+ (dec 4) 5))
; (inc (+ 3 5))
; (inc (inc (+ (dec 3) 5)))
; (inc (inc (+ 2 5)))
; (inc (inc (inc (+ (dec 2) 5))))
; (inc (inc (inc (+ 1 5))))
; (inc (inc (inc (inc (+ (dec 1) 5)))))
; (inc (inc (inc (inc (+ 0 5))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9

(define (a+ a b)
  (if (= a 0)
      b
      (a+ (dec a)(inc b))))

(+ 4 5)
;; Iterative: Output 9

; (a+ (dec 4)(inc 5))
; (a+ 3 6)
; (a+ (dec 3)(inc 6))
; (a+ 2 7)
; (a+ (dec 2)(inc 7))
; (a+ 1 8)
; (a+ (dec 1)(inc 8))
; (a+ 0 9)
; 9
