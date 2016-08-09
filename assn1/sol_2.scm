;;Define and test a procedure insertR that takes two symbols and a list and returns a new list with the second
;;symbol inserted after each occurrence of the first symbol. For this and later questions, these functions need 
;;only hold over eqv?-comparable structures.

(define (insertR sym-1 sym-2 l) 
  (cond 
    ((null? l) '())
    ((eqv? sym-1 (car l)) 
        (cons sym-1 (cons sym-2 (insertR sym-1 sym-2 (cdr l)))))
    (else 
        (cons (car l) (insertR sym-1 sym-2 (cdr l))))))
	          
;;Tests
(insertR 'x 'y '(x x y g d s x))
;;(x y x y y g d s x y)

(insertR 'x 'x '(x))
;;(x x)
