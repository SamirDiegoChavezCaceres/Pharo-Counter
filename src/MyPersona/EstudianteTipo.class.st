Class {
	#name : #EstudianteTipo,
	#superclass : #Object,
	#instVars : [
		'libros'
	],
	#category : #MyPersona
}

{ #category : #accessing }
EstudianteTipo >> libros: anInteger [
	libros := anInteger 
]

{ #category : #imprimir }
EstudianteTipo >> printOn: aStream [
	aStream nextPutAll: 'Tengo '.
	self.libros printOn: aStream.
	aStream nextPutAll: ' libros en total '.
]
