;;Define and test a procedure insertR that takes two symbols and a list and returns a new list with the second
;;symbol inserted after each occurrence of the first symbol. For this and later questions, these functions need 
;;only hold over eqv?-comparable structures.

(define (insertR sym-1 sym-2 ls) 
  (cond 
    ((null? ls) '())
    ((eqv? sym-1 (car ls)) 
        (cons sym-1 (cons sym-2 (insertR sym-1 sym-2 (cdr ls)))))
    (else 
        (cons (car ls) (insertR sym-1 sym-2 (cdr ls))))))
	          
;;Tests
(insertR 'x 'y '(x x y g d s x))
;;(x y x y y g d s x y)

(insertR 'x 'x '(x))
;;(x x)
