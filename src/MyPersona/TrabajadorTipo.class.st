Class {
	#name : #TrabajadorTipo,
	#superclass : #Object,
	#instVars : [
		'experiencia'
	],
	#category : #MyPersona
}

{ #category : #accessing }
TrabajadorTipo >> experiencia: anInteger [
	experiencia := anInteger.
]

{ #category : #imprimir }
TrabajadorTipo >> printOn: aStream [
	aStream nextPutAll: 'Tengo '.
	self.experiencia  printOn: aStream.
	aStream nextPutAll: ' años de experiencia'.
]
