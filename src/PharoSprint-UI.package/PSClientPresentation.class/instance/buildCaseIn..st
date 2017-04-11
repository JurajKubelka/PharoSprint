private - building
buildCaseIn: composite
	"You can overwrite it"
	^ composite text
		display: [ :case | case title ];
		yourself