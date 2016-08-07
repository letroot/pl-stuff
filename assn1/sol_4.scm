;;Define and test a procedure list-index-ofv? that takes an element and a list and returns
;;the (base 0) index of that element in the list. A list missing that element will be 
;;considered bad data.

;;> (list-index-ofv? 'x '(x y z x x))
;;0
;;> (list-index-ofv? 'x '(y z x x))
;;2

(define list-index-ofv?
	(lambda (sym _list)
		(define (counter count sym _list)
			(cond ((null? _list) (- 1))
			      ((eqv? sym (car _list)) count)
			      (else (counter (+ 1 count) sym (cdr _list)))))
	(counter 0 sym _list)))

;;Tests
(list-index-ofv? 'z '(y z x x))
;;1

(list-index-ofv? '1 '(4 2 5 2 1 9))
;;4
