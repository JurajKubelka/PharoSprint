helpers
urlTextAttributesWithUrl: anUrl
	"URL Text attributes"
	^ { 
		TextAction new actOnClickBlock: [
			self openWebBrowserOn: anUrl asString ].
		TextEmphasis underlined.
		TextEmphasis italic.
		TextColor color: Smalltalk ui theme textColor }