as yet unclassified
humanReadableDuration: aDuration 
	(aDuration roundTo: 1 day) isZero ifFalse: [ ^ aDuration roundTo: 1 day ].
	(aDuration roundTo: 1 hour) isZero ifFalse: [ ^ aDuration roundTo: 1 hour ].
	(aDuration roundTo: 1 minute) isZero ifFalse: [ ^ aDuration roundTo: 1 minute ].
	^ aDuration roundTo: 1 second