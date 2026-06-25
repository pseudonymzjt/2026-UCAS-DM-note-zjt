; function declarations
(declare-fun p (Int Int Int) Bool)
(assert
(and
; all entries p(i, j, k) is false, except for all entries 1 <= i,j,k<=4
(forall
((i (Int))(j (Int)) (k (Int)))
(=>
(or (< i 1) (< 4 i) (< j 1) (< 4 j) (< k 1) (< 4 k) )
(not (p i j k))
))
; exactly one number is put on each cell
(forall
((i (Int))(j (Int)))
(=>
(and (<= 1 i) (<= i 4) (<= 1 j) (<= j 4))
(exists ((k (Int)))
(and (<= 1 k) (<= k 4) (p i j k)
(forall ((k1 (Int))) (=> (and (<= 1 k1) (<= k1 4) (not (= k k1) )) (not (p i j
k1))) )
))))

; each of 1,2,3,4 appears in each row
(forall
((k (Int))(i (Int)))
(=>
(and (<= 1 k) (<= k 4) (<= 1 i) (<= i 4))
(exists ((j (Int)))
(and (<= 1 j) (<= j 4) (p i j k))
)))
; each of 1,2,3,4 appears in each column
(forall
((k (Int))(j (Int)))
(=>
(and (<= 1 k) (<= k 4) (<= 1 j) (<= j 4))
(exists ((i (Int)))
(and (<= 1 i) (<= i 4) (p i j k))
)))

; each of 1,2,3,4 appears in each 2*2 subgrid
(forall
((k (Int))(i (Int))(j (Int)))
(=>
(and (<= 1 k) (<= k 4) (<= 0 i) (<= i 1) (<= 0 j) (<= j 1))
(exists ((i1 (Int)) (j1 (Int)))
(and (<= 1 i1) (<= i1 2) (<= 1 j1) (<= j1 2) (p (+ (* 2 i) i1) (+ (* 2 j) j1) k))
)))
; predetermined numbers in cells
(p 1 3 2) (p 2 1 2) (p 2 4 4) (p 3 2 3)
))
(check-sat)
(get-model)