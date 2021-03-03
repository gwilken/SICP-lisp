; Recursive process for calc of fibonacci nums. very not good.

(define (fib n)
  (cond 
    ((= n 0) 0)
    ((= n 1) 1)
    (else (+ (fib (- n 1)) (fib (- n 2))))
  )
)
