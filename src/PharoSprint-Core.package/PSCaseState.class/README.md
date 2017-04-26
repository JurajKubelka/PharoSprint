I am an abstract case state.
I hold the user who is responsible for the state creation. 
My subclasses then define concrete case states, e.g., proposed, taken, and done.

I am used by PSCase that holds a FogBugz case and me, a corresponding state. 

Public API and Key Messages

- user: set user who is responsible for the state

Internal Representation and Key Implementation Points.

    Instance Variables
	user:		<PSUser>
