instance creation
newPublishUndefined
	^ MQTTPublish new topic: 'sprint'; message: self newPublishUndefinedContent; yourself