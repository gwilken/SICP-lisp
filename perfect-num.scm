; 6 = 1 + 2 + 3
; 28 = 1 + 2 + 4 +7 + 14
; 496
; 8128


(define (is-even? n)
  (= 0 (remainder n 2)))


(define (next-perf start)
  ; usage: is 2 a factor of 6? = (is-factor? 2 6)
  (define (is-factor? a b)
    (= 0 (remainder b a)))
    
  (define (sum-of-factors n x sum)
    (cond 
      ((= n 1) (+ 1 sum))
      ((is-factor? n x) 
        (display n) (display " ")
        (sum-of-factors (- n 1) x (+ n sum)))
      (else
        (sum-of-factors (- n 1) x sum))))

    (if (is-even? start)
      (let ((next (sum-of-factors (* start 0.5) start 0)))
        (if (= next start)
          start
          (next-perf (+ 1 start))))
      (let ((next (sum-of-factors (* 0.5 (- start 1)) start 0)))
        (if (= next start)
          start
          (next-perf (+ 1 start))))
    )

)


;given a number
;determine its factors
;  if even, start by divide by 2
;  if odd, start by divide by 2, -1
;    is factor?
;      yes, add it to known factors
;      no, -1 and check is factor?
;      is num = 1? sum factors

;sum the factors
;  if sum - itself = itself, it is perfect
;  else = not perfect





