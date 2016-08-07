Define and test a procedure insertR that takes two symbols and a list and returns a new list with the second
symbol inserted after each occurrence of the first symbol. For this and later questions, these functions need 
only hold over eqv?-comparable structures.

> (insertR 'x 'y '(x z z x y x))
(x y z z x y y x y)

(define (insertR sym-1 sym-2 s-list) 
	(cond ((null? s-list) (list))
	      ((eqv? sym-1 (car l)) (cons sym-1 (spit (cons sym-2 (cdr s-list)))))
	      (else (cons (car s-list) (spit (cdr s-list))))))
