private
stateStringDictionary
	"Return dictionary of different message that are displayed to user."
	^ SmallDictionary new
		at: 'taken_proposed' put: '<b>left</b> the case in the proposed list';
		at: 'done_proposed' put: '<b>returned</b> the case <b>back</b> to the proposed list';
		at: 'done_taken' put: '<b>taken</b> the case <b>back</b>';
		at: 'proposed_undefined' put: '<b>left</b> the case in the all list';
		at: 'taken_undefined' put: '<b>returned</b> the case <b>back</b> to the all list';
		yourself