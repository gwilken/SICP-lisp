
;;;; Tree abstract data type
(define make-tree cons)

(define datum car)

(define children cdr)
;;;;



(define tree (make-tree (list 1 2) (list 3 4)))

(define (length l)
  (if (null? l)
    0
    (+ 1 (length (cdr l)))))


; count leaves
; take a pair
; is car a pair?
;   count leaves
;   until nill
; is cdr a pair?
;   count leaves
;   until nill

(define (count-leaves t)
  (cond 
    ((null? t) 0)
    ((pair? t) (+ (count-leaves (car t)) (count-leaves (cdr t)))) 
    (else 1 )))

(define (leaf? node) 
  (null? (children node)))

(define (leaves . seq)
  (map (lambda (x) (make-tree x '())) seq))

(define t1 
  (make-tree 1 
    (list (make-tree 2 (leaves 3 4))
          (make-tree 5 (leaves 6 7 8)) )))

;;;; mutual recursion
;(define (treemap fn tree)
;  (make-tree (fn (datum tree))
;             (map (lambda (child) (treemap fn child))
;             (children tree) )))


;;;; mutual recursion (broken apart)
(define (treemap fn tree)
  (make-tree (fn (datum tree))
             (forest-map fn (children tree))))

(define (forest-map fn forest)
  (if (null? forest)
    '()
    (cons (treemap fn (car forest))
          (forest-map fn (cdr forest)))))

