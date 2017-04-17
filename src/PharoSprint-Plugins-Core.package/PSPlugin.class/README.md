I am a base for all Pharo Sprint plugins. 

All plugins should subclass me. I am responsible for collecting all available plugins and I expose common interface.

I am used by PSPluginManager who manages all plugins for a particular PSClientWithPlugins.

Public API and Key Messages

- allAvailableFor: (class side) returns all plugins available for a client
- isAvailableFor: (class side) logic for deciding whether a plugin can be installed on a client
- activateFor: plugin activation using a client
- deactivateFor: plugin deactivation using a client
 