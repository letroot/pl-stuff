;;Define and test a procedure reverse that takes
;;a list and returns the reverse of that list.

(define reverse
  (lambda (ls)
    (cond
      [(null? ls) '()]
      [else (append (reverse (cdr ls)) (list (car ls)))])))


;;Tests
(reverse '(a 3 x))
;;(x 3 a)

(reverse '(3 2 1 0))
;;(0 1 2 3)
