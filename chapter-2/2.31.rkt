#lang sicp
; SICP 2.30

;Helper
(define (square x)(* x x))

(define (square-tree tree)
  (tree-map-hop square tree))

; Recursive, wo HOP
(define (tree-map-rec term tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (term tree))
        (else (cons (tree-map-rec term (car tree))
                    (tree-map-rec term (cdr tree))))))

; with HOP
(define (tree-map-hop term tree)
  (map
   (lambda(sub-tree)
      (if (pair? sub-tree)
          (tree-map-hop term sub-tree)
          (term sub-tree)))
           tree))

; Call
(square-tree
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))
