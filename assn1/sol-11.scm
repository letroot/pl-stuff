;;Define and test a procedure memv that takes an element and a list
;;and returns the first cdr whose car is eqv? to the element, or #f
;;if the element is absent from the list.

(define memv
  (lambda (sym ls)
    (cond
      [(null? ls) #f]
      [(eqv? sym (car ls)) ls]
      [else (memv sym (cdr ls))])))

;;Tests
(memv 'a '(a b c))
;;(a b c)

(memv 'b '(a ? c))
;;#f

(memv 'b '(a b c b))
;;(b c b)
