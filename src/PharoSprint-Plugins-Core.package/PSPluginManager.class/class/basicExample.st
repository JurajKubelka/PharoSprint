examples
basicExample
	<gtExample>
	<label: 'Instance with all available plugins'>
	^ self new
		client: PSClientWithPlugins new;
		plugins;
		yourself.