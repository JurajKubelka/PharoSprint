accessing
detailedCaseTextFor: aPSCase 
	^ Text streamContents: [ :stream | | users |
		stream 
			<< aPSCase title
			<< ', opened '
			<< (self humanReadableDuration:
				DateAndTime now - aPSCase dateOpened)
					humanReadablePrintString
			<< ' ago by '.
		self addUser: aPSCase user toTextStream: stream.
		stream << ', and contributed by '.
		users := aPSCase events collect: #user as: Bag.
		users := users reject: #isBot.
		users sortedCounts do: [ :assoc | | occurrences user |
			occurrences := assoc key.
			user := assoc value.
			self addUser: user toTextStream: stream.
			stream << ' (' << occurrences << 'x)'.
			 ] separatedBy: [ stream << ', ' ].
		stream << '.'
	]