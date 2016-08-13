;;The cartesian-product is defined over a list of sets (again simply lists that by our agreed
;;upon convention don't have duplicates). The result is a list of tuples (i.e. lists). Each
;;tuple has in the first position an element of the first set, in the second position an element
;;of the second set, etc. The output list should contains all such combinations.

(define cartesian-product
  (lambda (ls1 ls2)
    (cond
      [(null? ls1) '()]
      [else (append (ramen (car ls1) ls2) (cartesian-product (cdr ls1) ls2))])))

(define ramen
  (lambda (first f-ls)
    (cond
      [(null? f-ls) '()]
      [else (append (list (cons first (car f-ls))) (ramen first (cdr f-ls)))])))


;;Tests
(cartesian-product '((5 4) (3 2 1)))
;;((5 3) (5 2) (5 1) (4 3) (4 2) (4 1))
