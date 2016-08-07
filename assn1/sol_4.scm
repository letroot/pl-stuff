;;Define and test a procedure list-index-ofv? that takes an element and a list and returns
;;the (base 0) index of that element in the list. A list missing that element will be 
;;considered bad data.

;;> (list-index-ofv? 'x '(x y z x x))
;;0
;;> (list-index-ofv? 'x '(y z x x))
;;2

(define (counter count sym _list)
	(cond ((null? _list) count)
	      ((eqv? sym (car _list))
	             (counter (+ 1 count) '() (cdr _list)))
	      (else (counter count sym (cdr _list)))))

(define (list-index-ofv? sym _list)
	(counter 0 sym _list))
