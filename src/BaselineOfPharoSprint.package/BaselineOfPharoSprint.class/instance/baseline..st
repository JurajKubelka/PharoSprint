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
			baseline: #'DiscordSt' with: [
				spec
					repository: 'github://JurajKubelka/DiscordSt:client/src';
					loads: 'default' ];
			project: #'WebBrowser' with: [
				spec
					className: #ConfigurationOfWebBrowser;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/TorstenBergmann/WebBrowser/main/' ];
			package: #'PharoSprint-Core' with: [
				spec requires: #( #'FogBugz' ). ];
			package: #'PharoSprint-UI' with: [
				spec requires: #( #'PharoSprint-Core' #'WebBrowser' ). ];
			package: #'PharoSprint-Tests' with: [
				spec requires: #( #'PharoSprint-Core' #'PharoSprint-UI' ). ];

			package: #'PharoSprint-Plugins-Core' with: [
				spec requires: #( #'PharoSprint-Core' #'DiscordSt' #'FogBugz' ). ];
			package: #'PharoSprint-Plugins-UI' with: [
				spec requires: #( #'PharoSprint-Plugins-Core' #'PharoSprint-UI' ). ];
			package: #'PharoSprint-Plugins-Tests' with: [
				spec requires: #( #'PharoSprint-Plugins-Core' #'PharoSprint-Tests' ). ];

			package: #'PharoSprint-MQTT-Client' with: [
				spec requires: #( #'PharoSprint-Plugins-Core' #'MQTTChat' #'PharoSprint-MQTT-Server' ). ];
			package: #'PharoSprint-MQTT-Tests' with: [
				spec requires: #( #'PharoSprint-MQTT-Client' #'PharoSprint-MQTT-UI' #'PharoSprint-Tests' ). ];
			package: #'PharoSprint-MQTT-UI' with: [
				spec requires: #( #'PharoSprint-MQTT-Client' #'PharoSprint-Plugins-UI' ). ];

			package: #'PharoSprint-MQTT-Server' with: [
				spec requires: #( #'MQTTChat'  ). ];

			group: #'default' with: #( #'mqtt-client' #'tests' );
			group: #'core' with: #( #'PharoSprint-Core' #'PharoSprint-UI' );
			group: #'plugin-client' with: #( #'PharoSprint-Plugins-Core' #'PharoSprint-Plugins-UI' );
			group: #'mqtt-client' with: #( #'PharoSprint-MQTT-Client' #'PharoSprint-MQTT-UI' );
			group: #'mqtt-server' with: #( #'PharoSprint-MQTT-Server' );
			group: #'tests' with: #( #'PharoSprint-Tests' #'PharoSprint-Plugins-Tests' #'PharoSprint-MQTT-Tests' ).
	].