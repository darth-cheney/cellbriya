initialization
isYNegativeFor: aNumberInDegrees
	"Returns a Boolean indicating if the value
	along the Y axis is negative (backwards) for
	the specified angle in degrees."
	^ ((aNumberInDegrees < 360) and: (aNumberInDegrees > 180)).