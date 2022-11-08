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
Counter >> count [
	^ count
]

{ #category : #accessing }
Counter >> count: myNumber [
	count := myNumber
]

{ #category : #control }
Counter >> increment [
	count := count + 1
]
