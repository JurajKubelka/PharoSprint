gui
openPublic
	<script>
	| instance ui |
	instance := self public.
	ui := instance open.
	ui onAnnouncement: WindowClosed do: [ instance disconnect ].
	^ ui