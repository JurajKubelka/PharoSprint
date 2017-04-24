*PharoSprint-MQTT-Server
runPharoSprintServer
	"Run the Pharo Sprint server side."
	^ self pharoSprintServer
		connect;
		listen;
		yourself.