(define (sqrt x) 
    (sqrt-iter 1.0 x))

(define (sqrt-iter x0 x)
    (if (good-enough? x0 x)
        x0
        (sqrt-iter (improve x0 x) 
                    x)))

(define (good-enough? x0 x) 
    (< (abs (- (square x0) x)) 0.000001)) 

(define (improve x0 x)
    (average x0 (/ x x0)))

(define (abs x)
    (cond ((< x 0) (- x))
          (else x)))

(define (square x)
    (* x x))

(define (average x y)
    (/ (+ x y) 2))

(sqrt 2)
