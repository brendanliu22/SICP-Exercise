; 2.28

(define (fringe root-node)
	(let (
			(left (car root-node))
		  	(right (cdr root-node))
		 )
		(append left right)
	)
)

(define x (list (list 1 2) (list 3 4)))
(print (fringe x))