fonts
chooseEToysFont
	"present a menu with the possible fonts for the eToys"
	self
		chooseFontWithPrompt: 'eToys font...' translated
		andSendTo: self
		withSelector: #setEToysFontTo:
		highlightSelector: #standardEToysFont