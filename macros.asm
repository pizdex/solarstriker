INCLUDE "macros/const.asm"

bankswitch: MACRO
	ld a, (\1)
	ld [$2100], a
ENDM

dr: macro
INCBIN "baserom.gb", \1, \2 +- \1
ENDM
