; (define (same-parity x . y)
; 	(define (sp src out)
; 		; (print "sp: src: " src)
; 		; (print "sp: (car src): " (car src))
; 		; (print "sp: out: " out)
; 		(cond ((null? src) out)
; 					((same-parity-single (car src)) (sp (cdr src) (cons out (car src))))
; 					(else (sp (cdr src) out))
; 		)
; 	)

; 	(define (same-parity-single test)
; 		(= (remainder x 2) (remainder test 2))
; 	)

; 	(sp y (list 0))
; )


; (print (same-parity 1 2 3 4 5 6 7))


(define (same-parity2 x . y)
	(define (sp src)
		(print "sp: src: " src)
		(print "(null? src): " (null? src))
		(cond ((null? src) nil)
				  ((same-parity-single (car src)) (cons (car src) 
				  																			(sp (cdr src))))
				  (else (sp (cdr src)))
		)
	)
	(define (same-parity-single test)
		(= (remainder x 2) (remainder test 2))
	)

	(sp y)
)

; (print (same-parity2 1 2 3 4 5 6 7))


(define (scale-list items factor)
  (if (null? items)
      nil
      (cons (* (car items) factor)
            (scale-list (cdr items) factor))))
(print (scale-list (list 1 2 3 4 5) 10))
