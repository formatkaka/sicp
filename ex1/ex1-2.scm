

; Numerator start

(define n1 5)

(define n2 4)

(define n31 2)

(define n321 3)

(define n3221 6)

(define n32221 4)

(define n32222 5)

(define n3222 (/ n32221 n32222))

(define n322 (+ n3221 n3222))

(define n32 (- n321 n322))

(define n3 (- n31 n32))

(define _numerator (+ n1 n2 n3))

; Denominator start
(define d1 3)

(define d2 (- 6 2))

(define d3 (- 2 7))

(define denominator (* d1 d2 d3))
; Denominator end

(define output (/ _numerator denominator))