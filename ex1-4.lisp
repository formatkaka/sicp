(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; if b > 0 result is a+b
; if b < 0 result is a-b
	; we represent c = - |b|
	; result is a - ( - |b|)
	; => a + |b|