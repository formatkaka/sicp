(define x 5)

(define (check-cond1 x)
  (display "checking condition 1\n")
  (= x 0)
)

(define z 5)

(define (check-cond2 y)
  (display "checking condition 2\n")
  (= y 5)
)


(define (check1 x y z)
  (or (check-cond1 x) (check-cond2 y) (= z 5))
)

					; If we execute (check1 0 5 5)
					; it returns

					; checking cond 1
					; #true




					; If we execute (check1 5 0 5)
					; it returns

					; checking cond 1
					; checking cond 2
					; #true

					; It is advantageous  to interpret as special form because is prevents computing other expressions thus saving memory and time.

					; Why it might be beneficial ?
					;1. If any condition has useful side effects, maybe.

