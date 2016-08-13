;;Define and test a procedure binary->natural that takes a flat list of 0s and 1s
;;representing an unsigned binary number in reverse bit order and returns that number.

(define binary->natural
  (lambda (ls)
    (cond
      [(null? ls) 0]
      [else (+ (* 2 (binary->natural (cdr ls))) (car ls)))]))


;;Tests
(binary->natural '())
;;0

(binary->natural '(0 0 1))
;;4

(binary->natural '(0 0 1 1))
;;12

(binary->natural '(1 1 1 1))
;;15

(binary->natural '(1 0 1 0 1))
;;21

(binary->natural '(1 1 1 1 1 1 1 1 1 1 1 1 1))
;;8191
