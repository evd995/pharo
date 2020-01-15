"
This rule checks that if a method has a pragma shouldReturn then the method is actually returning explicitly a value. 

Currently (2019-12-09) there is no methods in Pharo 8 which use #shouldReturn

"
Class {
	#name : #ReReturnMethodRule,
	#superclass : #ReAbstractRule,
	#category : #'Renraku-Rules'
}

{ #category : #'as yet unclassified' }
ReReturnMethodRule class >> checksMethod [
	^ true
]

{ #category : #running }
ReReturnMethodRule >> basicCheck: aMethod [
	(aMethod overriddenMethods anySatisfy: [ :method | method hasPragmaNamed: #shouldReturn ]) ifFalse: [ ^ false ].

	^ aMethod ast lastIsReturn not
]

{ #category : #accessing }
ReReturnMethodRule >> group [

	^ 'Bugs'
]

{ #category : #accessing }
ReReturnMethodRule >> name [

	^ 'Method annotated with pragma #shouldReturn should explicitly return a value'
]

{ #category : #accessing }
ReReturnMethodRule >> severity [

	^ #error
]
