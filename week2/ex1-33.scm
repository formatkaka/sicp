(define (filtered-accumulate op default-val filter a b next term)
  (if (filter a b)
      0
      (op (term a)
	  	  (filtered-accumulate op default-val filter (next a) b next term))
      )
  )


; sum of n natural prime numbers
(define (prime? x div)

   (cond
    ((= div x) true)
    ((= (modulo x div) 0) false)
    (else (prime? x (+ div 1)))
    )
   
)

(define (primeFilter a b)
  (if (> a b)
      false
      (prime? a 2))
)

(define (inc x) (+ x 1))

(define (identity x) x)

(filtered-accumulate + 0 primeFilter 3 10 inc identity)
