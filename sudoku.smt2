; Variable declarations
(declare-fun p_1_1_1 () Bool) (declare-fun p_1_1_2 () Bool) (declare-fun p_1_1_3 () Bool) (declare-fun p_1_1_4 () Bool)
(declare-fun p_1_2_1 () Bool) (declare-fun p_1_2_2 () Bool) (declare-fun p_1_2_3 () Bool) (declare-fun p_1_2_4 () Bool)
(declare-fun p_1_3_1 () Bool) (declare-fun p_1_3_2 () Bool) (declare-fun p_1_3_3 () Bool) (declare-fun p_1_3_4 () Bool)
(declare-fun p_1_4_1 () Bool) (declare-fun p_1_4_2 () Bool) (declare-fun p_1_4_3 () Bool) (declare-fun p_1_4_4 () Bool)

(declare-fun p_2_1_1 () Bool) (declare-fun p_2_1_2 () Bool) (declare-fun p_2_1_3 () Bool) (declare-fun p_2_1_4 () Bool)
(declare-fun p_2_2_1 () Bool) (declare-fun p_2_2_2 () Bool) (declare-fun p_2_2_3 () Bool) (declare-fun p_2_2_4 () Bool)
(declare-fun p_2_3_1 () Bool) (declare-fun p_2_3_2 () Bool) (declare-fun p_2_3_3 () Bool) (declare-fun p_2_3_4 () Bool)
(declare-fun p_2_4_1 () Bool) (declare-fun p_2_4_2 () Bool) (declare-fun p_2_4_3 () Bool) (declare-fun p_2_4_4 () Bool)

(declare-fun p_3_1_1 () Bool) (declare-fun p_3_1_2 () Bool) (declare-fun p_3_1_3 () Bool) (declare-fun p_3_1_4 () Bool)
(declare-fun p_3_2_1 () Bool) (declare-fun p_3_2_2 () Bool) (declare-fun p_3_2_3 () Bool) (declare-fun p_3_2_4 () Bool)
(declare-fun p_3_3_1 () Bool) (declare-fun p_3_3_2 () Bool) (declare-fun p_3_3_3 () Bool) (declare-fun p_3_3_4 () Bool)
(declare-fun p_3_4_1 () Bool) (declare-fun p_3_4_2 () Bool) (declare-fun p_3_4_3 () Bool) (declare-fun p_3_4_4 () Bool)

(declare-fun p_4_1_1 () Bool) (declare-fun p_4_1_2 () Bool) (declare-fun p_4_1_3 () Bool) (declare-fun p_4_1_4 () Bool)
(declare-fun p_4_2_1 () Bool) (declare-fun p_4_2_2 () Bool) (declare-fun p_4_2_3 () Bool) (declare-fun p_4_2_4 () Bool)
(declare-fun p_4_3_1 () Bool) (declare-fun p_4_3_2 () Bool) (declare-fun p_4_3_3 () Bool) (declare-fun p_4_3_4 () Bool)
(declare-fun p_4_4_1 () Bool) (declare-fun p_4_4_2 () Bool) (declare-fun p_4_4_3 () Bool) (declare-fun p_4_4_4 () Bool)

(assert 
(and 
; predetermined numbers in cells
p_2_4_4 p_3_2_3

; exactly one number is put on each cell.
(or 
	(and p_1_1_1 (not p_1_1_2) (not p_1_1_3) (not p_1_1_4))
	(and p_1_1_2 (not p_1_1_1) (not p_1_1_3) (not p_1_1_4))
	(and p_1_1_3 (not p_1_1_1) (not p_1_1_2) (not p_1_1_4))
	(and p_1_1_4 (not p_1_1_1) (not p_1_1_2) (not p_1_1_3))
)
(or 
	(and p_1_2_1 (not p_1_2_2) (not p_1_2_3) (not p_1_2_4))
	(and p_1_2_2 (not p_1_2_1) (not p_1_2_3) (not p_1_2_4))
	(and p_1_2_3 (not p_1_2_1) (not p_1_2_2) (not p_1_2_4))
	(and p_1_2_4 (not p_1_2_1) (not p_1_2_2) (not p_1_2_3))
)
(or 
	(and p_1_3_1 (not p_1_3_2) (not p_1_3_3) (not p_1_3_4))
	(and p_1_3_2 (not p_1_3_1) (not p_1_3_3) (not p_1_3_4))
	(and p_1_3_3 (not p_1_3_1) (not p_1_3_2) (not p_1_3_4))
	(and p_1_3_4 (not p_1_3_1) (not p_1_3_2) (not p_1_3_3))
)
(or 
	(and p_1_4_1 (not p_1_4_2) (not p_1_4_3) (not p_1_4_4))
	(and p_1_4_2 (not p_1_4_1) (not p_1_4_3) (not p_1_4_4))
	(and p_1_4_3 (not p_1_4_1) (not p_1_4_2) (not p_1_4_4))
	(and p_1_4_4 (not p_1_4_1) (not p_1_4_2) (not p_1_4_3))
)
(or 
	(and p_2_1_1 (not p_2_1_2) (not p_2_1_3)(not p_2_1_4))
	(and p_2_1_2 (not p_2_1_1) (not p_2_1_3) (not p_2_1_4))
	(and p_2_1_3 (not p_2_1_1) (not p_2_1_2) (not p_2_1_4))
	(and p_2_1_4 (not p_2_1_1) (not p_2_1_2) (not p_2_1_3))
)

(or 
	(and p_2_2_1 (not p_2_2_2) (not p_2_2_3) (not p_2_2_4))
	(and p_2_2_2 (not p_2_2_1) (not p_2_2_3) (not p_2_2_4))
	(and p_2_2_3 (not p_2_2_1) (not p_2_2_2) (not p_2_2_4))
	(and p_2_2_4 (not p_2_2_1) (not p_2_2_2) (not p_2_2_3))
)

(or 
	(and p_2_3_1 (not p_2_3_2) (not p_2_3_3) (not p_2_3_4))
	(and p_2_3_2 (not p_2_3_1) (not p_2_3_3) (not p_2_3_4))
	(and p_2_3_3 (not p_2_3_1) (not p_2_3_2) (not p_2_3_4))
	(and p_2_3_4 (not p_2_3_1) (not p_2_3_2) (not p_2_3_3))
)

(or 
	(and p_2_4_1 (not p_2_4_2) (not p_2_4_3) (not p_2_4_4))
	(and p_2_4_2 (not p_2_4_1) (not p_2_4_3) (not p_2_4_4))
	(and p_2_4_3 (not p_2_4_1) (not p_2_4_2) (not p_2_4_4))
	(and p_2_4_4 (not p_2_4_1) (not p_2_4_2) (not p_2_4_3))
)

(or 
	(and p_3_1_1 (not p_3_1_2) (not p_3_1_3) (not p_3_1_4))
	(and p_3_1_2 (not p_3_1_1) (not p_3_1_3) (not p_3_1_4))
	(and p_3_1_3 (not p_3_1_1) (not p_3_1_2) (not p_3_1_4))
	(and p_3_1_4 (not p_3_1_1) (not p_3_1_2) (not p_3_1_3))
)

(or 
	(and p_3_2_1 (not p_3_2_2) (not p_3_2_3) (not p_3_2_4))
	(and p_3_2_2 (not p_3_2_1) (not p_3_2_3) (not p_3_2_4))
	(and p_3_2_3 (not p_3_2_1) (not p_3_2_2) (not p_3_2_4))
	(and p_3_2_4 (not p_3_2_1) (not p_3_2_2) (not p_3_2_3))
)

(or 
	(and p_3_3_1 (not p_3_3_2) (not p_3_3_3) (not p_3_3_4))
	(and p_3_3_2 (not p_3_3_1) (not p_3_3_3) (not p_3_3_4))
	(and p_3_3_3 (not p_3_3_1) (not p_3_3_2) (not p_3_3_4))
	(and p_3_3_4 (not p_3_3_1) (not p_3_3_2) (not p_3_3_3))
)

(or 
	(and p_3_4_1 (not p_3_4_2) (not p_3_4_3) (not p_3_4_4))
	(and p_3_4_2 (not p_3_4_1) (not p_3_4_3) (not p_3_4_4))
	(and p_3_4_3 (not p_3_4_1) (not p_3_4_2) (not p_3_4_4))
	(and p_3_4_4 (not p_3_4_1) (not p_3_4_2) (not p_3_4_3))
)

(or 
	(and p_4_1_1 (not p_4_1_2) (not p_4_1_3) (not p_4_1_4))
	(and p_4_1_2 (not p_4_1_1) (not p_4_1_3) (not p_4_1_4))
	(and p_4_1_3 (not p_4_1_1) (not p_4_1_2) (not p_4_1_4))
	(and p_4_1_4 (not p_4_1_1) (not p_4_1_2) (not p_4_1_3))
)

(or 
	(and p_4_2_1 (not p_4_2_2) (not p_4_2_3) (not p_4_2_4))
	(and p_4_2_2 (not p_4_2_1) (not p_4_2_3) (not p_4_2_4))
	(and p_4_2_3 (not p_4_2_1) (not p_4_2_2) (not p_4_2_4))
	(and p_4_2_4 (not p_4_2_1) (not p_4_2_2) (not p_4_2_3))
)

(or 
	(and p_4_3_1 (not p_4_3_2) (not p_4_3_3) (not p_4_3_4))
	(and p_4_3_2 (not p_4_3_1) (not p_4_3_3) (not p_4_3_4))
	(and p_4_3_3 (not p_4_3_1) (not p_4_3_2) (not p_4_3_4))
	(and p_4_3_4 (not p_4_3_1) (not p_4_3_2) (not p_4_3_3))
)

(or 
	(and p_4_4_1 (not p_4_4_2) (not p_4_4_3) (not p_4_4_4))
	(and p_4_4_2 (not p_4_4_1) (not p_4_4_3) (not p_4_4_4))
	(and p_4_4_3 (not p_4_4_1) (not p_4_4_2) (not p_4_4_4))
	(and p_4_4_4 (not p_4_4_1) (not p_4_4_2) (not p_4_4_3))
)

; each of 1,2,3,4 appears in each row
(or p_1_1_1 p_1_2_1 p_1_3_1 p_1_4_1)
(or p_2_1_1 p_2_2_1 p_2_3_1 p_2_4_1)
(or p_3_1_1 p_3_2_1 p_3_3_1 p_3_4_1)
(or p_4_1_1 p_4_2_1 p_4_3_1 p_4_4_1)

(or p_1_1_2 p_1_2_2 p_1_3_2 p_1_4_2)
(or p_2_1_2 p_2_2_2 p_2_3_2 p_2_4_2)
(or p_3_1_2 p_3_2_2 p_3_3_2 p_3_4_2)
(or p_4_1_2 p_4_2_2 p_4_3_2 p_4_4_2)

(or p_1_1_3 p_1_2_3 p_1_3_3 p_1_4_3)
(or p_2_1_3 p_2_2_3 p_2_3_3 p_2_4_3)
(or p_3_1_3 p_3_2_3 p_3_3_3 p_3_4_3)
(or p_4_1_3 p_4_2_3 p_4_3_3 p_4_4_3)

(or p_1_1_4 p_1_2_4 p_1_3_4 p_1_4_4)
(or p_2_1_4 p_2_2_4 p_2_3_4 p_2_4_4)
(or p_3_1_4 p_3_2_4 p_3_3_4 p_3_4_4)
(or p_4_1_4 p_4_2_4 p_4_3_4 p_4_4_4)

; each of 1,2,3,4 appears in each column
(or p_1_1_1 p_2_1_1 p_3_1_1 p_4_1_1)
(or p_1_2_1 p_2_2_1 p_3_2_1 p_4_2_1)
(or p_1_3_1 p_2_3_1 p_3_3_1 p_4_3_1)
(or p_1_4_1 p_2_4_1 p_3_4_1 p_4_4_1)

(or p_1_1_2 p_2_1_2 p_3_1_2 p_4_1_2)
(or p_1_2_2 p_2_2_2 p_3_2_2 p_4_2_2)
(or p_1_3_2 p_2_3_2 p_3_3_2 p_4_3_2)
(or p_1_4_2 p_2_4_2 p_3_4_2 p_4_4_2)

(or p_1_1_3 p_2_1_3 p_3_1_3 p_4_1_3)
(or p_1_2_3 p_2_2_3 p_3_2_3 p_4_2_3)
(or p_1_3_3 p_2_3_3 p_3_3_3 p_4_3_3)
(or p_1_4_3 p_2_4_3 p_3_4_3 p_4_4_3)

(or p_1_1_4 p_2_1_4 p_3_1_4 p_4_1_4)
(or p_1_2_4 p_2_2_4 p_3_2_4 p_4_2_4)
(or p_1_3_4 p_2_3_4 p_3_3_4 p_4_3_4)
(or p_1_4_4 p_2_4_4 p_3_4_4 p_4_4_4)

; each of 1,2,3,4 appears in each 2*2 subgrid
(or p_1_1_1 p_1_2_1 p_2_1_1 p_2_2_1)
(or p_1_3_1 p_2_3_1 p_1_4_1 p_2_4_1)
(or p_3_1_1 p_3_2_1 p_4_1_1 p_4_2_1)
(or p_3_3_1 p_3_4_1 p_4_3_1 p_4_4_1)

(or p_1_1_2 p_1_2_2 p_2_1_2 p_2_2_2)
(or p_1_3_2 p_2_3_2 p_1_4_2 p_2_4_2)
(or p_3_1_2 p_3_2_2 p_4_1_2 p_4_2_2)
(or p_3_3_2 p_3_4_2 p_4_3_2 p_4_4_2)

(or p_1_1_3 p_1_2_3 p_2_1_3 p_2_2_3)
(or p_1_3_3 p_2_3_3 p_1_4_3 p_2_4_3)
(or p_3_1_3 p_3_2_3 p_4_1_3 p_4_2_3)
(or p_3_3_3 p_3_4_3 p_4_3_3 p_4_4_3)

(or p_1_1_4 p_1_2_4 p_2_1_4 p_2_2_4)
(or p_1_3_4 p_2_3_4 p_1_4_4 p_2_4_4)
(or p_3_1_4 p_3_2_4 p_4_1_4 p_4_2_4)
(or p_3_3_4 p_3_4_4 p_4_3_4 p_4_4_4)

; each of 1,2,3,4 appears in the main diagonal
(or p_1_1_1 p_2_2_1 p_3_3_1 p_4_4_1)
(or p_1_1_2 p_2_2_2 p_3_3_2 p_4_4_2)
(or p_1_1_3 p_2_2_3 p_3_3_3 p_4_4_3)
(or p_1_1_4 p_2_2_4 p_3_3_4 p_4_4_4)

; each of 1,2,3,4 appears in the anti-diagonal
(or p_1_4_1 p_2_3_1 p_3_2_1 p_4_1_1)
(or p_1_4_2 p_2_3_2 p_3_2_2 p_4_1_2)
(or p_1_4_3 p_2_3_3 p_3_2_3 p_4_1_3)
(or p_1_4_4 p_2_3_4 p_3_2_4 p_4_1_4)

)
)

(check-sat)
(get-model)