announcement handling
handleFogBugzNetworkErrorAnnouncement: aFogBugzNetworkErrorAnnouncement 
	| message model |
	message := Text streamContents: [ :stream |
		stream withAttribute: (TextColor color: Color red) do: [  
			stream << 'Network Error: '.
			aFogBugzNetworkErrorAnnouncement exception printOn: stream.
		] ].
	model := self chooseDynamicModel.
	model info: message.
	self updateDynamicModelWith: model.