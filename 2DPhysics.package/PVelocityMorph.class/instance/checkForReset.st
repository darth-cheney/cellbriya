as yet unclassified
checkForReset
	"If this morph has gone well outside of the 
	bounds of its owner, reset at origin and set
	velocity to zero."
	| origin corner |
	origin := (self owner bounds) origin.
	corner := (self owner bounds) corner.
	((self position x) > (corner x))
		ifTrue: [ self reset ].
	((self position x) < (origin x))
		ifTrue: [ self reset ].
	((self position y) > (corner y))
		ifTrue: [ self reset ].
	((self position y) < (origin y))
		ifTrue: [ self reset ].