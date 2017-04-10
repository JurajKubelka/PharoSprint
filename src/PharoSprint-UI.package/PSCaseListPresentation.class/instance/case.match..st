private
case: aPSCase match: aString 
	"Return true if aPSCase should be displayed whilte using aString filter pattern; false otherwise."
	^ ((( aPSCase printString includesSubstring: aString caseSensitive: false ) or: [ 
		aPSCase status includesSubstring: aString caseSensitive: false ]) or: [ 
			aPSCase username includesSubstring: aString caseSensitive: false ]) or: [ 
				aPSCase events anySatisfy: [ :event | 
					event username includesSubstring: aString caseSensitive: false ] ]