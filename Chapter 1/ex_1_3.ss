(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (min x y)
  (cond ((= x y) x)
        ((< x y) x)
        (else y))) 

(define (min-of-3 x y z)
  (min x (min y z))))

(define (max-2-of-3-sum-of-squares x y z)
  (cond ((= x (min-of-3 x y z)) (sum-of-squares y z))
        ((= y (min-of-3 x y z)) (sum-of-squares x z))
        ((= z (min-of-3 x y z)) (sum-of-squares x y))))

;; Test case for min
(= (min-of-3 1 1 1) 1)
(= (min-of-3 1 1 2) 1)
(= (min-of-3 1 2 2) 1)
(= (min-of-3 2 2 1) 1)
(= (min-of-3 2 2 2) 2)
(= (min-of-3 2 3 5) 2)
(= (min-of-3 3 2 5) 2)
(= (min-of-3 3 5 2) 2)
(= (min-of-3 5 2 3) 2)

;; Test for max-2-of-3-sum-of-squares
(= (max-2-of-3-sum-of-squares 2 2 2) 8)

(= (max-2-of-3-sum-of-squares 1 1 2) 5)
(= (max-2-of-3-sum-of-squares 1 1 2)
   (max-2-of-3-sum-of-squares 1 2 1)
   (max-2-of-3-sum-of-squares 2 1 1))

(= (max-2-of-3-sum-of-squares 2 3 5) 34)

(= (max-2-of-3-sum-of-squares 2 3 5)
   (max-2-of-3-sum-of-squares 2 5 3)
   (max-2-of-3-sum-of-squares 5 2 3)
   (max-2-of-3-sum-of-squares 5 3 2)
   (max-2-of-3-sum-of-squares 3 5 2)
   (max-2-of-3-sum-of-squares 3 2 5)) 
