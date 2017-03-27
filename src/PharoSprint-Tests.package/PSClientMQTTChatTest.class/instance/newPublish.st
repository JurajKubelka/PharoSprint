instance creation
newPublish
	^ MQTTPublish new topic: 'sprint'; message: self newPublishContent; yourself