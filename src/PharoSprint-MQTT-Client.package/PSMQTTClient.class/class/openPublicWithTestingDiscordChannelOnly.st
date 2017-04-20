gui
openPublicWithTestingDiscordChannelOnly
	<script>
	| instance ui |
	instance := self publicWithTestingDiscordChannelOnly.
	instance connect.
	ui := instance open.
	ui onAnnouncement: WindowClosed do: [ instance disconnect ].
	^ ui