utility
startZnServer
	serverRequests := OrderedCollection new.
	semaphore := Semaphore new.
	server := ZnServer startOn: 0.
	port := server serverSocket port.
	dispatcher := ZnDispatcherDelegate new.
	server delegate: dispatcher.
	dispatcher 
		map: '/' 
		to: [ :request :response | 
				serverRequests add: request. 
				semaphore signal.
				response entity: (ZnEntity text: '{"nonce": null, "attachments": [], "tts": false, "embeds": [{"color": 16711680, "type": "rich", "description": "user one has **done** the case [1 - case one](https://pharo.fogbugz.com/default.asp?1), *using [Pharo Sprint App](http://bit.ly/SprintWeb).*"}], "timestamp": "2018-01-31T13:10:21.747000+00:00", "mention_everyone": false, "webhook_id": "32478529514893312", "id": "408247637888704567", "pinned": false, "edited_timestamp": null, "author": {"username": "Pharo Sprint", "discriminator": "0000", "bot": true, "id": "5493660529514893312", "avatar": "40b5230cae4c3e0a8523134ffa5a7006"}, "mention_roles": [], "content": "", "channel_id": "234587121854545930", "mentions": [], "type": 0}') ].
	