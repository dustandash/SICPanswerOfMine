#lang racket
(define (pasca row col)
  (if (or (= row col) (= col 0))
      1
      (+ (pasca (- row 1) (- col 1)) (pasca (- row 1) col))))
      
