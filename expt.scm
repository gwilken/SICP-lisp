; 2^8 = 2 * (n - 1)
; 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2
; tests: expt(2, 8) = 256 

; notes: 
; b^even n = (b^(n/2) ^2) or (b^2)^(n/2)
; b^odd n  = b * b^(n-1)


; linear recursive process:
(define (expt-r b e)
  (if (= e 1)
    b
    (* b (expt b (- e 1)))
  )
)


; linear iteration
;(define (expt b e)
;  (define (expt-iter product count)
;    (display product) (newline)
;    (if (= count 1)
;      product
;      (expt-iter (* product b) (- count 1))
;    )
;  )
;  (expt-iter b e)
;)


(define (even? n)
  (= (remainder n 2) 0)
)

; recursive logrithmic
(define (expt b e)
  (cond ((= e 0) 1)
    ((even? e) (square (expt b (/ e 2))))
    (else (* b (expt b (- e 1))))
  )
)


; b^even n = (b^(n/2) ^2) or (b^2)^(n/2)

; (define (expt b e)
;   (define (expt-even-iter product count a)
;     (if (= count 1)
;       product
;       (expt-even-iter (square b) (/ count 2))
;     )
;   )
 
;   (define (expt-odd-iter product count)
;     (display product)
;     ;(else (* b (expt b (- e 1))))
;   )

;   (if (even? e)
;     (expt-even-iter b e)
;     (expt-odd-iter b e)
;   )
; )



