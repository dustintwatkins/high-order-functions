#lang racket


(define (default-parms f values)
  (lambda params
    (if (< (length params) (length values))
        (apply f ( append params (list-tail values (length params))))
        (apply f params)))
  );end function

(define (type-parms f types)
  (lambda params
         (if (check-types types params)
             (apply f params)
             (error "ERROR! INVALID ARGUMET"));end if
         );end lambda         
  );end function

(define (check-types types params)
  (if(empty? types) true
     (if ((first types) (first params)) (check-types (rest types) (rest params))
                                       (error "ERROR! INVALID ARGUMET")))
  );end function


(define (degrees-to-radians angle)
  (* (/ angle 180) pi)
  )

(define (new-sin angle type)
  (if (symbol=? type 'degrees)
      (sin (degrees-to-radians angle))
      (sin angle)))

(define new-sin2
  (default-parms
    (type-parms new-sin (list number? symbol?))
    (list 0 'radians)))
