printing
prettyPrintOn: aStream
	aStream << 'Mock Plugin: '.
	self activation printOn: aStream.
	aStream << ', '.
	self deactivation printOn: aStream.