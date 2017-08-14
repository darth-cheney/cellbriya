as yet unclassified
direction: aNumberInDegrees magnitude: aNumber
	magnitude := aNumber.
	direction := self validateDirection: (aNumberInDegrees).
	self recalculateXY.