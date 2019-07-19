(define (p) (p))

(define (test x y) 
  (if (= x 0) 
      0 
      y))

; (test 0 (p))
; because lisp/scheme is applicative order, 
; it will try to evaluate p , the second argument when we invoke test
; since, p cannot be resolved because of it's function definition
; the program will run infinitely long trying to resolve p, and thus not terminate

; reference - https://cs.stackexchange.com/a/40765/55483