(define (foo x y)
  (let ((a (+ x y))
	(b (* x y)))

    (+ a b)
    )
  )


; cannot use variable a for next variable declaration
; let expression is an alternative syntax for

; ((lambda (var1 var2 ... var_n)
;          (body)
;   (exp1)
;   (exp2)
;   .
;   .
;   .
;   (exp_n)

(define (bar x y)
  (let ((a (+ x y))
	(b (* a y)))

    (+ a b)
    )
  )


; let* works by defining nested let scopes
; each variable is defined as new let in the let of previous variable
(define (baz x y)
  (let* ((a (+ x y))
	(b (* a y)))

    (+ a b)
    )
  )



    
