(define (accumulation op default-val a b next term)
  (if (> a b)
      default-val
      (op (term a)
	  (accumulation op default-val (next a) b next term))
      )
  )


; common func

(define (identity x) x) 
(define (inc x) (+ x 1))

; sum of natural numbers

(define sumop +)

(accumulation sumop 0 1 10 inc identity)

; product of natural numbers

(define mulop *)

(accumulation mulop 1 1 10 inc identity)
