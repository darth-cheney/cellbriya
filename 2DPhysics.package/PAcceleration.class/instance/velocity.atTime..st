as yet unclassified
velocity: initialVelocity atTime: aMillisecondValue
	"Respond with a vector at the specified
	 time given an initial velocity."
	| ratio | 
	ratio := aMillisecondValue / time.
	^ (initialVelocity + self) * ratio.