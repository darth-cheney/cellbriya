testing
< anObject
	"For now, we base all comparisons using a point
	 of the XY pairs on each. Only works on other PVectors"
	anObject isVector ifFalse: [ ^ false ].
	^ ((x@y) < ((anObject x)@(anObject y))).