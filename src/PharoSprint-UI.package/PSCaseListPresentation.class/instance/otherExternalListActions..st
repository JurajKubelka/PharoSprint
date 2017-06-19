private - build ui
otherExternalListActions: aGLMFastListPresentation 
	"Each list can be configured by methods with <pharoSprintListExtensionOrder: 1> pragma.
	The argument is a number that defines the execution order for the collection of pragmas.
	Each extension is a message that receives one argument: the list presentation."
	self listExtensions do: [ :eachPragma | 
		self perform: eachPragma methodSelector with: aGLMFastListPresentation ]