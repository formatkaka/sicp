(define (filtered-accumulate op default-val filter a b next term)
  
  (if (> a b)
      0
      (if (filter a b)
          (op 0 (filtered-accumulate op default-val filter (next a) b next term))
          (op (term a) (filtered-accumulate op default-val filter (next a) b next term))
      )
  )
)

; sum of n natural prime numbers
(define (prime? x div)

  (cond
    ((= x 1) false)
    ((= div x) true)
    ((= (modulo x div) 0) false)
    (else (prime? x (+ div 1)))
    )
   
)

(define (primeFilter a b)
  (if (prime? a 2)
      false
      true
  )
)

(define (inc x) (+ x 1))

(define (identity x) x)

(filtered-accumulate + 0 primeFilter 1 10 inc identity)


;; 3 - 10
;; SUM(3, 5, 7) = 15

