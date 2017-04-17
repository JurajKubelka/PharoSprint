examples
transcriptExample
	<gtExample>
	<label: 'An example that prints to Transcript'>
	^ self new
		activation: [ :aClient | Transcript show: 'Activated on '; show: aClient; cr ];
		deactivation: [ :aClient | Transcript show: 'Dectivated on '; show: aClient; cr ];
		yourself