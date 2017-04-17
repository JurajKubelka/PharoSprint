examples
mockPlugin
	<gtExample>
	<label: 'Instance with MockPlugin'>
	^ self new
		client: PSClientWithPlugins new;
		plugins: (Array with: PSMockPlugin new);
		yourself.