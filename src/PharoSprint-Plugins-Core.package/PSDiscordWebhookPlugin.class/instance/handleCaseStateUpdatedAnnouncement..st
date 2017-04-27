announcement handling
handleCaseStateUpdatedAnnouncement: aPSCaseStateUpdatedAnnouncement 
	"Publish user activity (proposed/taken/done case) in a Discord channel."
	self ifDifferentUser: aPSCaseStateUpdatedAnnouncement actualState user do: [ ^ self ].
	DSWebhookClient new 
		url: self url;
		username: 'Pharo Sprint';
		avatarUrl: 'https://raw.githubusercontent.com/JurajKubelka/PharoSprint/master/assets/img/icon.png';
		embedDescription: (self messageFromAnnouncement: aPSCaseStateUpdatedAnnouncement);
		embedColor: aPSCaseStateUpdatedAnnouncement actualState discordColor;
		supressNetworkErrors;
		asyncPost