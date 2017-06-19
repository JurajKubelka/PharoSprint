accessing
listExtensions
	"Get list of methods that somehow configure the list presentation.
	See the otherExternalListActions: method for more details."
	listExtensions ifNil: [ self listExtensions: self allAvailableListExtensions ].
	^ listExtensions