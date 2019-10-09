(define (sum a b next term)
  (if (> a b)
      0
      (+ (term a) (sum (next a) b next term)))
  )


; Sum of natural numbers
(define (identity x) x)

(define (inc x) (+ x 1))

(sum 1 10 inc identity)


; Sum of squares of natural numbers
(define (square x) (* x x))

(sum 1 5 inc square)
