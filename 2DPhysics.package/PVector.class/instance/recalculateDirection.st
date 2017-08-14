as yet unclassified
recalculateDirection
	"Recalculate the direction angle, which
	is needed if the X or Y values change."
	| tan |
	tan := (y / x).
	direction := (self validateDirection: (tan arcTan radiansToDegrees)).