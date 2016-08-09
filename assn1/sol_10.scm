;;Define and test a procedure fact that takes a natural number and computes the factorial 
;;of that number. The factorial of a number is computed by multiplying it by the factorial
;;of its predecessor. The factorial of 0 is defined to be 1.

(define fact
  (lambda (n)
    (cond
      [(zero? n) 1]
      [else (* n (fact (- n 1)))])))
