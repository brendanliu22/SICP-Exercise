;;; 1.11


;;; Recursive
(define (f-rec n)
	(if (< n 3) 
		n
		(+  (f-rec (- n 1))
			(* 2 (f-rec (- n 2)))
			(* 3 (f-rec (- n 3)))
		)
	)
)

;;; Iterative
(define (f n)
	(if (< n 3)
		n
		(f-iter 2 1 0 (- n 2))
	)
)

(define (f-iter a b c count) 
	(if (= count 0)
		a
		(f-iter 
			(+ a (* 2 b) (* 3 c)) 
			a 
			b
			(- count 1))
		)
)

(print "f(0) | rec: " (f-rec 0) " | iter: " (f 0))
(print "f(0) | rec: " (f-rec 1) " | iter: " (f 1))
(print "f(0) | rec: " (f-rec 2) " | iter: " (f 2))
(print "f(0) | rec: " (f-rec 3) " | iter: " (f 3))
(print "f(0) | rec: " (f-rec 4) " | iter: " (f 4))
(print "f(0) | rec: " (f-rec 5) " | iter: " (f 5))
(print "f(0) | rec: " (f-rec 6) " | iter: " (f 6))