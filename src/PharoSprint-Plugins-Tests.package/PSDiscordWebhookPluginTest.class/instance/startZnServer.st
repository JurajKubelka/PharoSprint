tests
startZnServer
	serverRequests := OrderedCollection new.
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	dispatcher := ZnDispatcherDelegate new.
	server delegate: dispatcher.
	dispatcher 
		map: '/' 
		to: [ :request :response | 
				serverRequests add: request. 
				response entity: (ZnEntity text: 'ROOT') ].
	