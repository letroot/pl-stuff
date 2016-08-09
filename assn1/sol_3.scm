;;Define and test a procedure remv-1st that takes a a symbol and a list and 
;;returns a new list with the first occurrence of the symbol removed.

(define remv-1st
  (lambda (sym _list)
    (cond 
      [(null? _list) (list)]
      [(eqv? (car _list) sym) (cdr _list)]
      [else (cons (car _list) (remv-1st sym (cdr _list)))])))
		     
;;Tests
(remv-1st 'x '(x y r x y))
;;(y r x y)

(remv-1st '() '(a b () c))
;;(a b c)

(remv-1st '() '(a b () c ()))
;;(a b c ())
