accessing
validateDirection: aNumber
	"Ensures that all degree values are 0 to less than 360"
	(aNumber < 0) ifTrue: [ ^ (aNumber abs) ].
	(aNumber = 360) ifTrue: [ ^ 0 ].
	(aNumber > 360) ifTrue: [ 
		^ (aNumber % 360) ].
	^ aNumber.