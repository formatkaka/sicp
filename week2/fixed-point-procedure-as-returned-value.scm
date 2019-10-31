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

(define (average-damp f)
  (lambda(x) (average x (f x)))
)

; concept of closure also coming in this !
(define (sqrt x)
  (fixed-point (average-damp (lambda (y) (/ x y)))
	       1.0)
  )


;cube root

(define (square x)
  (* x x))

(define (cube-root x)
  (fixed-point (average-damp (lambda (y) (/ x (square y))))
	       1.0)
  )



