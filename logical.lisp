; and operator
(define (isGoodGrade grade)
  (and (> grade 8) (< grade 10)))

; or operator
(define (isWeekend day)
  (or (= day 6) (= day 7)))

(define (boolInvert bool)
  (not bool))