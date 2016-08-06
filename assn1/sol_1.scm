;;Define and test a procedure countdown that takes a natural number and returns a list of the natural numbers less than or equal to that
;;number, in descending order.
;;> (countdown 5)
;;(5 4 3 2 1 0)


(define (join-list list-1 list-2)
	(cond ((null? list-1) list-2)
	      (else (cons (car list-1) (join-list (cdr list-1) list-2)))))
	
(define countdown
	(lambda (n)
		(define count
		  (lambda (n n-list)
		    (cond ((>= n 0) (count (- n 1) (join-list n-list (list n))))
		          (else n-list))))
	(count n '())))
