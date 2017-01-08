;;; 1.16


(define (expt b n)
	(expt-iter 1 b n)
	)
(define (expt-iter result b n)
	(cond ((= n 0) result)
		  ((= n 1) (* result b))
		  ((even? n) (expt-iter (* result (sq b)) (sq b) (/ (- n 2) 2)))
		  (else (expt-iter (* result (sq b) b) (sq b) (/ (- n 3) 2)))
		)
	)

;;; Testing
(define (expt-rec b n)
  (cond ((= n 0) 1)
        ((even? n) (sq (expt-rec b (/ n 2))))
        (else (* b (expt-rec b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0)
)

(define (sq a)
	(* a a)
)

(print (expt 2 10))

(define (testN n)
	(if (= (expt 2 n) (expt-rec 2 n))
		(print "2^" n " results match")
		(print "2^" n " results NOT match")
	)
)

(define (for i upper-limit)
	(testN i)
	(if (< i upper-limit)
		(for (+ i 1 ) upper-limit)
	)
)
(for 1 100)