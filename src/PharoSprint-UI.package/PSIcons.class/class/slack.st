icons
slack
	^ self icons at: #slack ifAbsentPut: [ PNGReadWriter formFromStream: self slackPNGByteArray readStream ]