public
sendMessage: bytes toTopic: topicString success: successBlock error: errorBlock 
	results 
		add: #sendMessage:toTopic:success:error:;
		add: bytes;
		add: topicString