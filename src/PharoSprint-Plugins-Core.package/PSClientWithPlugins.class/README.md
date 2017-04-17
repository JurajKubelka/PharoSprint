I extend the standard client by managing plugins. 

My key responsibility is to activate and deactivate plugins. For that reason I collaborate with PSPluginManager that keeps the list of plugins.

Public API and Key Messages

- activatePlugins - activate available plugins
- deactivatePlugins - deactivate plugins
- disablePlugins - deactivate and remove plugins.

Internal Representation and Key Implementation Points.

    Instance Variables
	pluginManager:		<PSPluginManager>
