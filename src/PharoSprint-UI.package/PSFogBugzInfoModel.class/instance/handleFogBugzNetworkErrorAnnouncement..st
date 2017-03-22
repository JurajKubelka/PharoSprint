announcement handling
handleFogBugzNetworkErrorAnnouncement: aFogBugzNetworkErrorAnnouncement 
	| message |
	message := Text streamContents: [ :stream |
		stream withAttribute: (TextColor color: Color red) do: [  
			stream << 'Network Error: '.
			aFogBugzNetworkErrorAnnouncement exception printOn: stream.
		] ].
	loginModel info: message.
	self updateDynamicModelWith: loginModel.