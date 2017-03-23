tests
testEmpty
	model := self newFogBugzInfoModel.
	window := model openWithSpec.
	self assert: window notNil.
	self assert: model dynamicModel equals: model labelModel.
	self assert: model labelModel label equals: model labelInitializeFogBugzClient