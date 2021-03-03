; 1 1 2 3 5 8 13 21 34 55
; test: fib(0) = 0, fib(1) = 1, fib(10) = 55

(define (fib n)
  (define (iter-fib a b n)
    (if (= n 1)
      a
      (iter-fib (+ a b) a (- n 1))
    )
  )

  (iter-fib 1 0 n)
)

