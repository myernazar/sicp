#lang sicp
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (count-leaves t)
  (accumulate + 0 (map
                   (lambda(t)
                     (cond ((null? t) 0)
                           ((pair? t)(count-leaves t))
                           (else 1)))
                           t)))

(count-leaves (list 1 (list 2 (list 3 4))))