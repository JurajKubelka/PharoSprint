private
stateStringDictionary
	"Return dictionary of different message that are displayed to user."
	^ SmallDictionary new
		at: 'taken_proposed' put: '**left** the case {1} **in the proposed list**';
		at: 'done_proposed' put: '**returned** the case {1} **back to the proposed list**';
		at: 'done_taken' put: '**taken** the case {1} **back**';
		at: 'proposed_undefined' put: '**left** the case {1} **in the all list**';
		at: 'taken_undefined' put: '**returned** the case {1} **back to the all list**';
		yourself