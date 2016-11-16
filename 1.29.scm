;;; 1.29


(define (integral f a b n)
    (define (sum cur max)
        (if (> cur max)
            0
            (+ (i-th-y cur)
               (sum (+ cur 1) max)
            )
        )
    )

    (define (x k h)
        (+ a (* k h))
    )

    (define (i-th-y i)
        (cond ((= i 0) (f (x i (h))))
              ((= i n) (f (x i (h))))
              ((is-even i) (* 2.0 (f (x i (h)))))
              (else (* 4.0 (f (x i (h)))))
        )
    )

    (define (h)
        (/ (- b a) (* n 1.0))
    )


    (define (is-even number)
        (= (remainder number 2) 0)
    )

    (* (/ (h) 3.0)
       (sum 0 n)
    )
)

(define (cube x) (* x x x))

(integral cube 0 1 100)
; (integral cube 0 1 5) -> 0.2032 
; (integral cube 0 1 6) -> 0.25 