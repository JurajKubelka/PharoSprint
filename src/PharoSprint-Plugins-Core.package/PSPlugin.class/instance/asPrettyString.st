converting
asPrettyString
	"Return a readable string."
	^ String streamContents: [ :aStream |
		self prettyPrintOn: aStream ]