testing
= aVector
	"See comment for >"
	aVector isVector ifFalse: [ ^ false ].
	^ ((x@y) = ((aVector x)@(aVector y))).