execution
postExecution: aDSMessageCommand 
	"Get the case number, selected by a user and set it as a sending information."
	| url case |
	case := aDSMessageCommand model pharoSprintCaseList selectedItem.
	url := case publicUrl.
	aDSMessageCommand infoAt: #pharoSprintCase put: url asString.
	aDSMessageCommand text: aDSMessageCommand text asString, String crlf, '[case ', case id asString, '](', url asString, ')'.
	