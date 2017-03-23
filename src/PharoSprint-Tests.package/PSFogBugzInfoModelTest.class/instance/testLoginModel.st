tests
testLoginModel
	window := model openWithSpec.
	self assert: window notNil.
	self assert: model dynamicModel equals: model loginModel.
	self assert: model loginModel info isEmpty.