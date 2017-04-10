as yet unclassified
case: aPSCase match: aString 
	^ ((( aPSCase printString includesSubstring: aString caseSensitive: false ) or: [ 
		aPSCase status includesSubstring: aString caseSensitive: false ]) or: [ 
			aPSCase username includesSubstring: aString caseSensitive: false ]) or: [ 
				aPSCase events anySatisfy: [ :event | 
					event username includesSubstring: aString caseSensitive: false ] ]