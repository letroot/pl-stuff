;;Define and test a procedure filter that takes a predicate and a list and
;;returns a new list containing the elements that satisfy the predicate.
;;A predicate is a procedure that takes a single argument and returns
;;either #t or #f. The number? predicate, for example, returns #t if its
;;argument is a number and #f otherwise. The argument satisfies the predicate,
;;then, if the predicate returns #t for that argument.

;;> (filter even? '(1 2 3 4 5 6))
;;(2 4 6)

(define filter
    (lambda (predicate _list)
        (cond ((null? _list) '()) 
              ((predicate (car _list))
                    (cons (car _list) (filter predicate (cdr _list))))
              (else 
                    (filter predicate (cdr _list))))))
  
  
;;Tests
(filter odd? '(1 2 3 4 5 6))
;;(1 3 5)

(filter even? '(1 2 3 4 5 6))
;;(2 4 6)
