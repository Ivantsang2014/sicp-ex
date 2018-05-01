(define (largers-sum x y z)
    (cond ((= (three-min x y z) x) (+ y z))
          ((= (three-min x y z) y) (+ x z))
          ((= (three-min x y z) z) (+ x y))))

(define (three-min x y z)
    (two-min x (two-min y z)))

(define (two-min x y)
    (if (< x y) 
        x 
        y))

(two-min 1 3)

(three-min 3 9 4)

(largers-sum 1 3 5)

(largers-sum 8 3 91)
