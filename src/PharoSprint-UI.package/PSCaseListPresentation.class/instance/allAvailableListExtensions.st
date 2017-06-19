accessing
allAvailableListExtensions
	"Get list of methods that somehow configure the list presentation.
	See the otherExternalListActions: method for more details."
	^ Pragma 
		allNamed: #pharoSprintListExtensionOrder: 
		from: self class 
		to: PSCaseListPresentation
		sortedByArgument: 1 