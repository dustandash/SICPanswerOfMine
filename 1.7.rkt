#lang racket
(define (sqrt_iter guess x)
  (if (good_enough? guess x)
      guess
      (sqrt_iter (improve guess x)
                 x)))
(define (good_enough? guess x)
  (< (/ (abs (- guess (improve guess x))) guess) 0.00001))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average a b)
  (/ (+ a b) 2))
(define (sqrt x)
  (sqrt_iter 1 x))
(sqrt 900)
            
