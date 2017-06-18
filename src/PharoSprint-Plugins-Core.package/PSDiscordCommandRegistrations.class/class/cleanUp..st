cleanup
cleanUp: aggressive
	"Only delete default instance when being aggressive"
	aggressive ifTrue: [ self reset ]