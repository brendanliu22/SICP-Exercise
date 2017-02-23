
(define (reverse-internal src dst)
	(if (null? src)
		dst
		(reverse-internal (cdr src) (cons (car src) dst))
	)
)

(define (reverse src)
	(reverse-internal src (list))
)

(print (reverse (list 1 4 9 16 25)))