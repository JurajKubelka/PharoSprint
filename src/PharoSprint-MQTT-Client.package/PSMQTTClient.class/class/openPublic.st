gui
openPublic
	<script>
	| instance ui |
	instance := self public.
	instance connect.
	ui := instance open.
	ui onAnnouncement: WindowClosed do: [ instance disconnect ].
	^ ui