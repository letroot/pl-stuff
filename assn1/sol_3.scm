;;Define and test a procedure remv-1st that takes a a symbol and a list and 
;;returns a new list with the first occurrence of the symbol removed.

;;> (remv-1st 'x '(x y z x))
;;(y z x)
;;> (remv-1st 'y '(x y z y x))
;;(x z y x)

(define remv-1st
  (lambda (sym _list)
    (cond 
      [(null? _list) (list)]
      [(eqv? (car _list) sym) (remv-1st '() (cdr _list))]
      [else (cons (car _list) (remv-1st sym (cdr _list)))])))
		     
;;Tests
(remv-1st 'x '(x y r x y))
;;(y r x y)

(remv-1st 'p '(a p p l e))
;;(a p l e)
