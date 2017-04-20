tests
testPlugins4
	"All plugins should have client"
	self assert: manager plugins isCollection.
	self assert: manager plugins notEmpty.
	self assert: manager client notNil.
	self assert: (manager plugins allSatisfy: [ :plugin | plugin client == manager client ] ).