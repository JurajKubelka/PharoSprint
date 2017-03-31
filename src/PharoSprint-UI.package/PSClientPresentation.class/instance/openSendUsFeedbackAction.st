menu actions
openSendUsFeedbackAction
	^ GLMGenericAction new
		action: [ :presentation | self openSendUsFeedback ];
		iconName: #glamorousEdit;
		title: 'Feedback'; 
		help: 'Send Us Feedback About Pharo Sprint Application';
		showTitle;
		yourself