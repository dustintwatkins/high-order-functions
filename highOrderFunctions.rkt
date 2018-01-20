#lang racket

(define (convertFC temps)
  (map (lambda (t) (* (- t 32) (/ 5 9)))
       temps))

(define (check-temps1 lst ) true)

(define (check-temps lst ) true)

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

(define (eliminate-larger lst ) true)

(define (curry2 x)
  (lambda (x) (lambda (y) (func x y)))
  )