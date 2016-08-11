;;Define a function append-map that, similar to map, takes both a procedure 
;;p of one argument a list of inputs ls and applies p to each of the elements
;;of ls. Here, though, we mandate that the result of p on each element of ls
;;is a list, and we append together the intermediate results. Do not use Racket's
;;built-in append-map in your definition.

(define append-map
  (lambda (p ls)
    (cond
      [(null? ls) '()]
      [else (append (p (car ls)) (append-map p (cdr ls)))])))


;;Tests
;;countdown was defined in problem 1
(append-map countdown (countdown 5))
;;(5 4 3 2 1 0 4 3 2 1 0 3 2 1 0 2 1 0 1 0 0)
