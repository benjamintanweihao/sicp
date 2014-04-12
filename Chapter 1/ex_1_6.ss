(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;; Alyssa P. Hacker's definition of if - new-if 

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

;; What happens if we use this version of new-if?
;; We get 'Aborting!: maximum recursion depth exceeded.

;; Why? Because due to applicative order evaluation, Alyssa's version
;; will first evaluate predicate, _then_ evaluate else-clause. This
;; means that the base case (i.e. when good-enough? is true) is never
;; reached, thereby causing the infinite loop.
