#lang sicp
;; Unlike other languages Scheme allows user
;; to retrieve operators as values
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 10 10)
(a-plus-abs-b 10 0)
(a-plus-abs-b 10 -10)