;; Recursive Definition
(define (f-recur n)
  (if (< n 3)
      n
      (+ (f-recur (- n 1))
         (* 2 (f-recur (- n 2)))
         (* 3 (f-recur (- n 3))))))

(f 10)

;;iterative definition
;; The main observation is that a, b and c are consecutive numbers of n.
(define (f n)
  (foo-iter 2 1 0 n))

(define (f-iter a b c count)
  (cond
    ((= count 0) c)
    (else
     (f-iter (+ a (* 2 b) (* 3 c))
             a
             b
             (- count 1)))))

(foo 10)
