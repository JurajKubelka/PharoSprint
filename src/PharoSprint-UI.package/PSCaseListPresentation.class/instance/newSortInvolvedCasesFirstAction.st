menu actions
newSortInvolvedCasesFirstAction
	"Display involved cases first, then the others"
	^ GLMGenericAction new
		action: [ :list :sprint | 
				list sortBlock: [ :a :b | | boolA boolB |
					boolA := (a includesEventOfUser: sprint fogbugzUser).
					boolB := (b includesEventOfUser: sprint fogbugzUser).
					(boolA and: [ boolB ]) 
						ifTrue: [ a id > b id ]
						ifFalse: [ 
							(boolA not and: [ boolB not ]) 
								ifTrue: [ a status < b status ]
								ifFalse: [ boolA or: [ boolB not ] ] ] ].
				list update ];
		title: 'My involved cases first';
		help: 'Display cases your are involved on the top of the list';
		category: 'Sort';
		showTitle;
		yourself
