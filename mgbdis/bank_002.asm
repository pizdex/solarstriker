; Disassembly of "solarstriker.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

unkImage_002_4000::
	INCBIN "gfx/image_002_4000.2bpp"

unkImage_002_5300::
	INCBIN "gfx/image_002_5300.2bpp"

unkData_002_5350::
	db $fa, $fe, $ab, $db, $8a, $f7, $e1, $7d, $bb, $fb, $ea, $ff, $6a, $fb, $ae, $ff
	db $fa, $db, $2c, $bf, $bf, $ff, $3e, $c7, $cf, $ff, $af, $bf, $fb, $db, $2b, $ff
	db $bb, $fe, $fb, $ff, $9b, $7f, $b0, $ef, $b2, $ff, $2a, $fa, $cf, $bb, $bb, $ff
	db $22, $fb, $fd, $9f, $ea, $fb, $ae, $df, $ae, $fd, $f7, $fb, $ea, $7b, $ee, $ff
	db $bf, $7f, $ee, $cf, $6e, $ff, $a0, $ff, $b6, $fd, $fa, $5f, $ba, $ff, $aa, $ff
	db $dc, $ba, $ee, $d7, $ae, $f7, $ab, $f7, $be, $ef, $f3, $fb, $8a, $fe, $ff, $ef
	db $cd, $cf, $07, $ff, $ef, $df, $b4, $bf, $63, $fb, $bf, $f7, $be, $fb, $a8, $f5
	db $aa, $ff, $ef, $ff, $fa, $f7, $be, $f7, $ef, $fd, $e2, $f2, $fb, $fe, $be, $ff
	db $2e, $bf, $ea, $ff, $2f, $ff, $9f, $b7, $7c, $e6, $ea, $6f, $af, $ff, $b6, $fb
	db $b8, $fa, $ef, $fb, $7f, $ff, $cd, $7b, $bc, $fb, $ae, $62, $ae, $ef, $fa, $ff
	db $ee, $1f, $df, $f4, $da, $ef, $ee, $ef, $fa, $ff, $fb, $fd, $5b, $fc, $e6, $bf

unkImage_002_5400::
	INCBIN "gfx/image_002_5400.2bpp"

unkImage_002_5a00::
	INCBIN "gfx/image_002_5a00.2bpp"

unkData_002_5a40::
	dr $9a40, $9fc0

unkImage_002_5fc0::
	INCBIN "gfx/final_boss.2bpp"

unkData_002_60e0::
	dr $a0e0, $a730

unkImage_002_6730::
	INCBIN "gfx/image_002_6730.2bpp"

unkImage_002_6d30::
	INCBIN "gfx/image_002_6d30.2bpp"

unkData_002_6d60::
	dr $ad60, $b950

; Part of the final cutscene data
unkImage_002_7950::
	INCBIN "gfx/image_002_7950.2bpp"
