(define (abs x)
    (cond ((< x 0) (- x))
          (else x)))

(define (square x)
    (* x x))

(define (average x y)
    (/ (+ x y) 2))

(define (sqrt x) 
    (define (good-enough? x0) 
        (< (abs (- (square x0) x)) 
           0.000001)) 
    (define (improve x0)
        (average x0 (/ x x0)))
    (define (sqrt-iter x0)
        (if (good-enough? x0)
            x0
            (sqrt-iter (improve x0))))
    (sqrt-iter 1.0))

(sqrt 9)
