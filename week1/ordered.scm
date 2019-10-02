;4. Write a predicate ordered? that takes a sentence of numbers as its argument 
;and returns a true value if the numbers are in ascending order, 
;or a false value otherwise.

(define (check_order num1 num2 list)
  (if (> num1 num2)
      false
      (check_order (car list) (car (cdr list) )) ))

(define (ordered list)
  body)