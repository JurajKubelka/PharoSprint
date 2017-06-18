adding
addCommand: aDSCommandExtension 
	"Add Discord Command Extension into the collection.
	The command is executed when a DSCommand is executed."
	^ mutex critical: [ self commands add: aDSCommandExtension ]