initialization
addCalcMorphWith: aString to: aMorph at: yPosition

	| calcmorph |
	calcmorph := TextMorph new contents: aString.
	aMorph addMorph: calcmorph.
	calcmorph position: ((aMorph position x)-(calcmorph width)-5)@yPosition.