Class {
	#name : #ReInstanceVariableNameShouldNotHaveUnderscoreRuleTest,
	#superclass : #ReTestBasedTestCase,
	#category : #'Renraku-Test'
}

{ #category : #tests }
ReInstanceVariableNameShouldNotHaveUnderscoreRuleTest >> testBasicCheck [
	self assert: (testClass critiques noneSatisfy: [ :critic | critic rule class = ReInstanceVariableNameShouldNotHaveUnderscoreRule ]).
	
	testClass addInstVarNamed: 'time_of_day'.

	self assert: (testClass critiques anySatisfy: [ :critic | critic rule class = ReInstanceVariableNameShouldNotHaveUnderscoreRule ])
]
