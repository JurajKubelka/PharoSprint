announcement handling
handleCaseStateUpdatedAnnouncement: aPSCaseStateUpdatedAnnouncement 
	"Publish user activity (proposed/taken/done case) in a Discord channel."
	self ifDifferentUser: aPSCaseStateUpdatedAnnouncement actualState user do: [ ^ self ].
	DSWebhookClient new 
		url: self url;
		message: (self messageFromAnnouncement: aPSCaseStateUpdatedAnnouncement);
		username: 'Pharo Sprint App';
		avatarUrl: 'https://raw.githubusercontent.com/JurajKubelka/PharoSprint/master/assets/img/icon.png';
		supressNetworkErrors;
		post