actions
activate
	"Activate all available plugins."
	self plugins do: [ :plugin | plugin client: self client; activate ]