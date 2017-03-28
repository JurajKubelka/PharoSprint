instance creation
newPublishDone
	^ MQTTPublish new topic: 'sprint'; message: self newPublishDoneContent; yourself