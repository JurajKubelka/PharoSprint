baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			baseline: #'FogBugz' with: [
				spec
					repository: 'github://JurajKubelka/FogBugz/src';
					loads: 'default' ];
			baseline: #'MQTTChat' with: [
				spec
					repository: 'github://JurajKubelka/MQTTChat/repository';
					loads: 'default' ];
			package: #'PharoSprint-Core' with: [
				spec requires: #( #'FogBugz' ). ];
			package: #'PharoSprint-Tests' with: [
				spec requires: #( #'PharoSprint-Core' #'PharoSprint-UI' ). ];
			package: #'PharoSprint-UI' with: [
				spec requires: #( #'PharoSprint-Core' ). ];
			package: #'PharoSprint-MQTT-Client' with: [
				spec requires: #( #'PharoSprint-Core' #'MQTTChat' ). ];
			package: #'PharoSprint-MQTT-Tests' with: [
				spec requires: #( #'PharoSprint-MQTT-Client' #'PharoSprint-MQTT-UI' ). ];
			package: #'PharoSprint-MQTT-UI' with: [
				spec requires: #( #'PharoSprint-MQTT-Client' #'PharoSprint-UI' ). ];
			group: 'default' with: #( core mqtt-client tests );
			group: 'core' with: #( #'PharoSprint-Core' #'PharoSprint-UI' );
			group: 'mqtt-client' with: #( #'PharoSprint-MQTT-Client' #'PharoSprint-MQTT-UI' );
			group: 'tests' with: #( #'PharoSprint-Tests' #'PharoSprint-MQTT-Tests' ).
	].