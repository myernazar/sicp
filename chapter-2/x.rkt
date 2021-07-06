#lang sicp
(define (accumulate term num items)
  (if (null? items)
      num
      (term (car items) (accumulate term num (cdr items)))))

(define (map p sequence)
  (accumulate (lambda (x y)
                (cons (p x) y)) nil sequence))

(define (append seq1 seq2)
  (accumulate cons seq1 seq2))

(define (length sequence)
  (accumulate (lambda(x y)(+ y 1)) 0 sequence))

;(map (lambda(x)(+ x 1)) '(1 2 3))
;(append '(4 5 6) '(1 2 3))
(length '(1 2 3))