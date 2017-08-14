arithmetic
+ aVector
	"Add the values of the sender to myself
	 and recalculate"
	aVector isVector ifFalse: [ 
		Exception signal: 'Can only add PVectors to other PVectors!' ].
	^ (self class x: ((aVector x) + x) y: ((aVector y) + y)).