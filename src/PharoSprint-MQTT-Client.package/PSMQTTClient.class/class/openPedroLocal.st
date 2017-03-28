examples
openPedroLocal
	<script: 'self openPedroLocal'>
	| pedro pedroUI |
	pedro := self pedroLocal.
	pedroUI := pedro open.
	pedroUI onAnnouncement: WindowClosed do: [ pedro disconnect ].
	^ { pedro. pedroUI. }