examples
openAliceLocal
	<script: 'self openAliceLocal inspect'>
	| alice aliceUI |
	alice := self aliceLocal.
	aliceUI := alice open.
	aliceUI onAnnouncement: WindowClosed do: [ alice disconnect ].
	^ { alice. aliceUI. }