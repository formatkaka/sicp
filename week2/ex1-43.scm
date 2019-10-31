(define (compose f g)
  (lambda (x) (f (g x)))
  )

(define (repeated g f num)
  (if (= num 1)
      (lambda (x) (g x))
      (repeated (compose g f) f (- num 1))
      )
  )


(define (square x)
  (* x x)
  )
