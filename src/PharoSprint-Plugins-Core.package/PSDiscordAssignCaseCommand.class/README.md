I represent an extension command for a DSMessageCommand instance. 
I know how to add a list of cases to the DSMessageCommand Spec model (in the preExecution: cycle) and how to store the additional information to a sending object (in the postExecution: cycle).

I collaborate with DSClient (client message) that knows all open FogBugz cases. User can then relate a specific FogBugz case to a sending object.
I collaborate with DSMessageCommand. It has an API that allows to change user UI dialog and add a list with cases.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	client:		<PSClient>
