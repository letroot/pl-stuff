;;Define and test a procedure append that takes two lists,
;;ls1 and ls2, and appends ls1 to ls2.

(define append
  (lambda (ls1 ls2)
    (cond
      [(null? ls1) ls2]
      [else (cons (car ls1) (append (cdr ls1) ls2))])))


;;Tests
(append '(1 2 3) '(9 98 7))
;;(1 2 3 9 98 7)

(append '(a m a) '(r a))
;;(a m a r a)
