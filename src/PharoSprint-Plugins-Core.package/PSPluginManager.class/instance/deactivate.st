actions
deactivate
	"Deactivate plugins."
	plugins ifNil: [ ^ self ].
	self plugins do: [ :plugin | plugin deactivate ]