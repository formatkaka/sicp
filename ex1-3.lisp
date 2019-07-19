(define (sos n1 n2)
  (+ (* n1 n1) (* n2 n2)))

(define (squareOf2 x y z)
  (cond ((and (< x y) (< x z)) (sos y z))
        ((and (< y x) (< y z)) (sos x z))
        ((and (< z y) (< z x)) (sos x y))))