; appicative order starts by evaluating a procedures argument sub expressions 
; THEN calls the procedure

(define (zero x)
  (- x x)
)

(zero (random 10))

; would eval to:
; 1. zero 5
; 2. (- 5 5)
; 3. 0

; normal order doesnt evaluate argument sub expressions first, it substitues
; in the body until a primitave procedure operator is evaluated

(zero (random 10))

; would eval to:
; 1. zero (random 10)
; 2. (- (random 10) (random 10))
; 3. (- 8 3)
; 4. 5  

