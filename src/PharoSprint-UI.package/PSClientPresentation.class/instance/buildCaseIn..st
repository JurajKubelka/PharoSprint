private - building
buildCaseIn: composite
	"You can overwrite it"
	^ composite text
		display: [ :case | self detailedCaseTextFor: case ];
		format: #asText;
		yourself