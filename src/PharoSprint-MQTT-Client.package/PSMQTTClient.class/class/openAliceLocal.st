examples
openAliceLocal
	<script: 'self openAliceLocal'>
	| alice aliceUI |
	alice := self aliceLocal.
	aliceUI := alice open.
	aliceUI onAnnouncement: WindowClosed do: [ alice disconnect ].
	^ { alice. aliceUI. }