#lang sicp
(define (pascal c r)
  (if (or (= c 1)(= r 1)(= r c))
       1
        (+
         (pascal c (- r 1))
         (pascal (- c 1)(- r 1)))))

(pascal 1 1)
(pascal 1 2)
(pascal 2 2)
(pascal 2 1)
(pascal 2 3)