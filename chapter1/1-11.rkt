#lang sicp

(#%require rackunit)


(define (tree-f n)
  (if (< n 3)
        n
        (+
         (tree-f (- n 1))
         (tree-f (- n 2))
         (tree-f (- n 3)))))


(check-equal? (tree-f 4) 6)


(define (line-f n)
  (f-iter n n))

(define (f-iter n count)
    (if (<= count 3)
        n
        (f-iter (+ (- n 1) (- n 2) (- n 3))
                (- count 1))))


(check-equal? (line-f 4) 6)
