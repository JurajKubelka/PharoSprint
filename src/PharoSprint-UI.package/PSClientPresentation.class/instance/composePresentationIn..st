building
composePresentationIn: browser
	^ browser tabulator
		row: #fogbugz size: PSFogBugzLoginModel inputTextHeight;
		row: [ :row | row column: #proposedAndAll; column: #taken; column: #done ];
		row: #details;
		with: [ :tabulator | 
			tabulator transmit to: #fogbugz; andShow: [ :composite |
				composite morph
					display: [ PSFogBugzLoginModel new buildWithSpec ] ] ];
		with: [ :tabulator |
			tabulator transmit to: #proposedAndAll; andShow: [ :composite | 
				composite 
					custom: (PSCaseProposedListPresentation new);
					custom: (PSCaseAllListPresentation new) ] ];
		with: [ :tabulator |
			tabulator transmit to: #taken; andShow: [ :composite | 
				composite custom: (PSCaseTakenListPresentation new) ] ];
		with: [ :tabulator |
			tabulator transmit to: #done; andShow: [ :composite | 
				composite custom: (PSCaseDoneListPresentation new) ] ];
		with: [ :tabulator |
			tabulator transmit from: #proposedAndAll; to: #details; andShow: [ :composite |
				self buildCaseIn: composite ] ];
		with: [ :tabulator |
			tabulator transmit from: #taken; to: #details; andShow: [ :composite |
				self buildCaseIn: composite ] ];
		with: [ :tabulator |
			tabulator transmit from: #done; to: #details; andShow: [ :composite |
				self buildCaseIn: composite ] ];
		yourself