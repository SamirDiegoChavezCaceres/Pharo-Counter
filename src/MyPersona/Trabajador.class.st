Class {
	#name : #Trabajador,
	#superclass : #Persona,
	#instVars : [
		'experiencia'
	],
	#category : #MyPersona
}

{ #category : #accessing }
Trabajador >> edad: anInteger [
	edad := anInteger.
]

{ #category : #accessing }
Trabajador >> experiencia: anInteger [ 
	experiencia := anInteger.
]

{ #category : #converting }
Trabajador >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' con '.
	self.experiencia  printOn: aStream.
	aStream nextPutAll: ' años de experiencia '.
]
