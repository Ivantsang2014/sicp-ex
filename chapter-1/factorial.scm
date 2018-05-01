(define (factorial1 n)
    (if (= n 1)
        1
        (* n (factorial1 (- n 1)))))

(define (factorial2 n)
    (factorial-iter 1 1 n))

(define (factorial-iter product count max-count)
    (if (> count max-count)
        product
        (factorial-iter (* count product)
                        (+ count 1)
                        max-count)))

(factorial1 5)
(factorial2 5)
