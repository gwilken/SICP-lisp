;f(n) = n if n < 3 and f(n) = f(n-1) + 2f(n-2) + 3f(n -3) if n >= 3
;test cases: f(5) = 25, f(6) = 59, f(7) = 142

;recursive process

(define (f1 n)
  (if (< n 3)
    n
    (+ 
      (f1 (- n 1)) 
      (* 2 (f1 (- n 2)))
      (* 3 (f1 (- n 3)))
    )
  )
)


;iterative

(define (f n)
  (define (iter-f a b c count)
    (if (< count 3)
      a
      (iter-f (+ a (* b 2) (* c 3)) a b (- count 1))
    )
  )
  
  (if (< n 3)
    n
    (iter-f 2 1 0 n)
  )
)
