;;Define division using natural recursion. Your division function, div, need only work 
;;when the second number evenly divides the first. Division by zero is of course bad data.

(define div
  (lambda (a b)
    (cond
      [(zero? a) 0]
      [(zero? b) #f]
      [else (+ 1 (div (- a b) b))])))


;;Tests
(div 25 5)
;;5

(div 36 6)
;;6
