instance creation
newPublishTaken
	^ MQTTPublish new topic: 'sprint'; message: self newPublishTakenContent; yourself