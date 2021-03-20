; remember, evaluation vs invokation!

(define pi 3.141592654)

(define (square-area r) (* r r))
(define (circle-area r) (* pi r r))
(define (sphere-area r) (* 4 pi r r ))
(define (hex-area r) (* (sqrt 3) 1.5 r r))

;;;;;;;;;;;;;;;;;;

(define (area shape r) (* shape r r))

(define square 1)
(define circle pi)
(define sphere (* 4 pi))
(define hexagon (* (sqrt 3) 1.5))


;;;;;;;;;;;;;;;;;;

(define (sum fn a b)
  (if (> a b)
    0
    (+ (fn a) (sum fn (+ a 1) b))
  )
)

(define (square x) (* x x))

(define (cube x) (* x x x))





