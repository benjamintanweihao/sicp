;; Recursive Solution
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

(f 10)

(define (f-iter n count)
  (if (< 3 count)
      n
      (f-iter )))

