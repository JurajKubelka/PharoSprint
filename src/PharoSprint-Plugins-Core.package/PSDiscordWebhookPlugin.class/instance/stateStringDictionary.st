private
stateStringDictionary
	^ SmallDictionary new
		at: 'taken_proposed' put: 'left in the proposed list';
		at: 'done_proposed' put: 'returned back to the proposed list';
		at: 'done_taken' put: 'taken back';
		yourself