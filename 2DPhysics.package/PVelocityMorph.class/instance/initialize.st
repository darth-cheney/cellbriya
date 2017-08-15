initialization
initialize
	super initialize.
	velocity := (PVelocity distance: 0 perMilliseconds: 1000 direction: 0).
	useGravity := false.
	announcer := Announcer new.
	bounced := false.
	elasticity := 0.9.
	^ self.