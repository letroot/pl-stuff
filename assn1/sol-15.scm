;;Define subtraction using natural recursion. Your subtraction function, minus,
;;need only take nonnegative inputs where the result will be nonnegative.

(define dec
  (lambda (n)
    (- n 1)))

(define minus
  (lambda (a b)
    (cond
      [(zero? b) a]
      [else (dec (minus a (- b 1)))])))


;;Tests
(minus 5 3)
;;2

(minus 100 50
;;50
