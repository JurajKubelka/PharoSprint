I am a Mock plugin useful for test cases. By default, I can not by used by any client.

Public API and Key Messages

- activation: a block that is evaluated on plugin activation
- deactivation: a block that is evaluated on plugin deactivation

{{{
PSMockPlugin new
	activation: [ :aClient | Transcript show: 'Activated on '; show: aClient; cr ];
	deactivation: [ :aClient | Transcript show: 'Dectivated on '; show: aClient; cr ];
	yourself
}}}
