Class {
	#name : #Estudiante,
	#superclass : #Persona,
	#instVars : [
		'libros'
	],
	#category : #MyPersona
}

{ #category : #accessing }
Estudiante >> edad [
	^edad
]

{ #category : #accessing }
Estudiante >> edad: anInteger [
	edad := anInteger 
]

{ #category : #accessing }
Estudiante >> libros: anInteger [
	libros := anInteger 
]

{ #category : #printing }
Estudiante >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' con '.
	self.libros printOn: aStream.
	aStream nextPutAll: ' libros en total '.
]
