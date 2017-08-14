as yet unclassified
checkForBounce: aPoint
	| bottom worldBottom | 
	bottom := (self height) + (aPoint y).
	worldBottom := (self owner bounds corner y).
	((bottom >= worldBottom) and: (bounced not))
		ifTrue: [ 
			self position: (aPoint x)@(worldBottom - (self height)).
			self velocity direction: (180 + (self velocity direction)).
			bounced := true.
			useGravity := false]
		ifFalse: [
			bounced := false.
			self position: aPoint].