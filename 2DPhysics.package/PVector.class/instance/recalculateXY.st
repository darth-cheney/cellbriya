as yet unclassified
recalculateXY
	"Recalculate the x y values based on a change in
	 the direction or magnitude"
	
	"If direction is 90 or 270, x is 0 (its' vertical)"
	(#(90 270) includes: direction) 
		ifTrue: [ 
			x := 0. ]
		ifFalse: [ 
			x := (magnitude * (self nearestRightAngle degreesToRadians cos)) ].
	"If direction is 0 or 180, y is 0 (it's horizontal)"
	(#(0 180 360) includes: direction) 
		ifTrue: [ 
			y := 0 ]
		ifFalse: [ 
			y := (magnitude * (self nearestRightAngle degreesToRadians sin)) ].
	
	