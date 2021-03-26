; map a deep list, similar to a binary tree map

(define make-list cons)

(define l (make-list (make-list 1 2) (make-list 3 (make-list (make-list 4 5) 6)) ))

(define (deep-map func l)
  (cond ((null? l) l)
    ((pair? l)
      (make-list (deep-map func (car l)) (deep-map func (cdr l))))
    (else (func l)
  ))
)

