(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) 0.001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;; terminates prematurely. result is *larger* than input.
(sqrt 0.0000001) 

;; doesn't terminate, because intermediate
;; results are too large from each other.
(sqrt 10000000000000)

(define (sqrt-iter-2 guess x)
  (if (good-enough-2? guess x)
      guess
      (sqrt-iter-2 (improve guess x)
                 x)))

;; This version uses another version of good-enough.
;; We check the difference between the the previous
;; and current guess. If the differences are minimal,
;; we return.
(define (good-enough-2? guess x)
  (< (abs (- (improve guess x) guess)) 0.001))

(define (sqrt-2 x)
  (sqrt-iter-improved 1.0 x))

(sqrt-2 0.0000001) 

;; doesn't terminate, because intermediate
;; results are too large from each other.
(sqrt-2 10000000000000)
