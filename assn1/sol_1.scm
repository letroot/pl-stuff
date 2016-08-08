;;Define and test a procedure countdown that takes a natural number and returns
;;a list of the natural numbers less than or equal to that number, in descending order.

(define countdown
  (lambda (n)
    (cond
      [(zero? n) '(0)]
      [else (cons n (countdown (- n 1)))])))

;;Tests
(countdown 6)
;;(6 5 4 3 2 0)

(countdonwn 9)
;;(9 8 7 6 5 4 3 2 1 0)
