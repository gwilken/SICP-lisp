(define (is-even? n)
  (= 0 (remainder n 2)))


(define (test a b)
  (cond ((= a b) (display "equal"))
      ((> a b) (display "greater"))
      ((is-even? a) (display "is even"))
      (else
      (display "else")))
)
