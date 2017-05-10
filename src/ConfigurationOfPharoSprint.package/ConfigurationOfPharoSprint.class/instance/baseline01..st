baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec 
			blessing: #'baseline'; 
			baseline: #'PharoSprint' with: [
				spec
					repository: 'github://JurajKubelka/PharoSprint/src';
					loads: 'default' ];
			group: 'default' with: #( #PharoSprint ) ]
