; Conditionals 

 (define (abs x)
   (cond ((> x 0) x)
         ((= x 0) 0)
   		((< x 0) (- 0 x))))	

; if else
(define (mod x)
  (cond ((>= x 0) 1)
        (else -1)))

; ternary
(define (grade g)
  (if (< g 8)
      'bad
      'good))
