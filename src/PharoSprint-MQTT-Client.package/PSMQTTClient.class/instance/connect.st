initialize-release
connect
	super connect.
	self chat 
		maxReconnectionDelay: self defaultMaxReconnectionDelay;
		connect; 
		listen