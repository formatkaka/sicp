(define tolerance 0.00001)

(define (close-enough? v1 v2)
  (< (abs (- v1 v2)) tolerance)
)

(define (try f guess)
  (let ((next (f guess)))
    (if (close-enough? guess next)
	next
	(try f next)
	)
    )
  )

(define (fixed-point f first-guess)
  (try f first-guess)
  )


; Square root using fixed-point procedure

(define (average a b)
  (/ (+ a b) 2)
  )

(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y)))
	       1.0)
)


