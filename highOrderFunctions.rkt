#lang racket

(define (convertFC temps)
  (map (lambda (t) (* (- t 32) (/ 5 9)))
       temps))

(define (check-temps1 lst )
  (check-temps lst 5 95)
  )

(define (check-temps lst low high )
  (if (empty? lst) true
      (andmap (lambda (x) (and (> x (- low 1)) (< x (+ high 1)))) lst))
  )

(define (convert lst )
  (foldr (lambda (x y) (+ x (* y 10))) 0 lst)
  )

(define (duple lst)
  (map (lambda (x) (list x x)) lst)
  )

(define (average lst)
  (if (empty? lst) 0
      (/ (foldr + 0 lst) (length lst))
      )
  )

(define (eliminate-larger lst )
  ( if(empty? lst) empty
                 (if (empty? (filter (lambda (x) (< x (first lst))) (rest lst)))
                     (cons (first lst) (eliminate-larger (rest lst)))
                     (eliminate-larger (rest lst))))
   )

(define (curry2 function)
  (lambda (x) (lambda (y) (function x y)))
  )
 
