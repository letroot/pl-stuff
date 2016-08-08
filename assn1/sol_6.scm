;;Define and test a procedure zip that takes two lists and forms a new list, each element of which is a pair 
;;formed by combining the corresponding elements of the two input lists. If the two lists are of uneven length, 
;;then drop the tail of the longer one.

;;I already defined join-list in the solution to problem 1 :D
; (define join-list
;   (lambda (list-1 list-2)
;     (cond ((null? list-1) list-2)
;           (else (cons (car list-1) (join-list (cdr list-1) list-2))))))

; (define zip
;   (lambda (list-1 list-2)
;     (define zipper
;       (lambda (list-1 list-2 new)
;         (if (or (null? list-1) (null? list-2))
;             new
;             (zipper (cdr list-1) (cdr list-2) (join-list new (list (cons (car list-1) (car list-2))))))))
;     (zipper list-1 list-2 '())))

;; Tomorrow, play around with (cons (cons (car l1) (car l2)) (list (zip (cdr l1) (cdr l2))))

;;Tests
(zip '(1 2 3) '(2 3 4))
;;((1 . 2) (2 . 3) (3 . 4))

(zip '(1 2 3) '(a b c 2 3 4))
;;((1 . a) (2 . b) (3 . c))
