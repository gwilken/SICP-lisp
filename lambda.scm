(define (make-adder num)
  (lambda (x) (+ x num))
)

(define add3 (make-adder 3))

; (add3 6)
; 9

(define (sum-of-ints a b)
  (if (> a b)
    0
    (+ a (sum-of-ints (+ a 1) b))
  )
)


;(define (sum-of-cubes a b)
;  (if (> a b)
;    0
;    (+ (* a a) (sum-of-cubes (+ a 1) b))
;  )
;)

(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a) (sum term (next a) next b))
  )
)

(define (sum-of-cubes a b)
  (sum cube a (lambda(x) (+ 1 x)) b)
)

; 1 1 2 3 5 8 13 21 34 55
; test: fib(0) = 0, fib(1) = 1, fib(10) = 55


(define (sum-of-integers a b)
  (define (iter-sum accum count)
    (if (= count b)
      accum
      (+ accum (iter-sum (+ accum 1) (+ count 1)))
    )
  )
  (iter-sum a 1)
)


