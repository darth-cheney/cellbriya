accessing
reset
	Transcript
		show: (self velocity direction);
		cr;
		show: (self velocity magnitude).
	self velocity: (PVelocity new).
	self gravity: false.
	self position: (0@0).