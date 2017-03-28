instance creation
newPublishHistory
	^ MQTTPublish new topic: 'sprint'; message: self newPublishHistoryContent; yourself