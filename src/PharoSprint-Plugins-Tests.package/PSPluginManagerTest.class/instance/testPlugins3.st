tests
testPlugins3
	"It should not include PSMockPlugin."
	self assert: (manager plugins allSatisfy: [ :plugin | plugin class ~= PSMockPlugin ]).