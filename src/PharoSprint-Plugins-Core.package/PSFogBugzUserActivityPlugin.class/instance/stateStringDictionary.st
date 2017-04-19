private
stateStringDictionary
	"Return dictionary of different message that are displayed to user."
	^ SmallDictionary new
		at: 'taken_proposed' put: 'left the case in the proposed list';
		at: 'done_proposed' put: 'returned the case back to the proposed list';
		at: 'done_taken' put: 'taken the case back';
		yourself