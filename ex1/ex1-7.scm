(define (old-sqrt-iter guess x)
  (if (old-good-enough? guess x)
      guess
      (old-sqrt-iter (improve guess x) x)))

(define (old-improve guess x)
  (old-average guess (/ x guess)))

(define (old-average x y) 
  (/ (+ x y) 2))

(define (old-good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (old-sqrt x)
  (old-sqrt-iter 1.0 x))

; Smaller numbers
;(old-sqrt 0.1)
;;Value: .316245562280389

;(old-sqrt 0.01)
;;Value: .10032578510960605

;(old-sqrt 0.001)
;;Value: .04124542607499115


;----- Accuracy drops here -----

;(old-sqrt 0.0001)
;;Value: .03230844833048122

;(old-sqrt 0.00001)
;;Value: .03135649010771716

;(old-sqrt 0.000001)
;;Value: 0.03126065553

; The accuracy drops for smaller numbers because when the number drops below 0.01,
; precision is lost. All the answers will be almost same.


; Large numbers
; ?

; New Implementation
(define (sqrt-iter guess x guess-old)
  (if (good-enough? guess guess-old)
      guess
      (sqrt-iter (improve guess x) x guess)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y) 
  (/ (+ x y) 2))

(define (good-enough? guess guess-old)
  (< (abs (- guess guess-old)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x 0))

;----- Accuracy maintained for smaller numbers -----

;(old-sqrt 0.0001)
;;Value: 1.0000714038711746e-2

;(old-sqrt 0.00001)
;;Value:  3.172028655357483e-3

;(old-sqrt 0.000001)
;;Value: 1.2961915927068783e-3