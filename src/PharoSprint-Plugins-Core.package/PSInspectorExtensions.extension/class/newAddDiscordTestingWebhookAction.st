*PharoSprint-Plugins-Core
newAddDiscordTestingWebhookAction
	^ GLMGenericAction new 
		action: [ :presentation :object | 
			object addPlugin: PSDiscordWebhookPlugin newWithTestingWebhookUrl.
			presentation update ];
		title: 'Add Discord Testing Webhook' translated;
		yourself