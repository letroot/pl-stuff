;;Define and test a procedure map that takes a procedure p of one argument and a list ls and returns a new list containing
;;the results of applying p to the elements of ls. Do not use Racket's built-in map in your definition.

(define map
  (lambda (p ls)
    (cond
      [(null? ls) '()]
      [else (cons (p (car ls)) (map p (cdr ls)))])))


;;Tests
(define (square n) (* n n))

(map square '(1 2 3 4))
;;(1 4 9 16)
