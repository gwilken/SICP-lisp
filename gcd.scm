; GCD(a, b) = gcd(b, r of b/a)
; GCD(16, 28) = gc(28, 12)

(define (gcd a b)
  (if (= b 0)
    a 
    (gcd b (remainder a b))
  )
)


