private
activateFor: aPSClient 
	"Register discord Extension command for the given client."
	| command |
	command := self newCommand client: aPSClient; yourself.
	self registry addCommand: command.
	