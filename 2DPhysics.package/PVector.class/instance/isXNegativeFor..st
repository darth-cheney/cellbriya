testing
isXNegativeFor: aNumberInDegrees
	"Returns a Boolean indicating whether or not
	 the given degree value results in a negative
	 (backwards) value on the X axis."
	^ ((aNumberInDegrees > 90) and: (aNumberInDegrees < 270)).