baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			configuration: 'GlamourCore' with: [ 
				spec 
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/';
					versionString: #'development';
					loads: 'default' ];
			baseline: #'FogBugz' with: [
				spec
					repository: 'github://JurajKubelka/FogBugz/src';
					loads: 'default' ];
			baseline: #'MQTTChat' with: [
				spec
					repository: 'github://JurajKubelka/MQTTChat/repository';
					loads: 'default' ];
			project: #'WebBrowser' with: [
				spec
					className: #ConfigurationOfWebBrowser;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/TorstenBergmann/WebBrowser/main/' ];
			package: #'PharoSprint-Core' with: [
				spec requires: #( #'FogBugz' ). ];
			package: #'PharoSprint-Tests' with: [
				spec requires: #( #'PharoSprint-Core' #'PharoSprint-UI' ). ];
			package: #'PharoSprint-UI' with: [
				spec requires: #( #'PharoSprint-Core' #'WebBrowser' #GlamourCore ). ];
			package: #'PharoSprint-MQTT-Client' with: [
				spec requires: #( #'PharoSprint-Core' #'MQTTChat' ). ];
			package: #'PharoSprint-MQTT-Tests' with: [
				spec requires: #( #'PharoSprint-MQTT-Client' #'PharoSprint-MQTT-UI' ). ];
			package: #'PharoSprint-MQTT-UI' with: [
				spec requires: #( #'PharoSprint-MQTT-Client' #'PharoSprint-UI' ). ];
			group: #'default' with: #( #'core' #'mqtt-client' #'tests' );
			group: #'core' with: #( #'PharoSprint-Core' #'PharoSprint-UI' );
			group: #'mqtt-client' with: #( #'PharoSprint-MQTT-Client' #'PharoSprint-MQTT-UI' );
			group: #'tests' with: #( #'PharoSprint-Tests' #'PharoSprint-MQTT-Tests' ).
	].