as yet unclassified
checkForBounce: aPoint
	| bottom worldBottom  worldTop worldRight worldLeft right| 
	bottom := (self height) + (aPoint y).
	right := (self width) + (aPoint x).
	worldBottom := (self owner bounds corner y).
	worldTop := (self owner bounds origin y).
	worldLeft := (self owner bounds origin x).
	worldRight := (self owner bounds corner x).
	(bottom >= worldBottom)
		ifTrue: [ 
			self position: (aPoint x)@(worldBottom - (self height)).
			bounced ifFalse: [ 
				self velocity direction: (180 + (self velocity direction)).
				bounced := true ].
			]
		ifFalse: [
			bounced := false.
			self position: aPoint].
	(right >= worldRight) ifTrue: [ 
		 self velocity direction: (180 + (self velocity direction))].
	((self position x) <= worldLeft) ifTrue: [ 
		self velocity direction: (180 + (self velocity direction)) ].
	((self position y) <= worldTop) ifTrue: [ 
		self velocity direction: (180 + (self velocity direction)) ].
	