tests
testIsPluginClientFalse
	client := PSClient new.
	self deny: client isPluginClient.