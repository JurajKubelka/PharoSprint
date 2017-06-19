building
composePresentationIn: browser
	^ browser tabulator
		with: [ :tabulator |
			self composeLayout: tabulator ];
		with: [ :tabulator | 
			tabulator transmit to: #fogbugz; andShow: [ :composite |
				composite morph
					display: [ :client | 
						PSFogBugzInfoModel new fogbugz: client fogbugz; buildWithSpec ] ].
			tabulator transmit to: #proposedAndAll; andShow: [ :composite | 
				composite 
					custom: self newProposedListPresentation;
					"custom: PSCaseReviewListPresentation new;"
					custom: self newAllListPresentation ].
			tabulator transmit to: #taken; andShow: [ :composite | 
				composite custom: self newTakenListPresentation ].
			tabulator transmit to: #done; andShow: [ :composite | 
				composite custom: self newDoneListPresentation ].
			"keep only one selection active (deselect the other lists on click)"
			tabulator transmit
				from: #proposedAndAll; to: #taken port: #selection; transformed: [ nil ].
			tabulator transmit
				from: #proposedAndAll; to: #done port: #selection; transformed: [ nil ].
			tabulator transmit
				from: #taken; to: #proposedAndAll port: #selection; transformed: [ nil ].
			tabulator transmit
				from: #taken; to: #done port: #selection; transformed: [ nil ].
			tabulator transmit
				from: #done; to: #proposedAndAll port: #selection; transformed: [ nil ].
			tabulator transmit
				from: #done; to: #taken port: #selection; transformed: [ nil ].
			"transmit details"
			tabulator transmit 
				from: #proposedAndAll; to: #details;
				from: #taken; to: #details;
				from: #done; to: #details; 
				transformed: [ :x :y :z :ports | x ifNil: [ y ifNil: [ z ] ] ];
				andShow: [ :composite | self buildCaseIn: composite ] ];
		yourself