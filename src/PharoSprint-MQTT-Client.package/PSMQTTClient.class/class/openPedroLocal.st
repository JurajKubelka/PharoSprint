examples
openPedroLocal
	<script: 'self openPedroLocal inspect'>
	| pedro pedroUI |
	pedro := self pedroLocal.
	pedroUI := pedro open.
	pedroUI onAnnouncement: WindowClosed do: [ pedro disconnect ].
	^ { pedro. pedroUI. }