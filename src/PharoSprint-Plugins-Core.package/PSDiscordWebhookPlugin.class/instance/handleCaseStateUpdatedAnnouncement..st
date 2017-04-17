announcement handling
handleCaseStateUpdatedAnnouncement: aPSCaseStateUpdatedAnnouncement 
	"Publish user activity (proposed/taken/done case) in a Discord channel."
	DSWebhookClient new 
		url: self url;
		message: (self messageFromAnnouncement: aPSCaseStateUpdatedAnnouncement);
		username: 'Pharo Sprint App';
		avatarUrl: 'https://github.com/JurajKubelka/PharoSprint/blob/master/assets/img/case-info.png';
		post