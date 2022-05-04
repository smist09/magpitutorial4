//
// Example function to calculate the distance
// between two points in double precision
// floating point.
//
// Inputs:
//	X0 - pointer to the 4 FP numbers
//		 they are x1, y1, x2, y2
// Outputs:
//	D0 - the length (as double precision FP)

.global distance // Allow function to be called by others

distance:	

	// load all 4 numbers
	LDP	D0, D1, [X0], #16
	LDP	D2, D3, [X0]

	// calc D4 = x2 - x1
	FSUB	D4, D2, D0
	// calc D5 = y2 - y1
	FSUB	D5, D3, D1
	// calc D4 = D4 * D4 (x2-X1)^2
	FMUL	D4, D4, D4
	// calc D5 = D5 * D5 (Y2-Y1)^2
	FMUL	D5, D5, D5
	// calc D4 = D4 + D5
	FADD	D4, D4, D5
	// calc sqrt(D4)
	FSQRT	D0, D4

	RET

