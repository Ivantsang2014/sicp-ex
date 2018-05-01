(define (abs-cond x)
    (cond ((< x 0) (- x))
          ((= x 0) 0)
          ((> x 0) x)))

(define (abs-else x)
    (cond ((< x 0) (- x))
          (else x)))

(define (abs-if x)
    (if (< x 0)
        (- x)
        x))

(abs-cond 1)
(abs-cond 0)
(abs-cond -1)


(abs-else 1)
(abs-else 0)
(abs-else -1)

(abs-if 1)
(abs-if 0)
(abs-if -1)
