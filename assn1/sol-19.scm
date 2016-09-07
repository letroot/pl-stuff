(define powerset
  (lambda (set)
    (cond
      [(null? set) '(())]
      [else (append
              (map
                (lambda (subset) (cons (car set) subset))
                (powerset (cdr set)))
              (powerset (cdr set)))])))
