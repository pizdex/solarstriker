; rst vectors (called through the rst instruction)

SECTION "rst00", ROM0[$0000]
	jp _Start

	db $FB, $FB, $EE, $AB, $EF
	db $BE, $FF, $BD, $FF, $BA, $FF, $AA, $FF
	db $AF, $FF, $BE, $BF, $AB, $FF, $AB, $FF
	db $EB, $F7, $AB, $FF, $EA, $FF, $AE, $FF
	db $FE, $FF, $BE, $FF, $FE, $BF, $AA, $FF
	db $AB, $FF, $A3, $FF, $AE, $DF, $EA, $FF
	db $EA, $7F, $AA, $FF, $FF, $FF, $AB, $FF
	db $FB, $FF, $BE, $FF, $AA, $FF, $FB, $FF


; Game Boy hardware interrupts

SECTION "vblank", ROM0[$0040]
	jp Jump_000_02e5

	db $BF, $EE, $FF, $BA, $FF

SECTION "lcd", ROM0[$0048]
	jp Jump_000_030c

	db $FE, $FF, $FB, $EF, $FF

SECTION "timer", ROM0[$0050]
	jp Jump_000_0315

	db $BF, $EE, $FF, $EA, $7F

SECTION "serial", ROM0[$0058]
	reti

	db $FF, $AF, $F6, $FB, $FF, $BB, $FF

SECTION "joypad", ROM0[$0060]
	reti

	db $FF, $AB, $FF, $AB, $FF, $F6, $FB, $BE, $FF, $BB, $F7, $AA, $FF, $BA, $FF
	db $FB, $FF, $FB, $FF, $FA, $FE, $EA, $FF, $EB, $FF, $AA, $FF, $AA, $FF, $EA, $FF
	db $FE, $FF, $0A, $FF, $BF, $FF, $EA, $FF, $BA, $FF, $6E, $FF, $3E, $FF, $FF, $FF
	db $EB, $F9, $AA, $BF, $EA, $FB, $AA, $FF, $A3, $FF, $EA, $FB, $3A, $FF, $EA, $FF
	db $AE, $FF, $AB, $FF, $DF, $FF, $FA, $BF, $AF, $FF, $EB, $FF, $BB, $FF, $EE, $FF
	db $EE, $FF, $EA, $FF, $AA, $FF, $AE, $FF, $EB, $EF, $EB, $FF, $FB, $FF, $9F, $FF
	db $EE, $FF, $AF, $FF, $3A, $DF, $EA, $FF, $FE, $FF, $AA, $FF, $BA, $FF, $EB, $FF
	db $EB, $FD, $AE, $FF, $BA, $FF, $AB, $FF, $E9, $FF, $EF, $FF, $AB, $FF, $AF, $FD
	db $BB, $FF, $EF, $FD, $EE, $FF, $AF, $FF, $FA, $F7, $AA, $FD, $FA, $FF, $BB, $FF
	db $EB, $7F, $FA, $FF, $AA, $FF, $BE, $FB, $BE, $FF, $EF, $FB, $EE, $F5, $EE, $FF

SECTION "Header", ROM0[$0100]

Start::
	nop
	jp _Start

; The Game Boy cartridge header data is patched over by rgbfix.
; This makes sure it doesn't get used for anything else.

	ds $0150 - @, $00