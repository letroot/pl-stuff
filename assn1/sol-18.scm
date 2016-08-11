;;Define a function set-difference that takes two flat sets
;;(lists with no duplicate elements) s1 and s2 and returns 
;;a list containing all the elements in s1 that are not in s2.

(define member?
  (lambda (a ls)
    (cond
      [(null? ls) #f]
      [else (or (eqv? a (car ls)) (member? a (cdr ls)))])))

(define set-difference
  (lambda (s1 s2)
    (cond
      [(null? s1) '()]
      [(member? (car s1) s2) (set-difference (cdr s1) s2)]
      [else (cons (car s1) (set-difference (cdr s1) s2))])))


;;Tests
(set-difference '(1 2 3 4 5) '(2 4 6 8))
;;(1 3 5)

(set-difference '(5 4 8) '(5 4 8))
;;()
