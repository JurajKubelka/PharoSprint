accessing
plugins
	plugins ifNil: [ self plugins: self allAvailablePlugins ].
	^ plugins