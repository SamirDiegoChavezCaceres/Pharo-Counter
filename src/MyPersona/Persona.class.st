Class {
	#name : #Persona,
	#superclass : #Object,
	#instVars : [
		'edad'
	],
	#category : #MyPersona
}

{ #category : #polymorphism }
Persona class >> polymorfism [
	| personaArray |
		personaArray := Array new: 6.
		personaArray doWithIndex: [ :each :i | (i % 2 = 0) 
			ifTrue: [ 
				personaArray at: i 
					put: (Estudiante new edad: (7*(i+1)); libros: (10*(i+1))) 
			] ifFalse: [ 
				personaArray at: i 
					put: (Trabajador new edad: (15*(i+1)); experiencia: (2*(i+1))) 
			] 
		].
		personaArray do: [ :aPerson | 
			Transcript show: (self presentarse: aPerson) ; cr.].
]

{ #category : #polymorphism }
Persona class >> polymorfismType [
	| objectArray |
		objectArray := Array new: 6.
		objectArray doWithIndex: [ :each :i | (i % 2 = 0) 
			ifTrue: [ 
				objectArray at: i 
					put: (EstudianteTipo new libros: (10*(i+1))) 
			] ifFalse: [ 
				objectArray at: i 
					put: (TrabajadorTipo new experiencia: (2*(i+1))) 
			] 
		].
		objectArray do: [ :aPerson | (aPerson class canUnderstand: #printOn)
			ifTrue: [ 
				Transcript show: (self presentarse: aPerson)  ; cr.
			] ifFalse: [ 
				Transcript show: 'no pertenece'  ; cr.
			]
		]
			
]

{ #category : #printing }
Persona class >> presentarse: aPersona [ 
	^aPersona printString.
]

{ #category : #accessing }
Persona >> edad [
	^edad
]

{ #category : #printing }
Persona >> printOn: aStream [
	aStream nextPutAll: 'Una persona con: '.
	self.edad printOn: aStream.
	aStream nextPutAll: ' años en total '.
]
