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
				spec requires: #( #'FogBugz' #'MQTTChat' ). ];
			package: #'PharoSprint-Tests' with: [
				spec requires: #( #'PharoSprint-Core' #'PharoSprint-UI' ). ];
			package: #'PharoSprint-UI' with: [
				spec requires: #( #'PharoSprint-Core' ). ];
			group: 'default' with: #( client tests );
			group: 'client' with: #( #'PharoSprint-Core' #'PharoSprint-UI' );
			group: 'tests' with: #( #'PharoSprint-Tests' ).
	].