tests
testPlugins
	client := self newClient.
	plugin := PSMockPlugin new.
	client pluginManager plugins: (Array with: plugin).
	self assert: client pluginManager plugins notEmpty.