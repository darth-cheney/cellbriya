stepping and presenter
step
	| nextPosition |
	useGravity ifTrue: [ 
		velocity := velocity + (PConstants gravity) ].
	nextPosition := (velocity origin: (self position) positionAtTime: (self stepTime)).
	self checkForBounce: nextPosition.
	self announcer announce: VelocityAnnouncement new.
	self checkForReset.
	