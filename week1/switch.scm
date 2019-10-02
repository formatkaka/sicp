;3. Write a procedure switch that takes a sentence as its argument and returns 
;a sentence in which every instance of the words I or me is replaced by you, 
;while every instance of you is replaced by me except at the beginning of the sentence,
;where it’s replaced by I. (Don’t worry about capitalization of letters.) 

;Example:
;> (switch ’(You told me that I should wake you up)) 
;(i told you that you should wake me up)

(define (opposite word)
  (cond ((equal? word 'I) 'you)
        ((equal? word 'me) 'you)
        ((equal? word 'you) 'me)
		(else word)))

(define (replaceStuff sentence)
  (if (null? sentence)
      '()
       (cons (opposite (car sentence)) (replaceStuff (cdr sentence)))
   )
)

(define (switch sentence)
  (if (eq? (car sentence) 'You)
      (cons 'I (replaceStuff (cdr sentence)))
      (cons (car sentence) (replaceStuff (cdr sentence)))
  )
)
