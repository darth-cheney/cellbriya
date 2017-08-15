as yet unclassified
recalculateDirection
	"Recalculate the direction angle, which
	is needed if the X or Y values change."
	| sin |
	sin := (y / magnitude).
	direction := (self validateDirection: (sin arcSin radiansToDegrees)).