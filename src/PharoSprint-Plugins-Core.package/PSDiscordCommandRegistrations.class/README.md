I keep all command extensions, that should be registered for the DSCommand commands. I am responsible to decouple the dependency between PSClientWithPlugins (and corresponding plugins) instances and a DSCommand execution. For that reason, the DSCommand asks for all extensions using my Singleton instance (#default class method).

As an example, I am used by PSDiscordAssignCasePlugin that registers the PSDiscordAssignCaseCommand extension command. PSDiscordAssignCasePlugin is responsible from adding and removing the command extensions on its activation and deactivation.

Public API and Key Messages

- addCommand:  - add a command extension to  my collection 
- removeCommandsOfClient: - remove all registred command extensions from my collection
- registrations - get a collection of registred command extensions.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	commands:		<OrderedCollection>
	mutex:			<Mutex>
