;;The expressions (a b) and (a . (b . ())) are equivalent. Using this knowledge,
;;rewrite the expression ((w x) y (z)) using as many dots as possible. Be sure
;;to test your solution using Racket's equal? predicate. (You do not have to
;;define a rewrite procedure; just rewrite the given expression by hand 
;;and place it in a comment.)

;;((w x) y (z))
(((w . (x . ())) . (y . ((z . ()) . ()))))
