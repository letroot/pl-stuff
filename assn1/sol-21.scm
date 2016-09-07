;; define foldr
(define foldr
  (lambda (f base ls)
    (cond
      [(null? ls) base]
      [else (f (car ls) (foldr (f base (cdr ls))))])))


;; define member (helper procedure)
(define member?
  (lambda (a ls)
    (cond
      [(null? ls) #f]
      [else (or (eqv? a (car ls)) (member? a (cdr ls)))])))


;; insertR-fr
(define insertR-fr
  (lambda (sym-1 sym-2 ls)
    (foldr
      (lambda (x ls) (cons x (if (eqv? x sym-1) (cons sym-2 ls) ls)))
      '()
      ls)))

;; Tests
(insertR-fr 'x 'y '(x x y))
;; (x x x y)
(insertR-fr 'x 'x '(x))
;; (x x)


;; filter-fr
(define filter-fr 
   (lambda (pred ls) 
     (foldr 
       (lambda (x ls) (if (pred x) (cons x ls) ls)) 
       '() 
       ls)))

;; Tests
(filter-fr even? '(1 2 3 4 5))
;; (2 4)


;; map-fr
(define map-fr
  (lambda (f ls)
    (foldr
      (lambda (x ls) (cons (f x) ls))
      '() 
      ls)))

;; Tests
(map-fr (lambda (x) (+ x 1)) '(1 2 3 4))
;; (2 3 4 5)


;; append-fr
(define append-fr
  (lambda (ls1 ls2)
    (foldr
      (lambda (x ls) (cons x ls)) ls2 ls1)))

;;Tests
(append-fr '(1 2) '(3 4))
;; (1 2 3 4)


;; reverse-fr
(define reverse-fr
  (lambda (ls)
    (foldr
      (lambda (x ls) (append ls (list x))) '() ls)))

;;Tests
(reverse-fr '(1 2 3 4))
;; (4 3 2 1)


;; binary->natural-fr
(define binary->natural-fr
  (lambda (ls)
    (foldr
      (lambda (x ls) (+ x (* 2 ls)))
      0
      ls)))

;; Tests
(binary->natural-fr '(0 0 1))
;; 4


;; append-map-fr
(define append-map-fr
  (lambda (f ls)
    (foldr
      (lambda (x ls) (append (f x) ls))
      '()
      ls)))

;; Tests
(append-map-fr countdown '(1 2 3))
;; ((1 0 2 1 0 3 2 1 0)


;; set-difference-fr
(define set-difference-fr
  (lambda (set1 set2)
    (foldr
      (lambda (x ls)
        (cond
          [(member? x set2) ls]
          [else (cons x ls)]))
      '()
      set1)))

;;Tests
(set-difference-fr '(1 2 3 4) '(2 4))
;;(1 3)
(set-difference-fr '(1 2 3) '(1 2 3))
;;()


;; powerset-fr
(define powerset-fr
  (lambda (set) 
    (foldr
      (lambda (x ls)
        (append ls (map (lambda (subset) (cons x subset)) ls)))
      '(())
      set)))

;; cartesian-product-fr
(define cartesian-product-fr
  (lambda (set1 set2)
    (foldr
      (lambda (x ls)
        (map (lambda (d)
          (map (lambda (y) (cons d y)) set2)) set1))
      '()
      set1)))

;;Tests
(cartesian-product-fr '(1 2 3) '(a d g))
;;(((1 . a) (1 . d) (1 . g)) ((2 . a) (2 . d) (2 . g)) ((3 . a) (3 . d) (3 . g)))
