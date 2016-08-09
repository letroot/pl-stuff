;;Define and test a procedure filter that takes a predicate and a list and
;;returns a new list containing the elements that satisfy the predicate.
;;A predicate is a procedure that takes a single argument and returns
;;either #t or #f. The number? predicate, for example, returns #t if its
;;argument is a number and #f otherwise. The argument satisfies the predicate,
;;then, if the predicate returns #t for that argument.

(define filter
  (lambda (predicate ls)
    (cond 
      [(null? ls) '()]
      [(predicate (car ls)) 
        (cons (car ls) (filter predicate (cdr ls)))]
      [else (filter predicate (cdr ls))])))
  
  
;;Tests
(filter odd? '(1 2 3 4 5 6))
;;(1 3 5)

(filter even? '(1 2 3 4 5 6))
;;(2 4 6)
