accessing
elasticity: aFloat
	(aFloat between: 0.0 and: 1.0) ifTrue: [ 
		elasticity := aFloat ].