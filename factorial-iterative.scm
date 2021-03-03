; linear iterative process. fixed num of state vars, rules for updating them
; NOTE: just because a procedure is recursive, does not mean that the
; process is. In languages that are not tail recursive, a recursive procedure
; will still grow memory in relationship to the number of procedure calls.


(define (factorial n)
  (define (iter-fact product counter)
    (if (> counter n)
      product
      (iter-fact (* product counter) (+ counter 1))
    )
  )
  (iter-fact 1 1)
)
