"
'Counter' ejemplo sin uso de Utest
Usa
- decrement
- increment 
- count
startAt es su mensaje constructor 
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [ 
	^ self new count: anInteger.
]

{ #category : #accessing }
Counter >> count [
	^ count
]

{ #category : #accessing }
Counter >> count: myNumber [
	count := myNumber
]

{ #category : #API }
Counter >> decrement [
	count := count - 1
]

{ #category : #API }
Counter >> increment [
	count := count + 1
]

{ #category : #initialization }
Counter >> initialize [ 
	count := 0.
	^ self
]

{ #category : #printing }
Counter >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: ' with value: ';
		nextPutAll: count printString
]
