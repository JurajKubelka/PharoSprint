testing
ifDifferentUser: aPSUSer do: aBlock
	"Compare aPSUser with client's user and evaluate aBlock if they are not same."
	(self isDifferentUser: aPSUSer) ifTrue: aBlock