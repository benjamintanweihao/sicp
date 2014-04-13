(define (pascal row col)
  (if (or (= col 1) (= row col))
      1
      (+ (pascal (- row 1) col) (pascal (- row 1) (- col 1)))))

(pascal 7 5)
