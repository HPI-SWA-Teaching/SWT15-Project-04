overview-pyramid
createMorphForANDC
	| morph resultmorph namemorph yPosition |

	yPosition := (1*self defaultMorphEntryHeight).

	morph := RectangleMorph new.
	morph extent: (self defaultMorphEntryWidth)@(self defaultMorphEntryHeight).
	morph position: (self getMainMorphCenterX)@yPosition.
	resultmorph := (TextMorph new contents: ((overviewResults at: #andc) asFloat printShowingMaxDecimalPlaces: 3) asString).
	morph addMorph: resultmorph.
	resultmorph position: ((morph position x)+(morph width)-(resultmorph width)-5)@yPosition.
	namemorph := (TextMorph new contents: 'ANDC').
	morph addMorph: namemorph.
	namemorph position: ((morph position x)+5)@yPosition.

	^ morph