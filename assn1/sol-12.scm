;;Define and test a procedure fib that takes a natural number n 
;;as input and computes the nth number, starting from zero, in
;;the Fibonacci sequence (0, 1, 1, 2, 3, 5, 8, 13, 21, …). Each
;;number in the sequence is computed by adding the two previous numbers.

(define fib
  (lambda (n)
    (cond
      [(zero? n) 0]
      [(= n 1) 1]
      [else (+ (fib (- n 1))
               (fib (- n 2)))])))
  
  
  ;;Tests
  (fib 0)
  ;;0
  
  (fib 1)
  ;;1
  
  (fib 7)
  ;;13
