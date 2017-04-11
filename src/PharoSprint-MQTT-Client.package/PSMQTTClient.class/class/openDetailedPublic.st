gui
openDetailedPublic
	<script>
	| instance ui |
	instance := self public.
	ui := instance openDetailed.
	ui onAnnouncement: WindowClosed do: [ instance disconnect ].
	^ ui