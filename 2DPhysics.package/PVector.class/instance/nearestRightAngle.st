as yet unclassified
nearestRightAngle
	"Calculates the nearest right triangle's
	target angle relative to the X axis."
	((direction > 90) and: (direction < 180)) ifTrue: [ 
		^ (180 - direction) ].
	((direction > 180) and: (direction < 270)) ifTrue: [ 
		^ (direction - 180) ].
	(direction > 270) ifTrue: [ 
		^ (360 - direction) ].
	^ (self validateDirection: direction).