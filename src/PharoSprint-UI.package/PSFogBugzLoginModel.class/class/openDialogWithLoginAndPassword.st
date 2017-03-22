examples
openDialogWithLoginAndPassword
	<script>
	| dialog ui |
	dialog := self withLoginAndPassword.
	ui := dialog openDialogWithSpec.
	ui modalRelativeTo: self currentWorld.
	ui cancelled ifTrue: [ ^ nil ].
	^ dialog credentials