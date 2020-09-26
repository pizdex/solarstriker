note: MACRO
	dn (\1), (\2) ; pitch
	db (\3) ; length
ENDM

rest: MACRO
	note 0, 0, \1 ; length
ENDM
