accessing
drawOn: aCanvas
	"Draw a line from the center of the morph
	that indicates the velocity vector direction"
	
	"First draw the ellipse"
	aCanvas 
		fillOval: bounds 
		fillStyle: self fillStyle 
		borderWidth: borderWidth  
		borderColor: borderColor.
	
	"Now draw the line"
	aCanvas
		line: (self center)
		to: ((self center) + (velocity coordinates))
		color: Color black.