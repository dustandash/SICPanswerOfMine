#lang racket
(define (fast-expt b n)
  (iter b n 1))
(define (iter b n a)
  (cond ((= n 0) a)
        ((even? n) (iter (square b) (/ n 2) a))
        ((odd? n) (iter b (- n 1) (* a b)))))
(define (square x) (* x x))
