#lang racket
(define (sum_max2 a b c)
  (cond ((and (> a b)(> c b))(+ a c))
        ((and (> a c)(> b c))(+ a b))
        ((and (> b a)(> c a))(+ b c))))
(sum_max2 1 2 3)
                 
