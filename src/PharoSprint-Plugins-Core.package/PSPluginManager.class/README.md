I keep plugins for a particular client.

I am responsible for activation and deactivation of plugins. 

I am used by PSClientWithPlugins that decides when to activate and deactivate plugins.

Public API and Key Messages

- activate - activate available plugins
- deactivate - deactivate available plugins
- disable - deactivate plugins and reset plugins collection

{{{
PSPluginManager new
	client: PSClientWithPlugins new;
	plugins: (Array with: PSMockPlugin new);
	yourself.
}}}
