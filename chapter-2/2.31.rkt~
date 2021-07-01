#lang sicp
; SICP 2.30

;Helper
(define (square x)(* x x))

; Recursive, wo HOP
(define (square-tree-rec tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (square tree))
        (else (cons (square-tree-rec (car tree))
                    (square-tree-rec (cdr tree))))))

; with HOP
(define (square-tree-hop tree)
  (map
   (lambda(sub-tree)
      (if (pair? sub-tree)
          (square-tree-hop sub-tree)
          (square sub-tree)))
           tree))

; Call
(square-tree-rec
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))

(square-tree-hop
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))