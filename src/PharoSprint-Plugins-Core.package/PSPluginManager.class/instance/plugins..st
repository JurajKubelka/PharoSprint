accessing
plugins: aCollection 
	"Set available plugins and initialize client to all of them."
	aCollection do: [ :plugin | plugin client: self client ].
	plugins := aCollection.