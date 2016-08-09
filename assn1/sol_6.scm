;;Define and test a procedure zip that takes two lists and forms a new list, each element of which is a pair 
;;formed by combining the corresponding elements of the two input lists. If the two lists are of uneven length, 
;;then drop the tail of the longer one.

(define zip
  (lambda (ls-1 ls-2)
    (cond
      [(or (null? ls-1) (null? ls-2)) '()]
      [else (cons (cons (car ls-1) (car ls-2)) (zip (cdr ls-1) (cdr ls-2)))])))

;;Tests
(zip '(1 2 3) '(2 3 4))
;;((1 . 2) (2 . 3) (3 . 4))

(zip '(1 2 3) '(a b c 2 3 4))
;;((1 . a) (2 . b) (3 . c))
