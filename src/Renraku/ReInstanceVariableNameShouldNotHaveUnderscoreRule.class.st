Class {
	#name : #ReInstanceVariableNameShouldNotHaveUnderscoreRule,
	#superclass : #ReAbstractRule,
	#category : #'Renraku-Rules'
}

{ #category : #'testing-interest' }
ReInstanceVariableNameShouldNotHaveUnderscoreRule class >> checksClass [

	^ true
]

{ #category : #running }
ReInstanceVariableNameShouldNotHaveUnderscoreRule >> basicCheck: aClass [ 

	^ aClass instVarNames anySatisfy: [ :each | each includes: $_ ]
	
]

{ #category : #accessing }
ReInstanceVariableNameShouldNotHaveUnderscoreRule >> group [
	^ 'Coding Idiom Violation'
]

{ #category : #accessing }
ReInstanceVariableNameShouldNotHaveUnderscoreRule >> name [
	"Answer a human readable name of the rule."

	^ 'Instance variable should not contain underscore'
]
