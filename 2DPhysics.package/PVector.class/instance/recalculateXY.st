as yet unclassified
recalculateXY
	"Recalculate the x y values based on a change in
	 the direction or magnitude"
	| absDirection xCoeff yCoeff |
	absDirection := self validateDirection: direction.
	xCoeff := 1.
	yCoeff := 1.
	(self isXNegativeFor: absDirection) ifTrue: [ xCoeff := -1 ].
	(self isYNegativeFor: absDirection) ifTrue: [ yCoeff := -1 ].
	
	"If direction is 90 or 270, x is 0 (its' vertical)"
	(#(90 270) includes: absDirection) 
		ifTrue: [ 
			x := 0. ]
		ifFalse: [ 
			x := (magnitude * (self nearestRightAngle degreesToRadians cos)) * xCoeff ].
	"If direction is 0 or 180, y is 0 (it's horizontal)"
	(#(0 180 360) includes: absDirection) 
		ifTrue: [ 
			y := 0 ]
		ifFalse: [ 
			y := (magnitude * (self nearestRightAngle degreesToRadians sin)) * yCoeff ].
	
	