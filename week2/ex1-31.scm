(define (procedure a b next term)
  (if (> a b)
      1
      (* (term a)
	 (procedure (next a) b next term))
      )
  )


; calculating factorial

(define (inc x) (+ x 1))
(define (identity x) x)

(procedure 1 5 inc identity)

; calculate approximate value of pi

(define (inc x) (+ x 2))

(define (piTerm x)
  (/ (* x x) (* (- x 1) (+ x 1)))
)

(define (approxPi start end)
  (* (/ 8.0 3.0) (procedure start end inc piTerm))
)
