as yet unclassified
displayVelocity: aVelocity
	self contents: 
		(String streamContents: [ :stream | 
			stream
				nextPutAll: (aVelocity magnitude asString);
				nextPut: $ ;
				nextPutAll: 'px/';
				nextPutAll: ((aVelocity time) / 1000) asString;
				nextPut: $s;
				nextPutAll: ' | ';
				nextPutAll: (aVelocity direction asString);
				nextPutAll: '°' ]).