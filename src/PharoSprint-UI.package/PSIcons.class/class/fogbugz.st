icons
fogbugz
	^ self icons at: #fogbugz ifAbsentPut: [ PNGReadWriter formFromStream: self fogbugzPNGByteArray readStream ]