accessing
atTime: aMillisecondValue
	"Determine the XY pair along the vector that should
	result from the millisecond value. Divide by the current time
	setting and then multiply the resulting ratio to the magnitude
	to get the new (temporary) vector."
	| ratio tmpVec |
	ratio := aMillisecondValue / time.
	tmpVec := PVector magnitude: (ratio * magnitude) direction: direction.
	^ (tmpVec x)@(tmpVec y).