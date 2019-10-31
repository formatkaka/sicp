(define (every f sentence)
  (if (null? sentence)
      '()
      (cons (f (car sentence))
	    (every f (cdr sentence)))
      )
  )

(define (square x)
  (* x x)
  )

