(define evens (list 2 4 6 8 10))

(define odds (list 1 3 5 7 9))

(define null '())

(define (print x) (display x) (newline))

(define (list-ref l n)
  (if (= n 0)
    (car l)
    (list-ref (cdr l) (- n 1))
  )
)

; length recursive
;(define (length l)
;  (if (null? l)
;    0
;    (+ 1 (length (cdr l)))
;  )
;)

; length iterative 
;(define (length l)
;  (define (len-iter l c)
;    (if (null? l)
;      c
;      (len-iter (cdr l) (+ 1 c))
;    )
;  )
;  (len-iter l 0)
;)


(define (last-pair l)
  (define (iter-pair last next)
    (if (null? next)
      last
      (iter-pair next (cdr next))
    )
  )
  (iter-pair l (cdr l))
)


; reverse recursive
;(define (reverse l)
;  (if (null? l)
;    '()
;    (cons (reverse (cdr l)) (car l))
;  )
;)


;reverse iterative
(define (reverse l)
  (define (iter-rev i result)
    (if (null? i)
      result
      (iter-rev (cdr i) (cons (car i) result))
    )  
  )
  (iter-rev l null)
)


(define (scale-list l n)
  (if (null? l)
    l
    (cons (* n (car l)) (scale-list (cdr l) n))
  )
)


(define (map p l)
  (if (null? l)
    l
    (cons (p (car l)) (map p (cdr l)))
  )
)


(define (for-each p l)
  (cond ((not (null? l))
    (p (car l))
    (for-each p (cdr l))
  ))
)

