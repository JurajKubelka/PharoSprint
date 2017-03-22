specs
defaultSpec
	<spec: #default>
	^ SpecRowLayout composed
		newRow: [ :row | row add: #dynamicModel ]