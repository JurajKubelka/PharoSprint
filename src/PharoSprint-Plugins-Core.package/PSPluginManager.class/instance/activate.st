actions
activate
	"Activate all available plugins."
	self plugins do: [ :plugin | plugin activate ]