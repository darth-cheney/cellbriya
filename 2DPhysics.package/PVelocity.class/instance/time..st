accessing
time: aMillisecondValue
	"Cannot be zero"
	aMillisecondValue <= 0 ifTrue: [ 
		Exception signal: 'PVelocity will not accept a time value lass than or equal to zero'. ].
	time := aMillisecondValue asInteger.