announcement handling
handleFogBugzLoginFailedAnnouncement: aFogBugzLoginFailedAnnouncement 
	| message |
	message := Text streamContents: [ :stream |
		stream withAttribute: (TextColor color: Color red) do: [  
			stream 
				<< 'Login Failed: '
				<< aFogBugzLoginFailedAnnouncement exceptionMessage
		] ].
	messageModel 
		info: message;
		acceptBlock: [ self updateDynamicModelWith: loginModel ].
	self updateDynamicModelWith: messageModel.