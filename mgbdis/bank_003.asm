; Disassembly of "solarstriker.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

	db $00, $00, $00, $00, $01, $00, $00, $00, $00, $00, $00, $02, $00, $00, $02, $00
	db $00, $03, $00, $00, $00, $04, $00, $05, $04, $00, $06, $00, $07, $08, $0b, $0c
	db $09, $0a, $0d, $0e, $0f, $10, $11, $12, $00, $00, $00, $13, $04, $00, $14, $00
	db $00, $04, $00, $14, $00, $00, $13, $00, $07, $15, $0b, $0c, $16, $00, $0d, $19
	db $17, $15, $1a, $1b, $16, $18, $1c, $1a, $00, $15, $19, $0c, $16, $0a, $0d, $0e
	db $00, $1d, $00, $13, $1e, $1f, $13, $1d, $20, $21, $1e, $0c, $22, $1f, $0d, $1d
	db $20, $23, $1e, $24, $1e, $00, $13, $00, $00, $14, $00, $25, $14, $13, $25, $00
	db $13, $14, $00, $25, $14, $00, $25, $00, $26, $27, $00, $00, $00, $00, $28, $00
	db $29, $2a, $31, $32, $2b, $2c, $33, $34, $2d, $2e, $00, $00, $2f, $30, $00, $00
	db $bf, $f7, $5a, $ff, $fe, $fd, $b6, $7a, $bc, $fe, $9e, $be, $a6, $fb, $62, $ff
	db $aa, $dd, $ab, $df, $ab, $ff, $ee, $ee, $7f, $e9, $bb, $ef, $2a, $fe, $ab, $f3
	db $a3, $f9, $bb, $ff, $aa, $ff, $eb, $ff, $ea, $ff, $ae, $f7, $aa, $ff, $a3, $ff
	db $fc, $f3, $bf, $ff, $3f, $ff, $ac, $ff, $f6, $7f, $ea, $fa, $ef, $ff, $ec, $ef
	db $32, $ff, $2a, $ff, $aa, $fd, $ec, $db, $eb, $ff, $fa, $fb, $96, $bf, $ee, $ff
	db $aa, $ff, $e7, $bf, $f7, $ef, $ea, $ff, $ee, $5b, $fa, $ff, $ab, $bf, $2e, $ff
	db $8b, $ff, $ce, $fb, $6b, $ef, $be, $ff, $b3, $7f, $2f, $ff, $e1, $ef, $f8, $6f
	db $2a, $f3, $ba, $ff, $fb, $df, $ea, $fb, $6a, $7f, $fb, $be, $8e, $f7, $ee, $f7
	db $2b, $57, $f9, $ff, $ab, $6f, $ee, $ed, $eb, $f3, $bb, $8d, $cb, $3f, $fb, $fb
	db $de, $ff, $ea, $ff, $ab, $f3, $ae, $df, $e6, $df, $fb, $e6, $ea, $7f, $ce, $ff
	db $bf, $ff, $ae, $fb, $fb, $bf, $ba, $7f, $fb, $ff, $fe, $7f, $eb, $ff, $2a, $df
	db $2a, $79, $be, $fe, $eb, $fb, $8b, $fb, $be, $ff, $ba, $ff, $f2, $bf, $86, $7f
	db $ef, $df, $fe, $f9, $e9, $bf, $eb, $f6, $bf, $fb, $a0, $ff, $bb, $bf, $ae, $ff
	db $f8, $ff, $ff, $ff, $ff, $bf, $a7, $bf, $b6, $ff, $7e, $af, $df, $bb, $7b, $fc
	db $eb, $fe, $ee, $ff, $e9, $be, $e7, $bb, $bb, $ff, $ea, $ff, $36, $fe, $ea, $7e
	db $fa, $dd, $e4, $bf, $bf, $fd, $be, $de, $fb, $ff, $b7, $fd, $bb, $ff, $eb, $eb
	db $9f, $ff, $bc, $ff, $1d, $fc, $9f, $f7, $be, $eb, $bf, $fb, $be, $df, $fe, $ff
	db $ba, $bb, $ea, $f7, $3f, $f7, $b2, $17, $ae, $f5, $bf, $ff, $fe, $bb, $c7, $76
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01
	db $00, $01, $00, $01, $01, $09, $00, $00, $00, $01, $00, $00, $01, $00, $00, $00
	db $01, $00, $00, $00, $01, $00, $00, $01, $00, $00, $00, $00, $00, $00, $00, $04
	db $00, $00, $00, $00, $00, $00, $00, $01, $00, $01, $00, $00, $01, $00, $01, $00
	db $00, $01, $01, $00, $00, $01, $00, $00, $01, $00, $00, $00, $00, $00, $00, $00

	nop
	nop
	inc b
	nop
	nop
	nop
	ld bc, $0000
	ld bc, $0000
	ld bc, $0001
	nop
	ld bc, $0100
	nop
	nop
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0400
	nop
	nop
	ld bc, $1a00
	dec de
	inc e
	dec e
	nop
	ld bc, $0000
	nop
	ld bc, $0000
	nop
	inc d
	dec d
	ld d, $17
	jr jr_003_4251

	nop
	nop
	add hl, bc
	nop
	nop
	nop
	nop
	ld bc, $0f0e
	db $10
	ld de, $1312
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a, [bc]
	dec bc
	rlca

jr_003_4251:
	ld [$0d0c], sp
	nop
	nop
	nop
	nop
	ld bc, $0900
	nop
	nop
	inc bc
	rlca
	ld [$0002], sp
	nop
	ld bc, $0004
	nop
	nop
	ld bc, $0000
	nop
	rlca
	ld [$0000], sp
	ld bc, $0000
	nop
	ld bc, $0100
	nop
	ld bc, $0504
	ld b, $01
	nop
	nop
	nop
	nop
	ld bc, $0000
	nop
	ld bc, $0001
	ld [bc], a
	inc bc
	nop
	nop
	nop
	nop
	ld bc, $ff01
	rst $38
	adc e
	cp a
	and e
	rst $38
	rst $08
	ei
	xor $ef
	ld hl, sp-$01
	cp d
	ld a, a
	xor [hl]
	rst $38

	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01
	db $00, $01, $00, $01, $01, $09, $00, $00, $00, $01, $00, $00, $01, $00, $00, $00
	db $01, $00, $00, $00, $01, $00, $00, $01, $00, $00, $00, $00, $00, $00, $00, $04
	db $00, $00, $00, $00, $00, $00, $00, $01, $00, $01, $00, $00, $01, $00, $01, $00
	db $00, $01, $01, $00, $00, $01, $00, $00, $01, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $04, $00, $00, $00, $01, $00, $00, $01, $00, $00, $01, $01, $00, $00
	db $01, $00, $01, $00, $00, $01, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00
	db $04, $00, $00, $01, $00, $00, $01, $00, $01, $00, $01, $00, $00, $00, $01, $00
	db $00, $00, $00, $00, $00, $01, $00, $00, $00, $00, $09, $00, $00, $00, $00, $01
	db $00, $00, $01, $00, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $00
	db $00, $00, $00, $01, $00, $00, $00, $00, $01, $00, $09, $00, $00, $00, $00, $01
	db $00, $00, $00, $01, $04, $00, $00, $00, $01, $00, $00, $00, $00, $00, $00, $00
	db $01, $00, $00, $00, $01, $00, $01, $00, $01, $04, $00, $00, $01, $00, $00, $00
	db $00, $01, $00, $00, $00, $01, $01, $00, $00, $01, $00, $00, $00, $00, $01, $01
	db $ff, $bd, $ae, $7c, $e8, $ff, $8a, $bf, $6c, $ff, $4f, $fd, $ca, $ff, $ae, $db
	db $00, $1e, $1f, $00, $00, $00, $00, $1e, $1f, $00, $00, $00, $00, $1e, $00, $00
	db $00, $00, $00, $1f, $00, $00, $00, $20, $21, $22, $00, $00, $20, $21, $22, $00
	db $00, $00, $00, $1f, $00, $00, $00, $00, $00, $1f, $00, $00, $00, $00, $1f, $00
	db $00, $00, $00, $1f, $00, $1f, $00, $00, $00, $1f, $00, $00, $00, $00, $23, $1f
	db $00, $00, $00, $00, $1e, $1f, $00, $00, $00, $1f, $00, $00, $00, $00, $00, $1e
	db $1f, $00, $00, $00, $00, $1e, $1f, $00, $1e, $00, $1f, $00, $1f, $00, $20, $21
	db $22, $1e, $00, $00, $00, $00, $00, $1f, $00, $00, $00, $00, $1e, $00, $00, $00
	db $1e, $20, $21, $22, $00, $00, $00, $1f, $1e, $00, $00, $00, $1f, $00, $00, $00
	db $00, $00, $1f, $00, $00, $00, $00, $00, $1f, $00, $00, $00, $00, $1f, $00, $00
	db $00, $00, $00, $1f, $00, $00, $00, $1f, $1e, $1f, $00, $00, $1f, $00, $1e, $00
	db $00, $00, $1e, $1f, $00, $00, $00, $00, $1e, $00, $00, $00, $00, $00, $00, $1f
	db $00, $00, $00, $00, $00, $00, $00, $00, $1e, $00, $1f, $00, $00, $00, $00, $00
	db $00, $1f, $00, $00, $00, $00, $20, $21, $22, $00, $23, $1f, $00, $00, $00, $00
	db $1e, $1f, $1e, $00, $00, $00, $00, $1f, $00, $00, $00, $1e, $00, $00, $00, $00
	db $ff, $74, $75, $51, $5b, $d7, $fb, $fd, $ff, $9e, $73, $65, $ad, $d5, $ff, $ed
	db $00, $00, $00, $00, $01, $02, $03, $04, $03, $04, $0d, $0e, $05, $06, $05, $06
	db $07, $08, $0f, $10, $09, $0a, $11, $12, $0b, $0c, $09, $0a, $00, $13, $00, $18
	db $14, $00, $19, $00, $00, $15, $00, $00, $00, $16, $00, $1a, $17, $00, $1b, $00
	db $1c, $1d, $00, $20, $00, $00, $21, $00, $00, $00, $22, $00, $00, $00, $00, $23
	db $1e, $1f, $24, $25, $00, $26, $00, $00, $27, $00, $29, $2a, $00, $28, $2b, $2c
	db $2d, $00, $00, $00, $00, $15, $22, $00, $00, $2e, $00, $00, $2f, $00, $00, $00
	db $00, $00, $00, $30, $00, $00, $31, $00, $00, $00, $00, $32, $00, $32, $00, $00
	db $32, $00, $00, $00, $00, $00, $32, $00, $33, $34, $37, $38, $00, $00, $39, $3a
	db $35, $36, $3b, $3c, $3d, $3e, $4b, $4c, $3f, $40, $4d, $4e, $41, $42, $4f, $50
	db $43, $44, $51, $52, $45, $46, $53, $54, $47, $48, $55, $56, $49, $4a, $57, $58
	db $59, $5a, $5f, $60, $5b, $5c, $61, $61, $5d, $5e, $62, $63, $2b, $1d, $aa, $55
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $03, $03, $00, $03, $03, $00, $03, $03, $00, $00, $00, $02, $00, $00, $03
	db $03, $00, $03, $03, $00, $03, $03, $00, $00, $05, $01, $02, $00, $03, $03, $00
	db $03, $03, $00, $03, $03, $00, $05, $06, $00, $01, $00, $03, $03, $00, $03, $03
	db $00, $03, $03, $00, $06, $00, $02, $00, $00, $03, $03, $04, $03, $03, $04, $03
	db $03, $00, $00, $05, $01, $02, $00, $03, $03, $00, $03, $03, $00, $03, $03, $00
	db $05, $06, $00, $01, $00, $03, $03, $00, $03, $03, $00, $03, $03, $00, $06, $00
	db $02, $00, $00, $03, $03, $00, $03, $03, $00, $03, $03, $00, $00, $05, $01, $02
	db $00, $03, $03, $00, $03, $03, $00, $03, $03, $00, $05, $06, $00, $01, $00, $03
	db $03, $04, $03, $03, $04, $03, $03, $00, $06, $00, $02, $00, $00, $03, $03, $00
	db $03, $03, $00, $03, $03, $00, $00, $05, $01, $02, $00, $03, $03, $00, $03, $03
	db $00, $03, $03, $00, $05, $06, $00, $01, $00, $03, $03, $00, $03, $03, $00, $03
	db $03, $00, $06, $00, $02, $00, $00, $03, $03, $00, $03, $03, $00, $03, $03, $00
	db $00, $05, $01, $00, $00, $03, $03, $04, $03, $03, $04, $03, $03, $00, $00, $06
	db $00, $00, $00, $03, $03, $00, $03, $03, $00, $03, $03, $00, $00, $00, $ff, $43
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0c
	db $0d, $16, $17, $15, $11, $12, $00, $00, $00, $07, $08, $11, $0c, $0d, $11, $12
	db $13, $14, $0f, $10, $00, $00, $00, $07, $08, $0f, $08, $15, $0a, $0b, $00, $13
	db $14, $0a, $0b, $00, $00, $0c, $0d, $00, $08, $00, $0a, $0b, $00, $0c, $0d, $0a
	db $0b, $00, $0c, $0d, $09, $11, $0d, $11, $12, $00, $07, $08, $09, $0f, $10, $07
	db $08, $15, $0e, $0a, $0e, $0f, $10, $00, $00, $13, $14, $09, $0a, $0b, $13, $14
	db $11, $12, $15, $11, $12, $00, $00, $00, $13, $14, $0a, $0b, $0c, $0d, $0a, $0b
	db $11, $12, $00, $00, $00, $00, $07, $08, $0f, $10, $13, $14, $0f, $10, $0a, $0b
	db $00, $00, $00, $00, $07, $08, $0e, $0a, $0b, $13, $14, $0a, $0a, $0b, $00, $00
	db $00, $00, $0c, $0d, $11, $12, $00, $07, $08, $0a, $12, $00, $00, $00, $00, $0c
	db $0d, $11, $12, $00, $00, $07, $08, $0f, $0b, $00, $00, $00, $07, $08, $00, $0a
	db $0b, $00, $00, $00, $13, $14, $00, $00, $00, $00, $0c, $0d, $11, $12, $00, $00
	db $00, $00, $00, $13, $00, $00, $00, $0c, $0d, $0e, $0f, $10, $00, $00, $00, $00
	db $00, $07, $00, $00, $07, $08, $00, $00, $09, $0a, $0b, $00, $00, $00, $00, $00
	db $00, $00, $07, $08, $0e, $00, $00, $0f, $10, $00, $00, $00, $00, $00, $00, $00
	db $0c, $0d, $16, $17, $00, $00, $0f, $10, $00, $00, $00, $00, $00, $07, $08, $11
	db $12, $13, $14, $15, $00, $0a, $0b, $00, $00, $00, $00, $0c, $0d, $0a, $0b, $00
	db $13, $14, $11, $12, $00, $00, $00, $0c, $00, $13, $14, $0a, $0b, $00, $07, $08
	db $0a, $0b, $00, $00, $07, $08, $00, $0c, $0d, $0a, $0b, $00, $0c, $0d, $0a, $0b
	db $00, $00, $0c, $0d, $0c, $0d, $11, $12, $00, $07, $08, $11, $12, $00, $00, $07
	db $08, $09, $08, $15, $0f, $10, $00, $07, $08, $0a, $0b, $00, $00, $0c, $0d, $09
	db $13, $14, $0e, $0a, $0b, $07, $08, $0f, $10, $00, $07, $08, $0e, $00, $00, $13
	db $14, $0f, $10, $0c, $0d, $00, $0a, $0b, $07, $08, $00, $11, $00, $0c, $0d, $0e
	db $18, $19, $00, $15, $0f, $10, $0c, $0d, $15, $0a, $07, $08, $00, $00, $15, $0e
	db $00, $00, $00, $18, $19, $00, $00, $0a, $0c, $0d, $15, $0e, $00, $00, $09, $00
	db $00, $00, $00, $15, $11, $12, $08, $0e, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $0a, $0b, $13, $14, $00, $00, $00, $00, $00, $00, $0e, $00, $00, $11
	db $12, $00, $00, $13, $14, $00, $15, $00, $00, $00, $00, $00, $09, $0a, $0b, $00
	db $00, $07, $08, $00, $00, $09, $16, $17, $00, $00, $00, $0a, $0b, $00, $00, $00
	db $13, $14, $0e, $11, $12, $13, $14, $00, $15, $0f, $10, $00, $10, $00, $07, $08
	db $00, $0a, $0b, $00, $13, $14, $00, $00, $0a, $0b, $0a, $0b, $07, $08, $00, $0f
	db $10, $00, $07, $08, $15, $11, $12, $00, $0f, $10, $0c, $0d, $15, $00, $0a, $0b
	db $07, $08, $0e, $0a, $0b, $00, $14, $18, $19, $00, $00, $11, $12, $00, $0c, $0d
	db $11, $12, $00, $0c, $13, $14, $00, $00, $11, $12, $00, $07, $08, $0e, $0a, $0b
	db $07, $08, $00, $13, $14, $15, $0a, $0b, $00, $00, $13, $14, $0f, $10, $00, $13
	db $00, $07, $08, $11, $12, $00, $00, $00, $00, $13, $14, $0a, $0b, $00, $00, $0c
	db $0d, $0a, $0b, $00, $00, $00, $00, $07, $08, $0f, $10, $00, $07, $08, $11, $12
	db $00, $00, $00, $00, $00, $0c, $0d, $09, $0a, $0b, $07, $08, $0a, $0b, $00, $00
	db $00, $00, $07, $08, $15, $11, $12, $00, $0c, $0d, $0a, $0b, $00, $00, $00, $00
	db $0c, $0d, $00, $0a, $0b, $00, $0d, $0e, $0a, $0b, $00, $00, $00, $0c, $0d, $00
	db $11, $12, $00, $00, $15, $11, $12, $00, $00, $00, $07, $08, $00, $09, $0a, $0b
	db $00, $00, $11, $12, $00, $00, $00, $00, $0c, $0d, $15, $11, $12, $00, $00, $00
	db $0a, $0b, $00, $00, $00, $07, $08, $00, $09, $0a, $0b, $00, $00, $00, $0a, $0b
	db $00, $00, $00, $00, $13, $14, $0e, $0f, $10, $00, $00, $00, $12, $00, $00, $00
	db $00, $00, $07, $08, $00, $00, $0f, $10, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $13, $14, $15, $0e, $0a, $0b, $00, $00, $00, $00, $00, $00, $00, $00, $0c
	db $0d, $00, $00, $0a, $0b, $00, $00, $00, $00, $00, $00, $00, $07, $08, $00, $00
	db $11, $12, $00, $00, $00, $00, $00, $00, $00, $00, $0c, $0d, $00, $00, $0f, $10
	db $00, $00, $10, $00, $00, $00, $00, $07, $08, $00, $00, $00, $00, $0a, $0b, $00
	db $0f, $10, $00, $00, $00, $07, $08, $00, $00, $0e, $00, $0f, $10, $00, $15, $0a
	db $0b, $00, $00, $00, $13, $14, $15, $0e, $00, $00, $0f, $10, $11, $12, $00, $00
	db $00, $00, $00, $13, $14, $00, $00, $00, $00, $0a, $0f, $10, $00, $00, $00, $00
	db $00, $07, $08, $00, $00, $00, $00, $0f, $09, $0a, $0b, $00, $00, $00, $00, $07
	db $08, $09, $00, $00, $00, $0e, $11, $12, $00, $00, $00, $00, $00, $00, $13, $14
	db $00, $00, $00, $09, $12, $00, $00, $00, $00, $00, $00, $00, $0c, $0d, $00, $00
	db $00, $0e, $0b, $00, $00, $00, $00, $00, $00, $07, $08, $15, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $0c, $0d, $00, $15, $16, $17, $00, $00, $00
	db $00, $00, $00, $00, $0c, $0d, $00, $00, $11, $12, $13, $14, $00, $00, $00, $00
	db $00, $07, $08, $0e, $00, $00, $0a, $0b, $07, $08, $00, $00, $00, $00, $00, $0c
	db $0d, $00, $00, $11, $12, $00, $00, $13, $00, $00, $00, $00, $0c, $0d, $00, $00
	db $00, $0a, $0b, $00, $00, $07, $00, $00, $00, $07, $08, $15, $00, $00, $0e, $0a
	db $0b, $00, $00, $07, $14, $00, $00, $00, $13, $14, $00, $00, $11, $12, $00, $00
	db $00, $0c, $08, $00, $00, $00, $0c, $0d, $00, $00, $0a, $0b, $00, $00, $07, $08
	db $0d, $00, $00, $0c, $0d, $16, $17, $00, $0a, $0b, $00, $00, $00, $13, $00, $00
	db $07, $08, $11, $12, $13, $14, $0f, $10, $00, $00, $00, $07, $00, $00, $07, $08
	db $0a, $0b, $00, $13, $14, $0a, $0b, $00, $00, $00, $00, $00, $0c, $0d, $0a, $0b
	db $00, $0c, $0d, $0f, $10, $00, $00, $00, $00, $0c, $0d, $00, $0f, $10, $0c, $0d
	db $00, $15, $0f, $10, $00, $00, $07, $08, $00, $00, $00, $18, $19, $00, $00, $00
	db $00, $0f, $10, $00, $0c, $0d, $00, $00, $00, $15, $00, $00, $00, $0e, $00, $00
	db $0f, $10, $0d, $09, $00, $00, $0e, $00, $00, $00, $09, $00, $00, $15, $00, $0f
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $1b, $1a, $00, $1d, $1c, $00, $00, $00
	db $00, $00, $00, $00, $1c, $1d, $00, $28, $29, $2a, $00, $1a, $1b, $00, $00, $00
	db $00, $00, $00, $21, $22, $23, $24, $25, $26, $27, $00, $00, $00, $00, $00, $00
	db $1d, $1c, $00, $1e, $1f, $20, $00, $1b, $1a, $00, $00, $00, $00, $00, $00, $00
	db $1a, $1b, $00, $1c, $1d, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $ff, $90, $00, $10, $48, $00, $00, $00, $20, $00, $00, $40, $20, $40, $80, $66

	nop
	nop
	nop
	nop
	ld bc, $0000
	nop
	nop
	ld [bc], a
	nop
	nop
	inc bc
	inc bc
	nop
	nop
	inc bc
	inc b
	nop
	rlca
	dec b
	ld b, $05
	ld b, $00
	rlca
	nop
	rlca
	ld [$0008], sp
	nop
	add hl, bc
	ld a, [bc]
	dec b
	ld b, $00
	ld bc, $0000
	nop
	nop
	nop
	dec bc
	nop
	nop
	inc c
	inc c
	nop
	nop
	dec c
	nop
	ld c, $00
	ld c, $00
	ld c, $00
	rrca
	inc c
	nop
	stop
	db $10
	ld [$0001], sp
	stop
	rlca
	inc c
	dec d
	ld de, $1612
	rla
	inc de
	inc de
	jr @+$1a

	inc de
	inc d
	jr jr_003_4bdd

	nop
	nop
	nop
	ld bc, $0000
	ld [$0008], sp
	db $10
	ld [$1001], sp
	nop
	stop
	inc d
	inc de
	add hl, de
	jr @+$03

	ld [$0000], sp
	ld a, [de]

jr_003_4bdd:
	inc bc
	ld c, $00
	dec de
	nop
	nop
	nop
	inc e
	inc e
	nop
	nop
	ld [$0001], sp
	nop
	ld bc, $1008
	nop
	inc b
	nop
	rlca
	nop
	dec e
	nop
	ld e, $1f
	nop
	nop
	rra
	rra
	nop
	nop
	rra
	jr nz, jr_003_4c01

jr_003_4c01:
	ld a, [de]
	rra
	ld c, $01
	ld bc, $0000
	rlca
	nop
	rlca
	nop
	nop
	dec e
	nop
	dec e
	dec e
	nop
	dec e
	nop
	nop
	ld c, $00
	ld c, $00
	nop
	ld bc, $0001
	nop
	ld bc, $0000
	dec e
	rra
	ld e, $07
	nop
	dec d
	nop
	nop
	ld c, $00
	rrca
	ld bc, $1000
	nop
	nop
	nop
	jr nz, jr_003_4c34

jr_003_4c34:
	nop
	ld a, [de]
	nop
	ld c, $07
	nop
	rlca
	rra
	nop
	ld c, $1f
	ld c, $1d
	ld c, $1d
	ld c, $1d
	ld c, $1d
	rrca
	ld hl, $2122
	ld [hli], a
	ld hl, $2123
	inc hl
	ld [hli], a
	inc h
	jr z, jr_003_4c7c

	inc h
	ld [hli], a
	add hl, hl
	add hl, hl
	dec h
	ld hl, $2125
	inc hl
	ld [hli], a
	inc hl
	ld [hli], a
	ld h, $27
	ld a, [hli]
	dec hl
	ld [hli], a
	dec h
	ld [hli], a
	dec h
	ld [hli], a
	inc h
	add hl, hl
	add hl, hl
	inc h
	ld [hli], a
	jr z, jr_003_4c98

	ld [hli], a
	ld hl, $2122
	ld hl, $3722
	scf
	inc l
	dec l
	dec l
	nop

jr_003_4c7c:
	ld l, $2e
	jr c, jr_003_4cb8

	cpl
	jr nc, @+$3b

	ld a, [hld]
	dec h
	ld hl, $2225
	inc hl
	ld [hli], a
	inc hl
	dec sp
	ld sp, $2832
	inc a
	inc sp
	inc [hl]
	dec a
	jr z, @+$24

	dec h
	jr z, jr_003_4cbd

jr_003_4c98:
	ld hl, $2223
	inc hl
	dec [hl]
	ld [hl], $00
	dec [hl]
	ld [hli], a
	ld hl, $3737
	inc h
	nop
	ld b, e
	ld b, h
	ld a, $3f
	ld b, l
	ld b, [hl]
	dec [hl]
	jr z, jr_003_4ccc

	ld l, $2d
	ld l, $00
	jr c, jr_003_4ce3

	ld b, b
	jr c, jr_003_4ce7

jr_003_4cb8:
	ld b, c
	ld l, $30
	jr c, jr_003_4ceb

jr_003_4cbd:
	dec [hl]
	jr c, jr_003_4cc0

jr_003_4cc0:
	dec sp
	dec l
	ld b, a
	nop
	nop
	ld b, d
	ld b, e
	ld b, h
	dec e
	jr c, jr_003_4ce8

	nop

jr_003_4ccc:
	nop
	add hl, sp
	nop
	ld a, $3a
	nop
	ccf
	nop
	ld c, b
	nop
	nop
	nop
	nop
	ld b, l
	jr nz, jr_003_4cdc

jr_003_4cdc:
	ld b, [hl]
	nop
	nop
	nop
	ld c, c
	ld c, c
	ld c, c

jr_003_4ce3:
	ld c, c
	ld c, c
	ld c, d
	ld c, d

jr_003_4ce7:
	nop

jr_003_4ce8:
	ld c, e
	nop
	ld c, h

jr_003_4ceb:
	ld c, e
	ld c, e
	ld c, h
	ld c, h
	nop
	ld c, l
	ld c, [hl]
	nop
	ld c, l
	ld c, e
	ld c, h
	nop
	ld c, e
	nop
	ld c, h
	ld c, h
	nop
	ld c, a
	ld d, b
	ld d, d
	ld d, e
	ld d, c
	ld c, c
	ld d, c
	ld c, c
	nop
	ld c, h
	ld c, h
	ld c, e
	ld c, e
	nop
	nop
	ld c, e
	nop
	ld d, h
	ld d, h
	ld c, c
	ld c, c
	ld d, l
	ld c, c
	ld d, l
	ld d, [hl]
	nop
	ld c, c
	ld d, [hl]
	ld d, a
	ld d, b
	ld d, d
	ld d, e
	nop
	nop
	ld e, b
	ld e, c
	nop
	nop
	ld e, d
	ld e, e
	nop
	nop
	nop
	ld h, b
	ld e, h
	ld e, l
	ld h, c
	ld h, d
	ld e, [hl]
	ld e, a
	ld h, e
	ld h, h
	nop
	nop
	ld h, l
	nop
	nop
	ld h, [hl]
	nop
	nop
	ld h, a
	ld h, [hl]
	ld h, [hl]
	nop
	ld l, b
	ld l, c
	nop
	ld l, b
	ld l, b
	nop
	nop
	nop
	stop
	nop
	nop
	nop
	ld bc, $0000
	nop
	nop
	db $10
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec d
	ld d, $16
	ld d, $17
	nop
	dec b
	nop
	ld [de], a
	inc de
	ld [de], a
	nop
	ld c, $0b
	ld de, $1200
	inc de
	inc d
	inc de
	ld [de], a
	nop
	add hl, bc
	rlca
	ld [$0d07], sp
	nop
	ld b, $07
	ld [$1007], sp
	nop
	nop
	nop
	rrca
	nop
	dec b
	nop
	dec c
	nop
	ld b, $00
	dec b
	nop
	rrca
	nop
	add hl, bc
	rlca
	ld c, $0b
	dec bc
	dec bc
	inc c
	nop
	ld b, $00
	dec b
	nop
	rrca
	nop
	rrca
	nop
	dec c
	nop
	nop
	nop
	nop
	nop
	ld b, $00
	dec b
	nop
	ld c, $0b
	dec bc
	dec bc
	inc c
	nop
	nop
	nop
	nop
	nop
	ld b, $00
	dec b
	nop
	dec c
	nop
	nop
	nop
	nop
	nop
	ld bc, $0101
	nop
	ld a, [bc]
	dec bc
	dec bc
	dec bc
	inc c
	nop
	nop
	nop
	nop
	nop
	add hl, bc
	add hl, bc
	add hl, bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0101
	ld bc, $0101
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl, bc
	add hl, bc
	add hl, bc
	add hl, bc
	add hl, bc
	add hl, bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0101
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	inc bc
	inc bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, $07
	ld [$0007], sp
	ld bc, $0000
	nop
	nop
	nop
	nop
	ld [bc], a
	inc bc
	inc b
	nop
	dec b
	nop
	nop
	add hl, bc
	nop
	add hl, bc
	nop
	nop
	nop
	nop
	ld b, $07
	ld e, $07
	ld [$0007], sp
	add hl, bc
	nop
	add hl, bc
	nop
	nop
	nop
	nop
	ld b, $00
	rrca
	nop
	dec b
	nop
	nop
	add hl, bc
	nop
	add hl, bc
	nop
	nop
	nop
	nop
	ld b, $13
	inc d
	inc de
	ld [de], a
	nop
	nop
	add hl, bc
	nop
	add hl, bc
	nop
	nop
	nop
	nop
	ld b, $00
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	add hl, bc
	nop
	nop
	nop
	nop
	ld a, [bc]
	dec bc
	dec bc
	ld de, $1d1d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, $00
	nop
	nop
	nop
	nop
	nop
	nop
	add hl, bc
	add hl, bc
	add hl, bc
	add hl, bc
	nop
	nop
	ld a, [bc]
	dec bc
	dec bc
	inc bc
	inc bc
	inc bc
	inc e
	nop
	ld bc, $0101
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	dec c
	nop
	nop
	add hl, bc
	add hl, bc
	nop
	nop
	nop
	nop
	nop
	nop
	inc de
	ld [de], a
	nop
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	nop
	dec de
	inc bc
	inc e
	nop
	nop
	nop
	nop
	add hl, bc
	add hl, bc
	add hl, bc
	nop
	rlca
	ld [$1007], sp
	nop
	dec c
	nop
	nop
	nop
	nop
	ld bc, $0101
	ld bc, $0500
	nop
	ld a, [de]
	rlca
	dec c
	nop
	nop
	nop
	nop
	add hl, bc
	add hl, bc
	add hl, bc
	nop
	nop
	dec b
	nop
	jr jr_003_4eeb

jr_003_4eeb:
	dec c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld [de], a
	inc de
	add hl, de
	inc de
	dec c
	nop
	nop
	nop
	nop
	add hl, bc
	nop
	add hl, bc
	nop
	nop
	nop
	nop
	jr jr_003_4f07

jr_003_4f07:
	dec c
	nop
	nop
	nop
	nop
	add hl, bc
	nop
	add hl, bc
	nop
	dec bc
	dec bc
	dec bc
	dec bc
	dec bc
	inc c
	nop
	nop
	nop
	nop
	add hl, bc
	nop
	add hl, bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl, bc
	nop
	ld bc, $0101
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl, bc
	add hl, bc
	nop
	nop
	nop
	nop
	add hl, bc
	add hl, bc
	add hl, bc
	nop
	nop
	nop
	ld [bc], a
	inc bc
	ld bc, $0101
	nop
	nop
	nop
	ld bc, $0001
	nop
	nop
	nop
	ld b, $00
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	inc bc
	inc bc
	inc bc
	inc e
	ld b, $00
	inc bc
	inc bc
	inc e
	nop
	nop
	nop
	nop
	ld b, $00
	nop
	dec b
	dec c
	ld b, $07
	nop
	dec b
	dec c
	nop
	nop
	nop
	nop
	ld b, $00
	nop
	dec b
	dec de
	inc b
	nop
	nop
	dec b
	dec c
	nop
	ld [bc], a
	inc bc
	inc bc
	inc b
	nop
	nop
	dec b
	nop
	nop
	nop
	nop
	dec b
	dec de
	inc bc
	inc b
	nop
	jr jr_003_4f96

jr_003_4f96:
	nop
	nop
	dec b
	nop
	nop
	nop
	rlca
	ld [$0107], sp
	nop
	nop
	rra
	rlca
	rlca
	ld bc, $0005
	ld [de], a
	inc de
	nop
	dec b
	nop
	jr jr_003_4faf

jr_003_4faf:
	nop
	nop
	nop
	nop
	jr jr_003_4fba

	nop
	dec b
	nop
	nop
	ld [de], a

jr_003_4fba:
	inc de
	add hl, de
	inc de
	ld [de], a
	inc de
	inc de
	inc de
	add hl, de
	ld [de], a
	nop
	dec b
	nop
	nop
	nop
	nop
	jr jr_003_4fcb

jr_003_4fcb:
	dec b
	nop
	nop
	nop
	jr jr_003_4fd1

jr_003_4fd1:
	nop
	dec b
	nop
	nop
	nop
	nop
	jr jr_003_4fd9

jr_003_4fd9:
	dec b
	nop
	ld a, [de]
	rlca
	rra
	rlca
	rlca
	ld [$1307], sp
	ld [de], a
	nop
	jr jr_003_4fe7

jr_003_4fe7:
	dec b
	nop
	jr jr_003_4feb

jr_003_4feb:
	nop
	nop
	nop
	dec b
	nop
	nop
	dec b
	nop
	jr jr_003_4ff5

jr_003_4ff5:
	ld [de], a
	inc de
	add hl, de
	inc de
	ld [de], a
	inc de
	inc de
	ld [de], a
	nop
	rlca
	ld [$2f07], sp
	nop
	nop
	nop
	jr jr_003_5007

jr_003_5007:
	dec b
	nop
	nop
	nop
	nop
	nop
	dec b
	nop
	jr jr_003_5011

jr_003_5011:
	nop
	nop
	jr jr_003_5015

jr_003_5015:
	dec b
	nop
	nop
	nop
	ld c, $13
	ld [de], a
	nop
	jr jr_003_502d

	dec bc
	dec bc
	ld de, $0500
	nop
	nop
	nop
	dec c
	nop
	nop
	nop
	jr jr_003_503a

jr_003_502d:
	nop
	nop
	ld b, $00
	dec b
	nop
	nop
	nop
	dec c
	nop
	ld c, $0b
	dec bc

jr_003_503a:
	inc c
	ld bc, $0601
	nop
	dec b
	nop
	ld c, $0b
	inc c
	nop
	dec c
	nop
	nop
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [bc]
	dec bc
	dec bc
	dec bc
	inc c
	nop
	nop
	dec bc
	inc c
	nop
	nop
	ld bc, $0101
	nop
	nop
	nop
	add hl, bc
	add hl, bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0101
	nop
	nop
	dec bc
	ld de, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld c, $0b
	nop
	ld b, $22
	ld [hli], a
	ld [hli], a
	jr z, jr_003_5083

jr_003_5083:
	nop
	nop
	nop
	nop
	nop
	dec c
	nop
	nop
	ld b, $00
	nop
	nop
	jr z, jr_003_5091

jr_003_5091:
	nop
	ld hl, $2222
	ld [hli], a
	dec c
	nop
	nop
	ld a, [bc]
	dec bc
	dec l
	nop
	jr z, jr_003_509f

jr_003_509f:
	nop
	jr z, jr_003_50a2

jr_003_50a2:
	ld l, $0b
	inc c
	nop
	ld a, [hli]
	ld a, [hli]
	dec hl
	ld h, $00
	ld [hli], a
	inc l
	ld [hli], a
	ld [hli], a
	jr z, jr_003_50da

	dec d
	ld a, [hli]
	ld a, [hli]
	dec h
	dec h
	ld bc, $0026
	nop
	daa
	nop
	nop
	jr z, jr_003_50e8

	add hl, bc
	dec h
	dec h
	nop
	ld [bc], a
	inc bc
	jr nz, jr_003_50e8

	ld [hli], a
	inc hl
	nop
	nop
	ld [hli], a
	inc h
	inc bc
	inc e
	nop
	nop
	ld b, $00
	nop
	jr z, jr_003_50d6

jr_003_50d6:
	nop
	nop
	nop
	nop

jr_003_50da:
	ld hl, $0d22
	nop
	nop
	ld b, $00
	nop
	ld hl, $2222
	jr z, jr_003_50e7

jr_003_50e7:
	nop

jr_003_50e8:
	jr z, jr_003_50ea

jr_003_50ea:
	dec c
	nop
	nop
	ld b, $22
	ld [hli], a
	jr nc, jr_003_50f2

jr_003_50f2:
	nop
	jr z, jr_003_50f5

jr_003_50f5:
	nop
	jr z, jr_003_50f8

jr_003_50f8:
	dec c
	nop
	nop
	ld a, [bc]
	dec bc
	dec l
	nop
	nop
	nop
	jr z, jr_003_5103

jr_003_5103:
	nop
	dec [hl]
	dec bc
	inc c
	nop
	ld a, [hli]
	ld a, [hli]
	dec hl
	ld h, $00
	ld hl, $222c
	ld [hli], a
	jr z, jr_003_5147

	dec d
	ld a, [hli]
	ld a, [hli]
	dec h
	dec h
	ld bc, $2232
	nop
	daa
	nop
	nop
	ld hl, $0933
	dec h
	dec h
	nop
	ld [bc], a
	inc bc
	jr nz, jr_003_5129

jr_003_5129:
	nop
	daa
	nop
	nop
	jr z, jr_003_5160

	inc bc
	inc e
	nop
	nop
	ld b, $00
	nop
	nop
	nop
	daa
	nop
	nop
	jr z, jr_003_513d

jr_003_513d:
	nop
	dec c
	nop
	nop
	ld b, $00
	nop
	ld hl, $2728

jr_003_5147:
	nop
	nop
	ld [hli], a
	ld hl, $0d22
	nop
	nop
	ld b, $00
	nop
	jr z, jr_003_5176

	ld [hli], a
	ld [hli], a
	ld hl, $3022
	nop
	dec c
	nop
	nop
	ld a, [bc]
	dec bc
	dec l

jr_003_5160:
	jr z, jr_003_5162

jr_003_5162:
	nop
	nop
	jr z, jr_003_5166

jr_003_5166:
	ld l, $0b
	inc c
	nop
	ld a, [hli]
	ld a, [hli]
	dec hl
	ld h, $21
	ld [hli], a
	jr z, jr_003_5172

jr_003_5172:
	jr z, jr_003_5174

jr_003_5174:
	add hl, hl
	dec d

jr_003_5176:
	ld a, [hli]
	ld a, [hli]
	dec h
	dec h
	ld bc, $3032
	nop
	jr z, jr_003_5180

jr_003_5180:
	ld hl, $3321
	add hl, bc
	dec h
	dec h
	nop
	ld [bc], a
	inc bc
	jr nz, jr_003_518b

jr_003_518b:
	nop
	ld hl, $3022
	jr z, @+$33

	inc bc
	inc e
	nop
	nop
	ld b, $00
	nop
	ld hl, $0022
	nop
	nop
	jr z, jr_003_519f

jr_003_519f:
	nop
	dec c
	nop
	nop
	ld b, $00
	nop
	jr z, jr_003_51a8

jr_003_51a8:
	nop
	nop
	nop
	jr z, jr_003_51ad

jr_003_51ad:
	nop
	dec c
	nop
	nop
	ld b, $00
	nop
	jr z, jr_003_51b6

jr_003_51b6:
	nop
	nop
	nop
	ld hl, $2222
	dec c
	nop
	nop
	ld a, [bc]
	ld de, $2100
	ld [hli], a
	ld hl, $2222
	jr nc, jr_003_51c9

jr_003_51c9:
	ld c, $0c
	nop
	dec h
	dec h
	ld b, $22
	jr nc, jr_003_51d2

jr_003_51d2:
	jr z, jr_003_51d4

jr_003_51d4:
	nop
	nop
	nop
	dec c
	dec h
	dec h
	nop
	nop
	ld a, [bc]
	dec bc
	ld de, $2800
	nop
	nop
	ld c, $0b
	inc c
	nop
	nop
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld b, $00
	ld [hli], a
	ld [hli], a
	ld [hli], a
	dec c
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	ld a, [hli]
	nop
	nop
	nop
	nop
	ld a, [bc]
	dec bc
	dec bc
	dec bc
	dec bc
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, e
	nop
	nop
	ld hl, $2822
	nop
	nop
	nop
	nop
	ld hl, $0028
	ld b, e
	inc a
	ld [hli], a
	jr z, jr_003_524c

	nop
	ld hl, $2222
	ld [hli], a
	jr z, jr_003_5253

	ld [hli], a
	ld [hli], a
	inc a
	ld c, l
	nop
	ld [hli], a
	jr z, jr_003_5233

jr_003_5233:
	ld [hli], a
	jr z, jr_003_5236

jr_003_5236:
	nop
	jr z, jr_003_5261

	ld hl, $5528
	inc a
	nop
	ld hl, $2822
	nop
	ld hl, $2222
	ld [hli], a
	jr z, jr_003_5270

	jr z, jr_003_5286

	ld c, l
	nop

jr_003_524c:
	jr z, jr_003_524e

jr_003_524e:
	ld hl, $5a22
	ld e, e
	nop

jr_003_5253:
	nop
	jr z, jr_003_527e

	ld [hli], a
	ld d, l
	inc a
	ld [hli], a
	jr nc, jr_003_525c

jr_003_525c:
	ld d, [hl]
	nop
	ld d, a
	ld e, b
	nop

jr_003_5261:
	ld e, c
	ld hl, $0030
	inc a
	ld c, l
	nop
	nop
	ld c, [hl]
	ld c, a
	ld d, b
	ld d, c
	ld d, d
	ld d, e
	ld d, h

jr_003_5270:
	ld c, [hl]
	nop
	nop
	ld d, l
	ld b, c
	ld b, d
	ld b, e
	ld b, h
	ld b, l
	ld b, [hl]
	ld b, a
	ld c, b
	ld c, c
	ld c, d

jr_003_527e:
	ld b, h
	ld b, e
	ld c, e
	ld c, h
	ld [hl], $37
	jr c, jr_003_52bf

jr_003_5286:
	ld a, [hld]
	dec sp
	inc a
	inc a
	dec a
	scf
	ld a, $3f
	ld a, [hld]
	ld b, b
	rst $38
	rst $38
	xor [hl]
	xor $e2
	rst $38
	xor [hl]
	ld a, e
	xor a
	rst $30
	xor [hl]
	reti


	cp d
	cp l
	db $fc
	ld sp, hl
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld e, l
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld e, h
	ld e, l
	ld h, c

jr_003_52bf:
	nop
	nop
	ld e, [hl]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, b
	ld e, h
	ld e, h
	ld e, l
	ld e, [hl]
	ld h, e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld l, b
	ld h, c
	ld e, [hl]
	ld h, l
	nop
	nop
	ld h, d
	nop
	nop
	ld h, [hl]
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	ld h, l
	ld h, c
	nop
	nop
	nop
	ld h, l
	ld h, c
	ld e, [hl]
	ld h, l
	ld e, [hl]
	ld h, a
	ld e, h
	ld l, c
	ld h, l
	ld h, e
	nop
	nop
	nop
	nop
	nop
	ld h, e
	nop
	nop
	ld e, a
	nop
	ld e, h
	ld e, l
	ld h, c
	nop
	ld e, [hl]
	nop
	nop
	nop
	ld h, c
	ld h, l
	nop
	ld h, c
	nop
	ld h, b
	ld e, h
	ld l, b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, e
	nop
	ld e, a
	ld h, h
	ld e, h
	ld e, h
	ld e, l
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, [hl]
	ld h, l
	ld h, l
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	ld h, l
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, c
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	ld h, l
	ld h, c
	ld h, [hl]
	nop
	nop
	nop
	nop
	nop
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld l, b
	nop
	nop
	ld h, e
	nop
	ld h, c
	nop
	nop
	nop
	ld e, a
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	ld e, [hl]
	nop
	ld h, l
	nop
	nop
	nop
	ld h, l
	ld h, c
	ld h, [hl]
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	ld h, c
	ld h, d
	nop
	nop
	nop
	ld h, e
	nop
	nop
	ld h, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	nop
	nop
	nop
	ld e, [hl]
	nop
	ld e, a
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	nop
	ld h, l
	ld e, a
	ld h, [hl]
	nop
	nop
	nop
	ld e, [hl]
	ld h, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	ld h, d
	nop
	ld l, d
	ld e, [hl]
	nop
	nop
	ld h, c
	nop
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	ld h, c
	ld h, l
	nop
	ld e, a
	nop
	ld h, l
	nop
	ld e, [hl]
	ld e, a
	ld h, a
	ld e, h
	ld e, h
	ld l, b
	ld h, c
	nop
	nop
	ld h, [hl]
	nop
	nop
	nop
	ld h, e
	ld e, a
	nop
	ld h, b
	ld e, h
	ld e, h
	ld l, b
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, [hl]
	nop
	ld e, a
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, c
	ld h, l
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	nop
	ld h, l
	ld h, c
	nop
	nop
	ld h, l
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	ld h, d
	nop
	ld h, l
	nop
	nop
	nop
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	ld h, l
	ld h, c
	nop
	nop
	nop
	nop
	ld h, l
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	nop
	nop
	ld h, e
	ld e, [hl]
	nop
	nop
	ld h, d
	ld h, c
	nop
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	ld h, c
	nop
	ld h, l
	nop
	ld e, a
	nop
	ld e, [hl]
	nop
	nop
	ld h, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	ld h, c
	ld h, c
	ld h, d
	ld h, c
	ld h, e
	ld e, a
	nop
	nop
	ld h, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	nop
	ld h, c
	nop
	ld h, [hl]
	nop
	ld h, c
	ld h, d
	nop
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld l, b
	nop
	ld h, [hl]
	nop
	nop
	nop
	nop
	nop
	ld h, d
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	nop
	nop
	ld h, [hl]
	nop
	nop
	nop
	nop
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	ld e, a
	ld e, [hl]
	ld e, a
	nop
	nop
	nop
	nop
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	nop
	ld h, e
	ld e, [hl]
	nop
	nop
	nop
	nop
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, b
	nop
	ld h, l
	nop
	ld e, a
	nop
	nop
	nop
	nop
	ld e, [hl]
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	ld h, l
	ld e, [hl]
	ld h, d
	nop
	nop
	nop
	ld e, [hl]
	ld h, [hl]
	ld h, d
	nop
	ld h, h
	ld e, h
	ld e, h
	ld e, l
	ld h, c
	nop
	nop
	nop
	nop
	ld h, l
	ld h, e
	ld e, a
	nop
	nop
	ld h, h
	ld e, h
	ld e, h
	ld l, c
	nop
	nop
	nop
	nop
	nop
	ld h, c
	nop
	ld e, [hl]
	ld h, l
	ld h, b
	ld e, h
	ld e, h
	ld l, c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, d
	nop
	ld h, b
	ld e, h
	ld e, h
	ld l, b
	ld e, a
	ld e, [hl]
	nop
	nop
	ld h, l
	nop
	ld e, [hl]
	nop
	nop
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld l, b
	nop
	ld h, d
	nop
	nop
	ld h, c
	ld h, e
	ld e, a
	nop
	nop
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	nop
	ld h, [hl]
	nop
	ld h, c
	ld h, d
	nop
	nop
	nop
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	ld h, d
	nop
	ld h, c
	nop
	nop
	ld h, d
	ld h, [hl]
	nop
	ld h, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	ld h, c
	ld h, e
	nop
	nop
	nop
	ld h, l
	ld e, a
	nop
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	ld h, [hl]
	nop
	ld e, [hl]
	ld h, l
	nop
	nop
	ld h, [hl]
	nop
	nop
	ld h, b
	ld e, h
	ld e, h
	ld l, b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	ld h, c
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	ld h, l
	ld e, a
	nop
	nop
	nop
	nop
	nop
	ld h, [hl]
	nop
	ld h, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	ld h, [hl]
	nop
	nop
	nop
	nop
	ld h, l
	ld h, e
	ld e, a
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	nop
	nop
	nop
	nop
	ld e, a
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, b
	nop
	nop
	nop
	ld h, [hl]
	nop
	nop
	nop
	nop
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	ld h, l
	nop
	ld e, [hl]
	ld e, a
	nop
	nop
	nop
	nop
	nop
	ld h, a
	ld e, h
	ld e, h
	ld l, b
	nop
	ld h, [hl]
	ld h, l
	ld h, e
	nop
	nop
	nop
	ld h, d
	nop
	ld h, [hl]
	nop
	ld h, h
	ld e, h
	ld e, h
	ld e, l
	nop
	ld h, c
	nop
	ld h, l
	nop
	ld h, l
	nop
	ld e, [hl]
	ld e, a
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	nop
	nop
	nop
	ld h, c
	ld h, e
	nop
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	nop
	nop
	nop
	nop
	ld h, [hl]
	ld h, l
	ld h, d
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	nop
	nop
	ld h, [hl]
	nop
	ld h, c
	ld h, d
	nop
	nop
	ld h, l
	ld h, h
	ld e, h
	ld e, h
	ld l, b
	ld h, d
	nop
	ld h, c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	ld h, l
	ld e, a
	ld h, c
	nop
	nop
	nop
	nop
	nop
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, b
	ld h, l
	ld h, e
	nop
	nop
	nop
	nop
	nop
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	ld h, [hl]
	nop
	ld h, l
	nop
	nop
	nop
	nop
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, b
	ld e, a
	ld h, [hl]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	ld h, l
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	nop
	nop
	nop
	nop
	ld h, c
	ld h, [hl]
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	nop
	nop
	ld h, [hl]
	nop
	nop
	ld h, l
	ld h, e
	ld h, l
	ld h, h
	ld e, h
	ld e, h
	ld e, h
	ld l, b
	ld h, d
	ld h, d
	ld h, c
	nop
	nop
	nop
	ld h, c
	nop
	ld e, [hl]
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld l, b
	ld h, l
	ld h, e
	ld e, [hl]
	nop
	nop
	nop
	nop
	nop
	ld e, [hl]
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	ld e, [hl]
	ld e, a
	ld h, d
	ld h, [hl]
	nop
	nop
	nop
	nop
	nop
	ld h, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	nop
	ld h, l
	nop
	nop
	ld h, c
	ld h, [hl]
	nop
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	nop
	nop
	ld h, l
	ld h, e
	ld e, a
	ld e, [hl]
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	nop
	ld h, d
	nop
	ld h, c
	nop
	ld e, a
	nop
	nop
	ld h, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	nop
	nop
	ld h, c
	nop
	nop
	ld h, d
	nop
	nop
	nop
	ld h, h
	ld e, h
	ld e, h
	ld l, c
	nop
	nop
	ld h, l
	nop
	ld e, [hl]
	nop
	nop
	nop
	nop
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	ld h, l
	ld h, c
	ld h, e
	nop
	nop
	nop
	nop
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	ld h, c
	nop
	ld e, a
	ld e, a
	nop
	nop
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, b
	nop
	nop
	nop
	nop
	ld h, d
	nop
	nop
	ld h, c
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	ld e, [hl]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, a
	ld e, h
	ld e, h
	ld e, h
	ld l, c
	ld h, l
	ld h, d
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, c
	ld h, [hl]
	ld h, h
	ld e, h
	ld l, c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, [hl]
	ld e, a
	ld h, a
	ld l, c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, d
	nop
	nop
	ld h, [hl]
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, d
	nop
	nop
	ld h, [hl]
	nop
	ld h, e
	nop
	ld e, a
	nop
	ld h, [hl]
	nop
	nop
	ld h, d
	nop
	ld h, c
	nop
	ld h, e
	nop
	nop
	nop
	ld h, l
	nop
	ld e, [hl]
	nop
	nop
	nop
	nop
	ld h, l
	nop
	ld e, [hl]
	nop
	nop
	nop
	nop
	nop
	ld h, e
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, e
	nop
	nop
	nop
	nop
	nop
	ld h, l
	nop
	ld e, a
	nop
	nop
	nop
	nop
	ld h, c
	nop
	ld e, [hl]
	nop
	nop
	nop
	nop
	nop
	ld e, a
	nop
	ld h, [hl]
	nop
	nop
	ld h, d
	nop
	ld h, c
	nop
	nop
	nop
	nop
	ld h, [hl]
	ld h, l
	nop
	ld e, [hl]
	nop
	nop
	nop
	nop
	ld h, l
	nop
	ld e, [hl]
	ld h, d
	nop
	ld h, e
	nop
	nop
	ld h, l
	nop
	ld h, [hl]
	nop
	nop
	ld h, d
	nop
	ld e, [hl]
	nop
	nop
	ld h, e
	ld e, l
	nop
	nop
	ld h, c
	ld h, e
	nop
	nop
	nop
	nop
	ld h, e
	ld e, a
	nop
	nop
	ld h, b
	ld e, h
	ld e, l
	nop
	nop
	ld e, a
	ld [hl], c
	ld [hl], d
	ld [hl], e
	ld [hl], h
	ld h, c
	nop
	nop
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	ld h, b
	ld e, l
	ld l, l
	ld l, [hl]
	ld l, a
	ld [hl], b
	ld h, b
	ld e, l
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, l
	ld l, e
	ld l, h
	ld h, b
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	ld e, h
	rst $38
	rst $30
	rst $38
	ld e, h
	dec a
	ld a, a
	db $eb
	ld e, l
	or $31
	add hl, sp
	ld b, l
	cp c
	dec l
	ld [$007e], a
	nop
	nop
	nop
	ld bc, $0201
	ld [bc], a
	inc bc
	inc bc
	nop
	nop
	nop
	nop
	inc b
	dec b
	nop
	nop
	ld b, $07
	nop
	ld [$0e00], sp
	add hl, bc
	ld a, [bc]
	rrca
	nop
	dec bc
	inc c
	nop
	db $10
	dec c
	nop
	ld de, $1200
	inc de
	ld d, $17
	inc d
	dec d
	jr jr_003_5835

	ld [bc], a
	ld h, d
	db $10
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_003_5835:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add hl, bc
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	add hl, bc
	ld a, [bc]
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	ld b, $07
	ld [$0000], sp
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0001
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rst $38

	db $00, $00, $00, $00, $01, $02, $02, $01, $03, $03, $00, $00, $00, $04, $13, $14
	db $05, $06, $15, $16, $07, $08, $17, $18, $09, $0a, $19, $1a, $0b, $0c, $1b, $1c
	db $0d, $0e, $1d, $1e, $0f, $10, $1f, $20, $11, $12, $21, $22, $23, $24, $32, $33
	db $25, $26, $34, $35, $27, $28, $36, $37, $29, $2a, $38, $39, $2b, $2c, $3a, $3b
	db $2d, $2e, $3c, $3d, $2f, $30, $3e, $3f, $31, $00, $40, $41, $42, $43, $52, $53
	db $44, $45, $00, $54, $46, $47, $00, $55, $48, $49, $56, $57, $4a, $4b, $58, $59
	db $4c, $4d, $00, $00, $4e, $4f, $5a, $5b, $50, $51, $00, $00, $5c, $5d, $62, $62
	db $5e, $5f, $62, $62, $60, $61, $62, $62, $48, $09, $00, $04, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $1b, $1c, $1b, $1b, $1b, $1c, $1c
	db $1b, $1d, $1b, $00, $00, $00, $00, $00, $13, $14, $15, $16, $17, $18, $19, $1a
	db $00, $00, $00, $00, $00, $00, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $00, $00
	db $00, $00, $00, $00, $03, $04, $05, $06, $07, $08, $09, $0a, $00, $00, $00, $00
	db $00, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $00, $00, $00, $00, $01
	db $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $ff, $50, $0a, $12

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	ld bc, $0402
	dec b
	ld b, $07
	ld a, [bc]
	dec bc
	ld [$0c09], sp
	dec c
	ld c, $0f
	ld [de], a
	inc de
	db $10
	ld de, $1514
	nop
	nop
	nop
	add hl, de
	nop
	ld d, $1a
	dec de
	rla
	jr jr_003_5a03

	nop
	dec e
	ld e, $22
	inc hl
	rra
	jr nz, jr_003_5a13

	dec h
	ld hl, $0000
	nop
	ld h, $27
	inc l
	dec l
	jr z, jr_003_5a23

	ld l, $2f
	ld a, [hli]
	dec hl
	jr nc, jr_003_5a31

	nop
	nop
	nop

jr_003_5a03:
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	ld [$1000], sp
	ld b, b
	ld b, b
	nop
	nop
	and [hl]
	inc d
	nop

jr_003_5a13:
	add b
	nop
	inc c
	nop
	db $10
	inc b
	ld c, h
	nop
	ld bc, $8080
	nop
	nop
	nop
	nop
	nop

jr_003_5a23:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_003_5a31:
	nop
	dec c
	ld c, $0f
	dec c
	ld c, $0f
	dec c
	ld c, $0f
	dec c
	nop
	nop
	nop
	nop

jr_003_5a40:
	nop
	nop
	nop
	nop
	nop
	nop
	ld a, [bc]
	dec bc
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rlca
	ld [$0009], sp
	nop
	nop
	nop

jr_003_5a5b:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	ld b, $00
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0002
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rst $38
	add b
	jr nz, jr_003_5a40

	and c
	ld h, b
	ld [$0204], sp
	inc d
	add b
	nop
	jr nz, jr_003_5a5b

	nop
	ld b, $a0
	nop
	nop
	ld bc, $8800
	adc d
	ld [bc], a
	nop
	ld [bc], a
	ld [bc], a
	nop
	add b
	db $10
	jr nz, jr_003_5af4

	nop
	nop
	nop
	ld [de], a
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	ld b, $01
	ld [bc], a
	rlca
	ld [$0403], sp
	nop
	nop
	nop
	add hl, bc
	ld a, [bc]
	dec bc
	nop
	nop
	db $10
	ld de, $0d0c
	ld [de], a
	inc de
	ld c, $0f
	inc d
	dec d
	nop
	nop
	nop
	dec e

jr_003_5af4:
	nop
	nop
	ld e, $1f
	nop
	nop
	jr nz, @+$23

	ld bc, $2216
	inc hl
	rla
	jr jr_003_5b27

	dec h
	add hl, de
	ld a, [de]
	ld h, $27
	dec de
	inc e
	jr z, jr_003_5b35

	nop
	ld a, [hli]
	dec a
	ld a, $2b
	inc l
	ccf
	ld b, b
	dec l
	ld l, $41
	ld b, d
	cpl
	jr nc, jr_003_5b5e

	ld b, h
	ld sp, $4532
	ld b, [hl]
	inc sp
	inc [hl]
	ld b, a
	ld c, b
	dec [hl]
	ld [hl], $49

jr_003_5b27:
	ld c, d
	scf
	jr c, jr_003_5b76

	ld c, h
	add hl, sp
	ld a, [hld]
	ld c, l
	ld c, [hl]
	dec sp
	inc a
	ld c, a
	ld d, b
	nop

jr_003_5b35:
	jr jr_003_5b37

jr_003_5b37:
	add b
	nop
	sub b
	nop
	nop
	jr z, jr_003_5b3e

jr_003_5b3e:
	nop
	dec l
	nop
	rlca
	nop
	inc c
	jr nz, @+$0a

	nop
	nop
	nop
	nop
	nop
	adc b
	nop
	ld [$2000], sp
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_003_5b5e:
	nop
	nop
	nop
	nop
	rrca
	db $10
	ld de, $1312
	inc d
	dec d
	ld d, $17
	jr jr_003_5b6d

jr_003_5b6d:
	nop
	nop
	nop
	nop
	nop
	nop
	ld [$0a09], sp

jr_003_5b76:
	dec bc
	inc c
	dec c
	ld c, $00
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	ld b, $07
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0302
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0302
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0302
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0302
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0302
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rst $38
	nop
	jr z, jr_003_5c34

jr_003_5c34:
	ld bc, $0000
	nop
	nop
	nop
	jr nz, jr_003_5c3c

jr_003_5c3c:
	nop
	nop
	nop
	nop
	nop
	dec b
	nop
	nop
	ld [bc], a
	inc d
	nop
	nop
	nop
	nop
	nop
	ld bc, $0041
	nop
	ld bc, $0040
	ld b, b
	inc b
	nop
	nop
	ld b, b
	stop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add c
	stop
	nop
	nop
	nop
	ld bc, $4000
	nop
	nop
	nop
	ld bc, $0010
	nop
	nop
	stop
	nop
	ld b, b
	nop
	nop
	nop
	nop
	nop
	add b
	nop
	nop
	stop
	ld b, b
	nop
	nop
	ld [$2000], sp
	ld bc, $0400
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	ld [$1000], sp
	nop
	nop
	nop
	jr nz, jr_003_5c9a

jr_003_5c9a:
	ld [$0004], sp
	nop
	ld [$0000], sp
	nop
	add b
	nop
	nop
	nop
	nop
	nop
	ld b, b
	nop
	adc b
	nop
	inc b
	db $10
	ld [$0800], sp
	nop
	inc b
	nop
	jr nz, jr_003_5cf6

	nop
	nop
	ld [bc], a
	db $10
	and c
	nop
	ld [bc], a
	nop
	nop
	nop
	add b
	nop
	inc c
	nop
	nop
	nop
	ld bc, $0050
	nop
	nop
	nop
	nop
	nop
	nop
	dec b
	nop
	nop
	nop
	nop
	ld bc, $0004
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	db $10
	db $10
	ld b, b
	inc h
	nop
	nop
	nop
	nop
	nop
	ld b, b
	nop
	jr nz, jr_003_5cee

jr_003_5cee:
	nop
	nop
	inc b
	nop
	nop
	nop
	nop
	nop

jr_003_5cf6:
	ld bc, $0200
	nop
	nop
	nop
	nop
	nop
	ld [$2000], sp
	ld b, b
	nop
	ld b, b
	inc b
	nop
	stop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0000
	nop
	stop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add b
	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	jr nz, jr_003_5d26

jr_003_5d26:
	ld b, b
	nop
	ld b, h
	ld d, b
	db $10
	inc b
	inc b
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, b
	nop
	ld [bc], a
	ld b, b
	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add b
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	stop
	ld [$0000], sp
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld h, h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, h
	nop
	add hl, bc
	ld bc, $0042
	inc b
	nop
	add b
	nop
	nop
	nop
	nop
	dec b
	inc b
	nop
	ld [de], a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	db $10
	stop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	stop
	nop
	jr nz, jr_003_5dac

jr_003_5dac:
	ld a, [bc]
	nop
	nop
	nop
	nop
	nop
	jr nz, jr_003_5db4

jr_003_5db4:
	dec b
	nop
	stop
	add b
	stop
	ld bc, $0042
	nop
	nop
	add b
	inc b
	and b
	nop
	nop
	nop
	ld [bc], a
	nop
	db $10
	ld b, b
	inc b
	db $10
	ld b, l
	ld bc, $0040
	nop
	nop
	nop
	db $10
	ld b, b
	nop
	nop
	nop
	add hl, bc
	nop
	nop
	nop
	nop
	ld b, b
	ld bc, $1000
	ld bc, $0082
	nop
	nop
	inc b
	inc b
	inc b
	nop
	nop
	ld bc, $0109
	nop
	nop
	nop
	nop
	nop
	stop
	nop
	nop
	ld b, b
	nop
	ld b, b
	ld [bc], a
	nop
	inc b
	nop
	nop
	nop
	inc b
	nop
	ld [bc], a
	inc b
	jr nz, jr_003_5e0a

	ld [bc], a
	nop
	nop
	nop

jr_003_5e0a:
	jp nz, $0000

	ld bc, $0004
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0008
	nop
	nop
	ld c, b
	nop
	nop
	inc b
	nop
	db $10
	jr nz, jr_003_5e76

	nop
	db $10
	ld [bc], a
	nop
	jr nz, @+$12

	ld b, b
	nop
	nop
	nop
	nop
	inc b
	ld de, $0000
	nop
	ld b, b
	stop
	nop
	ld bc, $0000
	nop
	nop
	nop
	nop
	db $10
	add b
	ld b, b
	ld [$0000], sp
	nop
	nop
	nop
	inc bc
	nop
	nop
	ld bc, $0010
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0004
	ld [$0000], sp
	inc b
	nop
	inc b
	ld b, b
	nop
	nop
	nop
	nop
	nop

jr_003_5e76:
	nop
	db $10
	ld b, b
	ld bc, $0000
	nop
	nop
	inc b
	ld bc, $0020
	inc bc
	nop
	nop
	ld b, b
	inc bc
	nop
	inc b
	ld bc, $0000
	nop
	ld bc, $0000
	jr nz, jr_003_5ea2

	ld bc, $0000
	nop
	ld [de], a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0000
	nop

jr_003_5ea2:
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	jr nz, jr_003_5eac

jr_003_5eac:
	nop
	ld bc, $0000
	nop
	stop
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz, jr_003_5ec8

jr_003_5ec8:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, b
	nop
	ld b, b
	nop
	inc b
	nop
	ld b, b
	nop
	nop
	inc b
	ld [$0004], sp
	ld b, b
	nop
	ld b, b
	ld bc, $0000
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	ld [$0000], sp
	nop
	ld b, b
	nop
	nop
	inc b
	add b
	nop
	nop
	nop
	nop
	inc b
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	ld [$0000], sp
	nop
	ld bc, $0400
	nop
	nop
	ld b, b
	nop
	nop
	ld h, b
	nop
	add b
	nop
	ret nz

	ld bc, $0000
	nop
	nop
	ld b, b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0000
	nop
	nop
	ld bc, $4000
	ld bc, $1000
	ld b, b
	inc b
	nop
	nop
	nop
	nop
	nop
	inc b
	add b
	nop
	ld bc, $0000
	ld b, b
	nop
	nop
	nop
	db $10
	ld bc, $4000
	nop
	stop
	inc b
	nop
	nop
	ld b, b
	nop
	nop
	nop
	nop
	nop
	nop
	ld a, [bc]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld [$0200], sp
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0040
	nop
	nop
	ld b, b
	nop
	nop
	nop
	nop
	ld l, b
	nop
	nop
	nop
	and b
	nop
	inc b
	ld d, b
	nop
	nop
	nop
	db $10
	jr nz, jr_003_5f78

jr_003_5f78:
	nop
	nop
	ld [$0000], sp
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0010
	ld b, b
	nop
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, b
	ld [bc], a
	nop
	ld bc, $0001
	nop
	nop
	inc b
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	inc b
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	ld bc, $0000
	nop
	ld bc, $0000
	nop
	ld [$0100], sp
	nop
	stop
	ld a, [de]
	nop
	ld b, b
	nop
	inc b
	nop
	nop
	nop
	nop
	ld bc, $5028
	nop
	nop
	inc b
	nop
	ld b, b
	dec b
	nop
	nop
	ld h, b
	stop
	nop
	add b
	ld bc, $0020
	nop
	nop
	nop
	nop
	nop
	stop
	nop
	stop
	jr nz, jr_003_5fec

jr_003_5fec:
	nop
	ld b, b
	add b
	ld b, b
	nop
	nop
	ld de, $0000
	ld b, b
	nop
	nop
	nop
	nop
	nop
	stop
	nop
	nop
	nop
	or [hl]
	add l
	ld h, $e6
	cp a
	rst $38
	xor [hl]
	rst $28
	xor $fd
	or h
	rst $28
	adc d
	rst $18
	xor d
	rst $38
	adc c
	rst $38

Jump_003_6012:
	or [hl]
	db $fc
	ld [c], a
	rst $38
	ld [$a7ff], a
	ei
	cp e
	db $db
	sbc e
	ld l, a
	xor d
	rst $38

	db $04, $00, $04, $00, $00, $20, $00, $13, $00, $00, $40, $00, $07, $60, $00, $48
	db $00, $07, $70, $00, $50, $00, $07, $80, $00, $58, $00, $07, $90, $00, $60, $00
	db $07, $a0, $00, $68, $00, $07, $b0, $00, $70, $00, $07, $c0, $00, $78, $00, $07
	db $d0, $00, $90, $00, $07, $80, $10, $98, $00, $07, $70, $10, $a0, $00, $07, $60
	db $10, $a8, $00, $07, $50, $10, $b0, $00, $07, $40, $10, $b8, $00, $07, $30, $10
	db $c0, $00, $07, $20, $10, $c8, $00, $07, $10, $10, $e0, $00, $05, $10, $00, $e8
	db $00, $05, $20, $00, $f0, $00, $05, $30, $00, $f8, $00, $05, $40, $00, $00, $01
	db $05, $41, $00, $08, $01, $05, $32, $00, $10, $01, $05, $23, $00, $18, $01, $05
	db $14, $00, $30, $01, $05, $d0, $10, $38, $01, $05, $c0, $10, $40, $01, $05, $b0
	db $10, $48, $01, $05, $a0, $10, $50, $01, $05, $a1, $10, $58, $01, $05, $b2, $10
	db $60, $01, $05, $c3, $10, $68, $01, $05, $d4, $10, $70, $01, $0b, $70, $00, $a0
	db $01, $07, $10, $10, $a8, $01, $0a, $d0, $02, $b0, $01, $07, $20, $10, $b8, $01
	db $0a, $d0, $02, $c0, $01, $07, $31, $10, $c8, $01, $0a, $d2, $02, $d0, $01, $07
	db $43, $10, $d8, $01, $0a, $d4, $02, $e0, $01, $05, $d0, $10, $e8, $01, $0a, $10
	db $12, $f0, $01, $05, $c0, $10, $f8, $01, $0a, $10, $12, $00, $02, $05, $b1, $10
	db $08, $02, $0a, $12, $12, $10, $02, $05, $a3, $10, $18, $02, $0a, $14, $12, $30
	db $02, $07, $10, $10, $34, $02, $07, $d0, $00, $38, $02, $07, $20, $10, $3c, $02
	db $07, $c0, $00, $40, $02, $07, $31, $10, $44, $02, $07, $b2, $00, $48, $02, $07
	db $43, $10, $4c, $02, $07, $a4, $00, $50, $02, $07, $50, $10, $54, $02, $07, $90
	db $00, $58, $02, $07, $60, $10, $5c, $02, $07, $80, $00, $60, $02, $07, $71, $10
	db $64, $02, $07, $72, $00, $68, $02, $07, $83, $10, $6c, $02, $07, $64, $00, $70
	db $02, $0b, $70, $00, $90, $02, $05, $11, $00, $94, $02, $07, $d4, $00, $98, $02
	db $05, $12, $00, $9c, $02, $07, $d3, $00, $a0, $02, $05, $13, $00, $a4, $02, $07
	db $d2, $00, $a8, $02, $05, $14, $00, $ac, $02, $07, $d1, $00, $d0, $02, $07, $11
	db $10, $d4, $02, $06, $d2, $11, $d8, $02, $07, $13, $10, $dc, $02, $06, $d4, $11
	db $e0, $02, $07, $11, $10, $e4, $02, $06, $d2, $11, $e8, $02, $07, $13, $10, $ec
	db $02, $06, $d4, $11, $10, $03, $06, $11, $01, $18, $03, $06, $20, $01, $20, $03
	db $06, $34, $01, $28, $03, $06, $40, $01, $40, $03, $06, $d2, $11, $48, $03, $06
	db $c0, $11, $50, $03, $06, $b3, $11, $58, $03, $06, $a0, $11, $70, $03, $06, $11
	db $01, $74, $03, $06, $d2, $11, $78, $03, $06, $23, $01, $7c, $03, $06, $c4, $11
	db $80, $03, $06, $31, $01, $84, $03, $06, $b2, $11, $88, $03, $06, $43, $01, $8c
	db $03, $06, $a4, $11, $90, $03, $0b, $70, $00, $a0, $03, $0a, $20, $02, $a8, $03
	db $0a, $c1, $02, $b0, $03, $0a, $40, $02, $b8, $03, $0a, $a2, $02, $c0, $03, $0a
	db $10, $02, $c8, $03, $0a, $d3, $02, $d0, $03, $0a, $30, $02, $d8, $03, $0a, $b4
	db $02, $e0, $03, $0a, $50, $02, $e8, $03, $0a, $95, $02, $f0, $03, $0a, $20, $02
	db $f8, $03, $0a, $c6, $02, $10, $04, $05, $00, $00, $18, $04, $0a, $d0, $02, $20
	db $04, $05, $20, $00, $28, $04, $0a, $d0, $02, $30, $04, $05, $40, $00, $38, $04
	db $0a, $d0, $02, $50, $04, $05, $81, $10, $58, $04, $0a, $12, $12, $60, $04, $05
	db $a3, $10, $68, $04, $0a, $14, $12, $70, $04, $05, $c1, $10, $78, $04, $0a, $12
	db $12, $80, $04, $0b, $70, $00, $a0, $04, $06, $10, $01, $a8, $04, $06, $d0, $11
	db $b0, $04, $06, $30, $01, $b8, $04, $06, $b0, $11, $c0, $04, $06, $51, $01, $c8
	db $04, $06, $92, $11, $d0, $04, $06, $23, $01, $d8, $04, $06, $c4, $11, $e0, $04
	db $07, $12, $10, $e4, $04, $07, $d3, $00, $e8, $04, $07, $24, $10, $ec, $04, $07
	db $c5, $00, $f0, $04, $07, $36, $10, $f4, $04, $07, $b7, $00, $f8, $04, $07, $48
	db $10, $fc, $04, $07, $a9, $00, $00, $05, $1d, $00, $00, $10, $05, $1c, $00, $00
	db $20, $05, $0e, $6b, $00, $30, $05, $00, $00, $00, $fa, $bf, $de, $f7, $fb, $ff
	db $ea, $ff, $fb, $fe, $8e, $ef, $7e, $b7, $be, $ff, $6c, $e7, $fe, $ff, $eb, $f1
	db $a8, $df, $3a, $5f, $c2, $7f, $ab, $7d, $fb, $fb, $bf, $ce, $fa, $ff, $8b, $e7
	db $ab, $fe, $af, $7f, $f9, $ef, $be, $f6, $bb, $cb, $ef, $ff, $86, $df, $f2, $fe
	db $ae, $f7, $7c, $d7, $ea, $79, $ef, $b1, $ee, $ff, $6c, $df, $ef, $9d, $ee, $7f
	db $da, $9b, $c5, $ff, $fa, $af, $7a, $ff, $b7, $ff, $ba, $fe, $bf, $fd, $eb, $bf
	db $aa, $bd, $2b, $f0, $ba, $b7, $a2, $7f, $ab, $d7, $ec, $7f, $ab, $ff, $ea, $ff
	db $1a, $f7, $aa, $fb, $ab, $df, $7e, $bf, $ff, $ef, $9f, $7f, $ae, $de, $aa, $ff
	db $6b, $fb, $7b, $e7, $6b, $fb, $ff, $f7, $ef, $77, $ef, $ff, $a7, $fc, $f6, $ff
	db $aa, $df, $fb, $ff, $6b, $ff, $c3, $ff, $ae, $be, $7e, $ef, $af, $ef, $cd, $7f
	db $ae, $f9, $db, $fc, $ff, $af, $bf, $bc, $ee, $f9, $3e, $5f, $da, $ff, $fb, $ff
	db $be, $bd, $f9, $be, $bb, $ef, $fa, $ef, $f7, $db, $fa, $5f, $73, $fe, $ee, $ff
	db $bb, $7f, $ef, $ff, $bf, $ef, $eb, $ff, $be, $fb, $af, $7f, $af, $bf, $ab, $ff
	db $ae, $7f, $ea, $fe, $eb, $ef, $7b, $ff, $ae, $ed, $0e, $ae, $af, $ff, $ea, $f9
	db $e7, $bd, $89, $8f, $da, $ff, $da, $fd, $7f, $b7, $3a, $bf, $fe, $bd, $ba, $ff
	db $b4, $ef, $6b, $fb, $bb, $a7, $ab, $ff, $8f, $ff, $9f, $ff, $c5, $d7, $7b, $ee
	db $2b, $fe, $e3, $ff, $ce, $fb, $be, $ff, $8a, $fb, $fe, $fe, $bb, $ff, $f7, $7b
	db $7f, $56, $d3, $75, $bd, $5f, $d8, $54, $ed, $7f, $df, $46, $94, $7f, $ae, $d5
	db $ee, $78, $d2, $fd, $c7, $50, $cf, $34, $98, $11, $da, $84, $3f, $15, $f5, $57
	db $04, $00, $04, $00, $00, $20, $00, $13, $00, $00, $30, $00, $07, $70, $00, $34
	db $00, $07, $90, $00, $38, $00, $07, $b0, $00, $3c, $00, $07, $d0, $00, $40, $00
	db $07, $70, $10, $44, $00, $07, $50, $10, $48, $00, $07, $30, $10, $4c, $00, $07
	db $10, $10, $50, $00, $07, $70, $00, $54, $00, $07, $90, $00, $58, $00, $07, $b0
	db $00, $5c, $00, $07, $d0, $00, $60, $00, $07, $70, $10, $64, $00, $07, $50, $10
	db $68, $00, $07, $30, $10, $6c, $00, $07, $10, $10, $80, $00, $08, $d1, $10, $88
	db $00, $08, $12, $00, $90, $00, $08, $d3, $10, $98, $00, $08, $14, $00, $a0, $00
	db $08, $d5, $10, $a8, $00, $08, $16, $00, $b0, $00, $0a, $d0, $12, $b8, $00, $0a
	db $10, $02, $c0, $00, $08, $71, $00, $c8, $00, $08, $72, $10, $d0, $00, $0a, $10
	db $02, $d8, $00, $0a, $d0, $12, $e0, $00, $08, $75, $00, $e8, $00, $08, $76, $10
	db $f0, $00, $0a, $10, $02, $f8, $00, $0a, $d0, $12, $00, $01, $08, $79, $00, $08
	db $01, $08, $77, $10, $10, $01, $0a, $10, $02, $18, $01, $0a, $d0, $12, $30, $01
	db $0b, $70, $00, $34, $01, $09, $d1, $00, $38, $01, $09, $12, $00, $3c, $01, $09
	db $d3, $00, $40, $01, $09, $14, $00, $44, $01, $09, $d1, $00, $48, $01, $09, $12
	db $00, $4c, $01, $09, $d3, $00, $60, $01, $07, $00, $10, $64, $01, $07, $11, $10
	db $68, $01, $07, $20, $10, $6c, $01, $07, $32, $10, $70, $01, $07, $40, $10, $74
	db $01, $07, $53, $10, $78, $01, $07, $60, $10, $7c, $01, $07, $74, $10, $80, $01
	db $07, $81, $00, $84, $01, $07, $92, $00, $88, $01, $07, $a3, $00, $8c, $01, $07
	db $b4, $00, $90, $01, $07, $c5, $00, $94, $01, $07, $d6, $00, $98, $01, $07, $e7
	db $00, $b0, $01, $07, $15, $10, $b4, $01, $07, $d9, $00, $b8, $01, $07, $51, $00
	db $bc, $01, $07, $99, $10, $c0, $01, $07, $12, $10, $c4, $01, $07, $d7, $00, $c8
	db $01, $07, $53, $00, $cc, $01, $07, $95, $10, $d0, $01, $07, $14, $10, $d4, $01
	db $07, $d5, $00, $d8, $01, $07, $55, $00, $dc, $01, $07, $93, $10, $e0, $01, $07
	db $11, $10, $e4, $01, $07, $d2, $00, $e8, $01, $07, $53, $00, $ec, $01, $07, $94
	db $10, $f0, $01, $0b, $70, $00, $00, $02, $06, $12, $01, $08, $02, $06, $19, $01
	db $10, $02, $06, $14, $01, $18, $02, $06, $17, $01, $20, $02, $06, $d6, $11, $28
	db $02, $06, $d5, $11, $30, $02, $06, $d8, $11, $38, $02, $06, $d4, $11, $40, $02
	db $06, $12, $01, $48, $02, $06, $d9, $11, $50, $02, $06, $14, $01, $58, $02, $06
	db $d7, $11, $60, $02, $06, $16, $01, $68, $02, $06, $d5, $11, $70, $02, $06, $18
	db $01, $78, $02, $06, $d3, $11, $90, $02, $07, $12, $10, $94, $02, $07, $d9, $00
	db $98, $02, $07, $24, $10, $9c, $02, $07, $c7, $00, $a0, $02, $07, $36, $10, $a4
	db $02, $07, $b5, $00, $a8, $02, $07, $48, $10, $ac, $02, $07, $a3, $00, $b0, $02
	db $25, $00, $00, $c0, $02, $08, $12, $00, $c4, $02, $08, $12, $00, $c8, $02, $08
	db $10, $00, $cc, $02, $08, $13, $00, $d0, $02, $08, $10, $00, $d4, $02, $08, $14
	db $00, $d8, $02, $08, $10, $00, $dc, $02, $08, $15, $00, $00, $03, $08, $d0, $10
	db $04, $03, $08, $d6, $10, $08, $03, $08, $d0, $10, $0c, $03, $08, $d7, $10, $10
	db $03, $08, $d0, $10, $14, $03, $08, $d8, $10, $18, $03, $08, $d0, $10, $1c, $03
	db $08, $d9, $10, $40, $03, $08, $40, $00, $44, $03, $0a, $d3, $12, $48, $03, $08
	db $34, $00, $4c, $03, $0a, $d5, $12, $50, $03, $08, $26, $00, $54, $03, $0a, $d7
	db $12, $58, $03, $08, $18, $00, $5c, $03, $0a, $d9, $12, $60, $03, $0b, $70, $00
	db $80, $03, $08, $a6, $10, $84, $03, $0a, $13, $02, $88, $03, $08, $b6, $10, $8c
	db $03, $0a, $15, $02, $90, $03, $08, $c6, $10, $94, $03, $0a, $17, $02, $98, $03
	db $08, $d6, $10, $9c, $03, $0a, $19, $02, $b0, $03, $1d, $00, $00, $c0, $03, $1c
	db $00, $00, $e0, $03, $0c, $6c, $00, $f0, $03, $00, $00, $00, $2f, $54, $2f, $d0
	db $e7, $5d, $bb, $5f, $6e, $91, $ff, $4e, $b4, $56, $6f, $51, $96, $3c, $9b, $55
	db $c3, $f1, $ae, $d5, $a7, $55, $5f, $f4, $be, $7e, $d7, $51, $ca, $d3, $5a, $54
	db $fd, $b2, $ef, $21, $df, $75, $7d, $67, $fa, $56, $f9, $cd, $7e, $d5, $ed, $10
	db $ff, $57, $f6, $24, $b6, $41, $fa, $19, $7c, $3b, $ef, $5d, $4f, $74, $eb, $56
	db $cf, $2c, $f7, $75, $cf, $61, $fc, $1f, $eb, $77, $af, $01, $ff, $54, $7e, $57
	db $bf, $e5, $db, $17, $fb, $75, $bf, $77, $df, $42, $f7, $05, $f6, $45, $df, $77
	db $e7, $5d, $df, $c5, $7e, $fd, $c7, $67, $df, $55, $ef, $7d, $e5, $50, $62, $93
	db $ff, $65, $3f, $d4, $79, $51, $d9, $4f, $0a, $57, $cb, $cd, $f3, $c9, $ff, $99
	db $f7, $5d, $ff, $11, $7a, $04, $18, $4d, $d9, $c5, $cf, $4d, $ff, $43, $df, $54
	db $af, $54, $ff, $e0, $ec, $05, $68, $ce, $fb, $75, $af, $15, $ee, $57, $ab, $45
	db $37, $67, $ff, $95, $bf, $41, $ea, $ad, $ff, $7b, $66, $94, $ff, $47, $f9, $9f
	db $fd, $71, $df, $f3, $3f, $dd, $3f, $f5, $f9, $13, $5f, $53, $4f, $5d, $ff, $70
	db $3b, $74, $c3, $53, $6e, $d4, $77, $0b, $ff, $61, $df, $75, $f7, $4d, $ab, $31
	db $f7, $19, $9f, $53, $b3, $f1, $db, $d5, $19, $3d, $ff, $75, $f7, $50, $af, $c5
	db $fb, $5f, $57, $5f, $fb, $05, $ef, $dd, $ae, $4e, $9e, $4c, $fb, $55, $ff, $dc
	db $ba, $54, $a1, $37, $6b, $91, $ff, $95, $a3, $20, $f9, $53, $f9, $56, $7f, $57
	db $7d, $35, $ab, $56, $2f, $17, $8f, $4c, $5a, $95, $ff, $26, $65, $cf, $7f, $1e
	db $f8, $74, $2f, $07, $7a, $5d, $ef, $70, $ff, $43, $7f, $47, $f2, $5b, $3f, $f7
	db $00, $90, $00, $20, $0a, $00, $00, $04, $08, $00, $20, $00, $08, $04, $80, $00
	db $00, $01, $20, $08, $0a, $80, $02, $18, $02, $c0, $08, $20, $00, $01, $00, $0c
	db $04, $00, $04, $00, $00, $20, $00, $13, $00, $00, $40, $00, $16, $12, $00, $48
	db $00, $16, $b9, $00, $50, $00, $16, $63, $00, $58, $00, $16, $d8, $00, $60, $00
	db $16, $34, $00, $68, $00, $16, $87, $00, $70, $00, $16, $16, $00, $78, $00, $16
	db $b2, $00, $80, $00, $16, $69, $00, $88, $00, $16, $d7, $00, $90, $00, $16, $14
	db $00, $98, $00, $16, $39, $00, $a0, $00, $16, $65, $00, $a8, $00, $16, $88, $00
	db $b0, $00, $16, $b5, $00, $b8, $00, $16, $d1, $00, $c0, $00, $0b, $79, $00, $d0
	db $00, $16, $14, $00, $d8, $00, $16, $d2, $00, $e0, $00, $21, $59, $00, $e8, $00
	db $21, $94, $10, $f0, $00, $16, $62, $00, $f8, $00, $16, $83, $00, $00, $01, $21
	db $17, $00, $08, $01, $21, $d1, $10, $10, $01, $16, $38, $00, $18, $01, $16, $b4
	db $00, $20, $01, $21, $59, $10, $28, $01, $21, $95, $00, $30, $01, $16, $68, $00
	db $38, $01, $16, $82, $00, $40, $01, $21, $16, $00, $48, $01, $21, $d3, $10, $50
	db $01, $16, $15, $00, $54, $01, $16, $d1, $00, $58, $01, $21, $53, $00, $5c, $01
	db $21, $98, $10, $60, $01, $16, $65, $00, $64, $01, $16, $88, $00, $68, $01, $21
	db $15, $00, $6c, $01, $21, $d9, $10, $70, $01, $16, $15, $00, $74, $01, $16, $d1
	db $00, $78, $01, $21, $53, $00, $7c, $01, $21, $98, $10, $80, $01, $16, $65, $00
	db $84, $01, $16, $88, $00, $88, $01, $21, $15, $00, $8c, $01, $21, $d9, $10, $90
	db $01, $0b, $70, $00, $a0, $01, $28, $37, $03, $a8, $01, $28, $89, $03, $b0, $01
	db $28, $d4, $03, $b8, $01, $16, $19, $00, $c0, $01, $16, $62, $00, $c8, $01, $16
	db $b7, $00, $d0, $01, $28, $15, $03, $d8, $01, $28, $62, $03, $e0, $01, $28, $b8
	db $03, $00, $02, $21, $91, $00, $04, $02, $21, $82, $00, $08, $02, $21, $93, $00
	db $0c, $02, $21, $84, $00, $10, $02, $21, $95, $00, $14, $02, $21, $86, $00, $18
	db $02, $21, $97, $00, $1c, $02, $21, $88, $00, $30, $02, $21, $51, $10, $34, $02
	db $21, $62, $10, $38, $02, $21, $53, $10, $3c, $02, $21, $64, $10, $40, $02, $21
	db $55, $10, $44, $02, $21, $66, $10, $48, $02, $21, $57, $10, $4c, $02, $21, $68
	db $10, $60, $02, $16, $61, $00, $64, $02, $16, $82, $00, $68, $02, $16, $66, $00
	db $6c, $02, $16, $87, $00, $70, $02, $16, $63, $00, $74, $02, $16, $84, $00, $78
	db $02, $16, $68, $00, $7c, $02, $16, $89, $00, $90, $02, $16, $18, $00, $94, $02
	db $16, $d4, $00, $98, $02, $16, $19, $00, $9c, $02, $16, $d5, $00, $a0, $02, $16
	db $18, $00, $a4, $02, $16, $d4, $00, $a8, $02, $16, $17, $00, $ac, $02, $16, $d5
	db $00, $b0, $02, $0b, $76, $00, $c0, $02, $28, $68, $03, $c8, $02, $16, $14, $00
	db $d0, $02, $16, $b6, $00, $d8, $02, $28, $89, $03, $e0, $02, $16, $37, $00, $e8
	db $02, $16, $d3, $00, $f0, $02, $28, $68, $03, $f8, $02, $16, $15, $00, $00, $03
	db $16, $b9, $00, $08, $03, $28, $89, $03, $10, $03, $16, $36, $00, $18, $03, $16
	db $d5, $00, $20, $03, $14, $11, $00, $30, $03, $14, $d2, $00, $40, $03, $14, $33
	db $00, $50, $03, $14, $b1, $00, $60, $03, $14, $62, $00, $70, $03, $14, $83, $00
	db $80, $03, $14, $12, $00, $90, $03, $14, $d3, $00, $b0, $03, $0b, $70, $00, $10
	db $04, $21, $50, $10, $14, $04, $21, $91, $00, $18, $04, $21, $52, $00, $1c, $04
	db $21, $93, $10, $20, $04, $21, $56, $10, $24, $04, $21, $97, $00, $28, $04, $21
	db $58, $00, $2c, $04, $21, $91, $10, $30, $04, $21, $52, $10, $34, $04, $21, $93
	db $00, $38, $04, $21, $56, $00, $3c, $04, $21, $97, $10, $40, $04, $21, $58, $10
	db $44, $04, $21, $91, $00, $48, $04, $21, $52, $00, $4c, $04, $21, $93, $10, $60
	db $04, $16, $16, $00, $64, $04, $16, $67, $00, $68, $04, $16, $b8, $00, $6c, $04
	db $16, $21, $00, $70, $04, $16, $82, $00, $74, $04, $16, $d3, $00, $78, $04, $16
	db $17, $00, $7c, $04, $16, $d8, $00, $90, $04, $28, $11, $03, $98, $04, $28, $d7
	db $03, $a0, $04, $16, $82, $00, $a8, $04, $16, $66, $00, $b0, $04, $16, $33, $00
	db $b8, $04, $16, $b5, $00, $c0, $04, $28, $84, $03, $c8, $04, $28, $64, $03, $d0
	db $04, $16, $15, $00, $d8, $04, $16, $d3, $00, $e0, $04, $21, $56, $00, $e8, $04
	db $21, $92, $10, $f0, $04, $21, $17, $00, $f8, $04, $21, $d1, $10, $00, $05, $1d
	db $00, $00, $10, $05, $1c, $00, $00, $40, $05, $2b, $6c, $00, $50, $05, $00, $00
	db $00, $05, $00, $a2, $02, $00, $04, $83, $28, $00, $00, $40, $80, $90, $28, $00
	db $00, $02, $20, $04, $00, $40, $20, $02, $00, $00, $02, $20, $28, $2c, $00, $10
	db $00, $00, $02, $00, $00, $10, $00, $00, $82, $00, $00, $40, $00, $00, $20, $00
	db $00, $00, $00, $5a, $84, $00, $00, $10, $80, $02, $00, $98, $80, $84, $02, $00
	db $22, $00, $88, $03, $00, $00, $00, $32, $06, $09, $20, $20, $00, $42, $a0, $00
	db $04, $40, $00, $00, $00, $80, $80, $00, $00, $40, $00, $20, $00, $04, $00, $02
	db $00, $21, $00, $40, $00, $42, $00, $24, $00, $05, $00, $00, $00, $04, $00, $82
	db $00, $98, $80, $90, $00, $44, $00, $20, $00, $06, $00, $00, $00, $40, $20, $10
	db $00, $44, $08, $00, $08, $a0, $08, $00, $00, $32, $00, $60, $00, $a2, $a2, $00
	db $00, $00, $18, $04, $08, $11, $08, $00, $00, $08, $00, $24, $00, $02, $00, $08
	db $00, $00, $08, $08, $00, $03, $02, $01, $21, $00, $00, $10, $00, $30, $80, $08
	db $20, $40, $00, $00, $08, $80, $00, $00, $00, $00, $80, $04, $00, $02, $00, $50
	db $02, $80, $20, $1c, $08, $00, $02, $20, $00, $00, $00, $04, $00, $51, $00, $64
	db $00, $10, $00, $00, $00, $00, $48, $40, $04, $00, $00, $00, $00, $40, $00, $00
	db $c0, $00, $00, $00, $00, $00, $00, $00, $80, $00, $01, $44, $00, $00, $00, $01
	db $04, $00, $04, $00, $00, $20, $00, $13, $00, $00, $40, $00, $29, $02, $01, $48
	db $00, $29, $e3, $11, $50, $00, $29, $14, $01, $58, $00, $29, $d5, $11, $60, $00
	db $29, $26, $01, $68, $00, $29, $c7, $11, $70, $00, $29, $38, $01, $78, $00, $29
	db $b9, $11, $80, $00, $29, $72, $01, $88, $00, $29, $73, $11, $90, $00, $29, $54
	db $01, $98, $00, $29, $95, $11, $a0, $00, $29, $76, $01, $a8, $00, $29, $77, $11
	db $b0, $00, $29, $18, $01, $b8, $00, $29, $d9, $11, $c0, $00, $0b, $70, $00, $e0
	db $00, $20, $14, $00, $e8, $00, $20, $15, $00, $f0, $00, $20, $16, $00, $f8, $00
	db $20, $17, $00, $00, $01, $20, $18, $00, $08, $01, $20, $19, $00, $20, $01, $20
	db $d4, $10, $28, $01, $20, $d5, $10, $30, $01, $20, $d6, $10, $38, $01, $20, $d7
	db $10, $40, $01, $20, $d8, $10, $48, $01, $20, $d9, $10, $60, $01, $20, $11, $00
	db $64, $01, $20, $d2, $10, $68, $01, $20, $13, $00, $6c, $01, $20, $d4, $10, $70
	db $01, $20, $15, $00, $74, $01, $20, $d6, $10, $78, $01, $20, $17, $00, $7c, $01
	db $20, $d8, $10, $a0, $01, $0a, $42, $02, $a4, $01, $0a, $a3, $02, $a8, $01, $0a
	db $44, $02, $ac, $01, $0a, $a5, $02, $b0, $01, $0a, $46, $02, $b4, $01, $0a, $a7
	db $02, $b8, $01, $0a, $48, $02, $bc, $01, $0a, $a9, $02, $c0, $01, $0b, $70, $00
	db $f0, $01, $09, $15, $00, $f4, $01, $09, $d6, $00, $f8, $01, $09, $27, $00, $fc
	db $01, $09, $c8, $00, $00, $02, $09, $35, $00, $04, $02, $09, $b6, $00, $08, $02
	db $09, $47, $00, $0c, $02, $09, $a8, $00, $20, $02, $26, $72, $01, $28, $02, $26
	db $73, $11, $30, $02, $26, $74, $01, $38, $02, $26, $75, $11, $40, $02, $26, $76
	db $01, $48, $02, $26, $77, $11, $70, $02, $07, $12, $10, $78, $02, $07, $d3, $00
	db $80, $02, $07, $74, $00, $88, $02, $07, $75, $10, $90, $02, $07, $36, $10, $98
	db $02, $07, $b7, $00, $a0, $02, $07, $78, $00, $a8, $02, $07, $79, $10, $c0, $02
	db $07, $12, $10, $c4, $02, $07, $d9, $00, $c8, $02, $07, $54, $00, $cc, $02, $07
	db $97, $10, $d0, $02, $07, $15, $10, $d4, $02, $07, $d5, $00, $d8, $02, $07, $58
	db $00, $dc, $02, $07, $93, $10, $00, $03, $29, $12, $01, $08, $03, $29, $23, $01
	db $10, $03, $29, $34, $01, $18, $03, $29, $45, $01, $20, $03, $29, $56, $01, $28
	db $03, $29, $67, $01, $30, $03, $29, $78, $01, $38, $03, $29, $89, $01, $50, $03
	db $29, $d2, $11, $58, $03, $29, $c3, $11, $60, $03, $29, $b4, $11, $68, $03, $29
	db $a5, $11, $70, $03, $29, $96, $11, $78, $03, $29, $87, $11, $80, $03, $29, $78
	db $11, $88, $03, $29, $69, $11, $90, $03, $0b, $70, $00, $a0, $03, $0f, $67, $00
	db $c0, $03, $07, $1f, $10, $e0, $03, $07, $df, $00, $00, $04, $07, $1f, $10, $20
	db $04, $07, $df, $00, $40, $04, $07, $1f, $10, $60, $04, $07, $df, $00, $70, $04
	db $0b, $70, $00, $80, $04, $26, $34, $01, $88, $04, $26, $b5, $11, $90, $04, $26
	db $36, $01, $98, $04, $26, $b7, $11, $a0, $04, $26, $38, $01, $a8, $04, $26, $b9
	db $11, $c8, $04, $1d, $00, $00, $d0, $04, $1c, $00, $00, $20, $05, $17, $70, $00
	db $28, $05, $02, $00, $00, $3a, $05, $12, $20, $00, $3c, $05, $00, $00, $00, $00
	db $00, $00, $84, $00, $00, $00, $00, $00, $60, $00, $00, $00, $00, $00, $06, $00
	db $00, $00, $00, $04, $00, $01, $00, $00, $00, $00, $00, $00, $08, $00, $06, $00
	db $03, $01, $00, $10, $00, $00, $00, $00, $00, $00, $00, $00, $04, $10, $04, $00
	db $00, $00, $00, $04, $00, $00, $40, $00, $00, $10, $00, $00, $00, $00, $20, $00
	db $00, $00, $04, $00, $22, $10, $00, $01, $00, $00, $00, $01, $00, $00, $14, $40
	db $00, $00, $20, $00, $00, $00, $00, $00, $00, $00, $00, $10, $12, $00, $00, $00
	db $00, $00, $02, $40, $00, $40, $02, $00, $00, $00, $00, $00, $10, $00, $00, $00
	db $80, $04, $08, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $80, $00, $20, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $04
	db $20, $00, $01, $00, $00, $00, $40, $00, $00, $01, $00, $01, $00, $00, $00, $04
	db $11, $00, $00, $00, $00, $10, $02, $00, $30, $00, $00, $40, $00, $01, $00, $00
	db $01, $00, $80, $00, $00, $14, $00, $00, $08, $00, $08, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $01, $01, $00, $00, $00, $04, $02, $00, $00, $00, $40, $00
	db $00, $00, $00, $10, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $81, $00, $80, $40, $00, $01, $00, $50, $00, $00, $00, $00, $21, $10, $00, $00
	db $04, $00, $00, $00, $00, $40, $00, $00, $00, $00, $00, $00, $00, $00, $20, $40
	db $00, $04, $08, $00, $08, $00, $01, $01, $00, $00, $10, $00, $00, $00, $00, $00
	db $00, $00, $10, $00, $00, $00, $20, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $80, $00, $00, $00, $80, $00, $00, $00, $00, $14, $24, $00, $00, $00, $00, $00
	db $01, $00, $00, $00, $00, $01, $c0, $00, $00, $00, $10, $05, $00, $40, $01, $00
	db $80, $00, $02, $44, $00, $00, $08, $00, $00, $00, $10, $04, $00, $01, $08, $04
	db $00, $00, $00, $00, $00, $01, $04, $00, $00, $00, $00, $00, $00, $11, $01, $00
	db $00, $00, $00, $00, $90, $04, $00, $00, $80, $00, $00, $00, $08, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $c0, $00, $00, $01, $00, $04, $00, $00
	db $00, $00, $06, $00, $02, $01, $00, $00, $84, $00, $00, $00, $00, $04, $00, $10
	db $00, $01, $a0, $00, $00, $00, $00, $00, $00, $04, $00, $00, $40, $10, $00, $00
	db $af, $ff, $bf, $fc, $fe, $ff, $bf, $7f, $ac, $ef, $ae, $ff, $aa, $ff, $aa, $ef
	db $2f, $fb, $ef, $fe, $ba, $ff, $ba, $ff, $ff, $ff, $ba, $9b, $aa, $ff, $b2, $bf

	inc b
	nop
	inc b
	nop
	nop
	jr nz, jr_003_7027

jr_003_7027:
	inc de
	nop
	nop
	ld b, b
	nop
	rlca
	ld d, $10
	ld b, h
	nop
	rlca
	rst $10
	nop
	ld c, b
	nop
	rlca
	jr jr_003_7049

	ld c, h
	nop
	rlca
	reti


	nop
	ld d, b
	nop
	rlca
	ld d, $10
	ld d, h
	nop
	rlca
	rst $10
	nop
	ld e, b

jr_003_7049:
	nop
	rlca
	jr jr_003_705d

	ld e, h
	nop
	rlca
	reti


	nop
	ld h, b
	nop
	dec bc
	ld [hl], b
	nop
	ld [hl], b
	nop
	ld [hli], a
	nop
	inc bc
	ld a, b

jr_003_705d:
	nop
	ld [hli], a
	nop
	inc de
	add b
	nop
	ld [hli], a
	nop
	inc bc
	adc b
	nop
	ld [hli], a
	nop
	inc de
	sub b
	nop
	ld [hli], a
	nop
	inc bc
	sbc b
	nop
	ld [hli], a
	nop
	inc de
	and b
	nop
	ld [hli], a
	nop
	inc bc
	xor b
	nop
	ld [hli], a
	nop
	inc bc
	or b
	nop
	ld [hli], a
	nop
	inc de
	or h
	nop
	ld [hli], a
	nop
	inc bc
	cp b
	nop
	ld [hli], a
	nop
	inc bc
	cp h
	nop
	ld [hli], a
	nop
	inc bc
	ret nz

	nop
	ld [hli], a
	nop
	inc de
	call nz, $2200
	nop
	inc bc
	ret z

	nop
	ld [hli], a
	nop
	inc de
	call z, $2200
	nop
	inc bc
	ret nc

	nop
	ld [hli], a
	nop
	inc de
	call nc, $2200
	nop
	inc bc
	ret c

	nop
	ld [hli], a
	nop
	inc de
	call c, $2200
	nop
	inc bc
	ldh [rP1], a
	dec bc
	ld [hl], b
	db $10
	ldh a, [rP1]
	daa
	ld [hli], a
	ld [bc], a
	ld hl, sp+$00
	daa
	jp $0012


	ld bc, $2427
	ld [bc], a
	ld [$2701], sp
	push bc
	ld [de], a
	db $10
	ld bc, $2627
	ld [bc], a
	jr jr_003_70dc

	daa

jr_003_70dc:
	rst $00
	ld [de], a
	jr nz, jr_003_70e1

	daa

jr_003_70e1:
	jr z, jr_003_70e5

	jr z, jr_003_70e6

jr_003_70e5:
	daa

jr_003_70e6:
	ret


	ld [de], a
	ld b, b
	ld bc, $6510
	nop
	ld h, b
	ld bc, $0022
	inc bc
	add b
	ld bc, $0022
	inc bc
	and b
	ld bc, $0022
	inc bc
	or b
	ld bc, $0022
	inc bc
	ret nz

	ld bc, $0022
	inc bc
	ret nc

	ld bc, $0022
	inc bc
	ldh [rSB], a
	ld [hli], a
	nop
	inc bc
	ldh a, [rSB]
	ld [hli], a
	ld [hl], b
	inc bc
	nop
	ld [bc], a
	dec bc
	ld [hl], b
	nop
	db $10
	ld [bc], a
	inc h
	ld d, $01
	jr jr_003_7123

	inc h
	rst $10

jr_003_7123:
	ld de, $0220
	inc h
	jr @+$03

	jr z, jr_003_712d

	inc h
	reti


jr_003_712d:
	ld de, $0230
	inc h
	ld d, $01
	jr c, jr_003_7137

	inc h
	rst $10

jr_003_7137:
	ld de, $0240
	inc h
	jr jr_003_713e

	ld c, b

jr_003_713e:
	ld [bc], a
	inc h
	reti


	ld de, $0250
	inc h
	jr c, jr_003_7148

	ld e, b

jr_003_7148:
	ld [bc], a
	inc h
	cp c
	ld de, $0260
	inc h
	ld l, [hl]
	ld bc, $0268
	inc h
	adc a
	ld de, $0270
	ld [hli], a
	ld b, b
	inc bc
	ld a, b
	ld [bc], a
	ld [hli], a
	ret nz

	inc de
	add b
	ld [bc], a
	ld [hli], a
	ld [hl], b
	inc bc
	adc b
	ld [bc], a
	ld [hli], a
	ld [hl], b
	inc de
	sub b
	ld [bc], a
	ld [hli], a
	ld b, b
	inc bc
	sbc b
	ld [bc], a
	ld [hli], a
	ret nz

	inc de
	and b
	ld [bc], a
	ld [hli], a
	ld [hl], b
	inc bc
	xor b
	ld [bc], a
	ld [hli], a
	ld [hl], b
	inc de
	or b
	ld [bc], a
	inc hl
	ld [de], a
	nop
	cp b
	ld [bc], a
	inc hl
	inc sp
	nop
	ret nz

	ld [bc], a
	inc hl
	ld d, h
	nop
	ret z

	ld [bc], a
	inc hl
	ld [hl], l
	nop
	ret nc

	ld [bc], a
	inc hl
	sub $10
	ret c

	ld [bc], a
	inc hl
	or a
	db $10
	ldh [rSC], a
	inc hl
	sbc b
	db $10
	add sp, $02
	inc hl
	ld a, c
	stop
	inc bc
	inc hl
	ld d, $00
	inc b
	inc bc
	inc hl
	sbc $10
	ld [$2303], sp
	jr c, jr_003_71b5

jr_003_71b5:
	inc c
	inc bc
	inc hl
	cp a
	db $10
	db $10
	inc bc
	inc hl
	sbc l
	nop
	inc d
	inc bc
	inc hl
	ld d, a
	db $10
	jr jr_003_71c9

	ld [hli], a
	and b
	inc bc

jr_003_71c9:
	inc e
	inc bc
	ld [hli], a
	ld b, b
	inc de
	jr nc, jr_003_71d3

	daa
	ld h, $02

jr_003_71d3:
	jr c, jr_003_71d8

	daa
	rst $00
	ld [de], a

jr_003_71d8:
	ld b, b
	inc bc
	daa
	jr z, jr_003_71df

	ld c, b
	inc bc

jr_003_71df:
	daa
	ret


	ld [de], a
	ld d, b
	inc bc
	daa
	ld [hli], a
	ld [bc], a
	ld e, b
	inc bc
	daa
	jp Jump_003_6012


	inc bc
	daa
	inc h
	ld [bc], a
	ld l, b
	inc bc
	daa
	push bc
	ld [de], a
	ld [hl], b
	inc bc
	dec bc
	ld [hl], b
	nop
	add b
	inc bc
	add hl, bc
	add hl, de
	nop
	add h
	inc bc
	add hl, bc
	push de
	nop
	adc b
	inc bc
	add hl, bc
	inc sp
	nop
	adc h
	inc bc
	add hl, bc
	or [hl]
	nop
	sub b
	inc bc
	add hl, bc
	ld d, h
	nop
	sub h
	inc bc
	add hl, bc
	sbc b
	nop
	and b
	inc bc
	ld [hli], a
	nop
	inc bc
	and h
	inc bc
	ld [hli], a
	nop
	inc bc
	xor b
	inc bc
	ld [hli], a
	nop
	inc bc
	xor h
	inc bc
	ld [hli], a
	nop
	inc bc
	or b
	inc bc
	ld [hli], a
	nop
	inc bc
	or h
	inc bc
	ld [hli], a
	nop
	inc bc
	cp b
	inc bc
	ld [hli], a
	nop
	inc bc
	cp h
	inc bc
	ld [hli], a
	nop
	inc bc
	ret nz

	inc bc
	dec bc
	ld [hl], b
	nop
	ldh [$03], a
	rlca
	ld b, d
	db $10
	db $e4
	inc bc
	rlca
	xor c
	nop
	add sp, $03
	rlca
	inc sp
	db $10
	db $ec
	inc bc
	rlca
	cp b
	nop
	ldh a, [$03]
	rlca
	inc h
	db $10
	db $f4
	inc bc
	rlca
	rst $00
	nop
	ld hl, sp+$03
	rlca
	dec d
	db $10
	db $fc
	inc bc
	rlca
	sub $00
	nop
	inc b
	rlca
	ld b, [hl]
	db $10
	inc b
	inc b
	rlca
	and l
	nop
	ld [$0704], sp
	scf
	db $10
	inc c
	inc b
	rlca
	or h
	nop
	db $10
	inc b
	rlca
	jr z, jr_003_7297

	inc d
	inc b
	rlca
	jp $1800


	inc b
	rlca
	add hl, de
	db $10
	inc e
	inc b
	rlca
	jp nc, $3000

jr_003_7297:
	inc b
	inc hl
	ld [de], a
	nop
	inc [hl]
	inc b
	ld [hli], a
	ret nc

	inc de
	jr c, jr_003_72a6

	inc hl
	call nc, $3c10

jr_003_72a6:
	inc b
	ld [hli], a
	ret nc

	inc de
	ld b, b
	inc b
	inc hl
	add [hl]
	nop
	ld b, h
	inc b
	ld [hli], a
	ret nc

	inc de
	ld c, b
	inc b
	inc hl
	ld l, b
	db $10
	ld c, h
	inc b
	ld [hli], a
	ret nc

	inc de
	ld [hl], b
	inc b
	inc h
	ld [de], a
	ld bc, $0474
	ld [hli], a
	ret nc

	inc de
	ld a, b
	inc b
	inc h
	call nc, Call_003_7c11
	inc b
	ld [hli], a
	ret nc

	inc de
	add b
	inc b
	inc h
	add [hl]
	ld bc, $0484
	ld [hli], a
	ret nc

	inc de
	adc b
	inc b
	inc h
	ld l, b
	ld de, $048c
	ld [hli], a
	ret nc

	inc de
	and b
	inc b
	dec bc
	ld [hl], b
	nop
	or b
	inc b
	daa
	ld [hld], a
	ld [de], a
	cp b
	inc b
	daa
	or e
	ld [bc], a
	ret nz

	inc b
	daa
	inc h
	ld [de], a
	ret z

	inc b
	daa
	push bc
	ld [bc], a
	ret nc

	inc b
	daa
	ld c, [hl]
	ld [de], a
	ret c

	inc b
	daa
	xor a
	ld [bc], a
	ldh [rDIV], a
	daa
	ld [hl], $12
	add sp, $04
	daa
	or a
	ld [bc], a
	nop
	dec b
	inc hl
	dec d
	nop
	inc b
	dec b
	inc hl
	sub $10
	ld [$2305], sp
	add a
	nop
	inc c
	dec b
	inc hl
	ld l, b
	db $10
	db $10
	dec b
	ld [hli], a
	ld d, b
	inc bc
	inc d
	dec b
	ld [hli], a
	sub b
	inc de
	jr jr_003_7338

	ld [hli], a
	ld h, b
	inc bc
	inc e
	dec b

jr_003_7338:
	ld [hli], a
	add b
	inc de
	jr nz, jr_003_7342

	dec e
	nop
	nop
	jr z, jr_003_7347

jr_003_7342:
	inc e
	nop
	nop
	ld l, b
	dec b

jr_003_7347:
	ld [bc], a
	nop
	nop
	ld [hl], b
	dec b
	jr @+$72

	nop
	ld a, d
	dec b
	ld [de], a
	jr nz, jr_003_7354

jr_003_7354:
	ret nz

	dec b
	nop
	nop
	nop
	rst $30
	cp $7f
	db $eb
	cp l
	ei
	di
	ld a, [$bbbe]
	ld sp, hl
	ld l, h
	or $c7
	ld l, a
	adc b
	db $fd
	rst $28
	sbc $de
	rst $30
	sbc [hl]
	ld sp, hl
	db $eb
	rst $38
	cp a
	rst $38
	rst $38
	cp $ee
	rst $38
	ld [$dffe], a
	ei
	ld [$ad7f], a
	rst $20
	ld a, [$a3ff]
	ei
	cp d
	rst $38
	and $fd
	xor [hl]
	rst $38
	cp [hl]
	cp $ef
	cp $9e
	rst $08
	xor [hl]
	sub a
	ld e, [hl]
	rst $38
	ld l, d
	rst $38
	cp b
	rst $28
	cp a
	db $eb
	xor [hl]
	ld sp, hl
	xor d
	rst $08
	sbc [hl]
	rst $38
	cp $f5
	ld hl, sp+$7f
	sbc a
	rst $30
	rst $20
	rst $10
	db $fd
	cp a
	ld hl, sp-$01
	rst $38
	ld sp, hl
	xor d
	ei
	or [hl]
	cp l
	ld a, [hli]
	ld l, a
	cp [hl]
	rst $38
	xor a
	ld a, [$dfea]
	cp $ff
	ld a, [$faff]
	sbc $ee
	db $dd
	ldh a, [rIE]
	inc a
	ei
	db $eb
	adc $aa
	xor a
	xor d
	rst $38
	cp [hl]
	rst $38
	cp d
	rst $28
	ld hl, sp-$02
	ld a, d
	rst $30
	cp [hl]
	rst $30
	ld c, $f6
	or [hl]
	rst $38
	ld a, h
	ld a, [$7fec]
	adc e
	ld sp, hl
	sub d
	rst $38
	cp e
	or l
	xor a
	rst $38
	rrca
	rst $38
	rst $28
	rst $38
	ld a, [$e8ff]
	rst $38
	cp a
	ld a, a
	xor $ff
	xor a
	cp $ff
	rst $18
	xor $7f
	xor d
	rst $38
	sbc a
	ld a, a
	xor $ef
	ld a, [$bfff]
	dec d
	rst $28
	ld a, l
	rst $28
	inc e
	ei
	ld c, a
	db $fc
	ld b, c
	rra
	ld e, a
	rst $20
	ld d, l
	rst $18
	db $fd
	ld a, e
	ld [hl], h
	db $ed
	ld b, c
	adc [hl]
	ld d, [hl]
	rst $28
	ld d, a
	cp d
	ei
	cp h
	ld d, a
	xor b
	inc hl
	xor c
	ld d, a
	inc b
	nop
	inc b
	nop
	nop
	jr nz, jr_003_7427

jr_003_7427:
	inc de
	nop
	nop
	ld b, b
	nop
	dec c
	ld d, $02
	ld c, b
	nop
	dec c
	rst $10
	ld [de], a
	ld d, b
	nop
	dec c
	adc b
	ld [bc], a
	ld e, b
	nop
	dec c
	ld l, c
	ld [de], a
	ld h, b
	nop
	dec c
	dec d
	ld [bc], a
	ld l, b
	nop
	dec c
	sub $12
	ld [hl], b
	nop
	dec c
	adc [hl]
	ld [bc], a
	ld a, b
	nop
	dec c
	ld l, a
	ld [de], a
	sub b
	nop
	ld a, [hli]
	jr jr_003_7458

	sub h

jr_003_7458:
	nop
	ld a, [hli]
	reti


	ld de, $0098
	ld a, [hli]
	sbc h
	ld bc, $009c
	ld a, [hli]
	ld e, l
	ld de, $00a0
	ld a, [hli]
	ld d, $01
	and h
	nop
	ld a, [hli]
	rst $10
	ld de, $00a8
	ld a, [hli]
	adc [hl]
	ld bc, $00ac
	ld a, [hli]
	ld l, a
	ld de, $00b0
	dec bc
	ld [hl], b
	nop
	ret nc

	nop
	inc hl
	rla
	nop
	ret c

	nop
	inc hl
	ret c

	db $10
	ldh [rP1], a
	inc hl
	sbc l
	nop
	add sp, $00
	inc hl
	ld e, [hl]
	stop
	ld bc, $6511
	nop
	db $10
	ld bc, $0022
	inc bc
	jr nz, jr_003_74a0

	ld a, [bc]

jr_003_74a0:
	ld a, a
	ld [bc], a
	jr nc, jr_003_74a5

	ld [hli], a

jr_003_74a5:
	nop
	inc bc
	ld b, b
	ld bc, $7f0a
	ld [bc], a
	ld d, b
	ld bc, $0022
	inc bc
	ld h, b
	ld bc, $7f0a
	ld [bc], a
	ld [hl], b
	ld bc, $0022
	inc bc
	add b
	ld bc, $700a
	ld [bc], a
	sub b
	ld bc, $0022
	inc bc
	and b
	ld bc, $700b
	ld [bc], a
	or b
	ld bc, $0022
	inc bc
	or h
	ld bc, $0022
	inc bc
	cp b
	ld bc, $0022
	inc bc
	cp h
	ld bc, $0022
	inc bc
	ret nc

	ld bc, $362a
	ld bc, $01d4
	ld a, [hli]
	ld b, a
	ld bc, $01d8
	ld a, [hli]
	ld e, b
	ld bc, $01dc
	ld a, [hli]
	ld l, c
	ld bc, $01e0
	ld a, [hli]
	ld a, h
	ld bc, $01e4
	ld a, [hli]
	adc l
	ld bc, $01e8
	ld a, [hli]
	sbc [hl]
	ld bc, $01ec
	ld [hli], a
	nop
	inc bc
	nop
	ld [bc], a
	ld a, [hli]
	or b
	ld de, $0204
	ld a, [hli]
	and b
	ld de, $0208
	ld a, [hli]
	sub b
	ld de, $020c
	ld a, [hli]
	add b
	ld de, $0210
	ld a, [hli]
	ld [hl], b
	ld de, $0214
	ld a, [hli]
	ld h, b
	ld de, $0218
	ld a, [hli]
	ld d, b
	ld de, $021c
	ld [hli], a
	nop
	inc de
	jr nz, jr_003_7532

	dec bc
	ld [hl], b

jr_003_7532:
	nop
	jr nc, @+$04

	rlca
	ld h, $10
	inc [hl]
	ld [bc], a
	rlca
	scf
	db $10
	jr c, jr_003_7541

	rlca
	ld c, b

jr_003_7541:
	db $10
	inc a
	ld [bc], a
	rlca
	ld e, c
	db $10
	ld b, b
	ld [bc], a
	rlca
	ld h, h
	db $10
	ld b, h
	ld [bc], a
	rlca
	ld [hl], l
	db $10
	ld c, b
	ld [bc], a
	rlca
	add [hl]
	db $10
	ld c, h
	ld [bc], a
	rlca
	sub a
	db $10
	ld h, b
	ld [bc], a
	rlca
	sub $00
	ld h, h
	ld [bc], a
	rlca
	rst $00
	nop
	ld l, b
	ld [bc], a
	rlca
	cp b
	nop
	ld l, h
	ld [bc], a
	rlca
	xor c
	nop
	ld [hl], b
	ld [bc], a
	rlca
	sub h
	nop
	ld [hl], h
	ld [bc], a
	rlca
	add l
	nop
	ld a, b
	ld [bc], a
	rlca
	halt
	ld a, h
	ld [bc], a
	rlca
	ld h, a
	nop
	sub b
	ld [bc], a
	dec b
	ld d, $00
	sbc b
	ld [bc], a
	dec b
	rst $10
	db $10
	and b
	ld [bc], a
	dec b
	jr c, jr_003_7592

jr_003_7592:
	xor b
	ld [bc], a
	dec b
	cp c
	db $10
	or b
	ld [bc], a
	dec b
	ld h, $00
	cp b
	ld [bc], a
	dec b
	rst $00
	db $10
	ret nz

	ld [bc], a
	dec b
	ld e, b
	nop
	ret z

	ld [bc], a
	dec b
	sbc c
	db $10
	ret nc

	ld [bc], a
	dec bc
	ld [hl], b
	nop
	ldh [rSC], a
	ld [$0012], sp
	db $e4
	ld [bc], a
	ld [$0013], sp
	add sp, $02
	ld [$0014], sp
	db $ec
	ld [bc], a
	ld [$0015], sp
	ldh a, [rSC]
	ld [$0016], sp
	db $f4
	ld [bc], a
	ld [$0017], sp
	ld hl, sp+$02
	ld [hli], a
	nop
	inc bc
	db $fc
	ld [bc], a
	ld [hli], a
	nop
	inc bc
	jr nz, jr_003_75dd

	ld [$10d2], sp

jr_003_75dd:
	inc h
	inc bc
	ld [$10d3], sp
	jr z, jr_003_75e7

	ld [$10d4], sp

jr_003_75e7:
	inc l
	inc bc
	ld [$10d5], sp
	jr nc, jr_003_75f1

	ld [$10d6], sp

jr_003_75f1:
	inc [hl]
	inc bc
	ld [$10d7], sp
	jr c, jr_003_75fb

	ld [hli], a
	nop
	inc de

jr_003_75fb:
	inc a
	inc bc
	ld [hli], a
	nop
	inc de
	ld d, b
	inc bc
	ld a, [bc]
	ld d, $02
	ld e, b
	inc bc
	ld a, [bc]
	rst $10
	ld [de], a
	ld h, b
	inc bc
	ld a, [bc]
	jr c, jr_003_7611

	ld l, b
	inc bc

jr_003_7611:
	ld a, [bc]
	cp c
	ld [de], a
	ld [hl], b
	inc bc
	ld a, [bc]
	ld e, h
	ld [bc], a
	ld a, b
	inc bc
	ld a, [bc]
	xor l
	ld [de], a
	add b
	inc bc
	ld a, [bc]
	ld l, $02
	adc b
	inc bc
	ld a, [bc]
	rst $08
	ld [de], a
	sub b
	inc bc
	dec bc
	ld [hl], b
	nop
	and b
	inc bc
	daa
	ld [hli], a
	ld [bc], a
	and h
	inc bc
	daa
	jp $a812


	inc bc
	daa
	inc h
	ld [bc], a
	xor h
	inc bc
	daa
	push bc
	ld [de], a
	or b
	inc bc
	daa
	ld h, $02
	or h
	inc bc
	daa
	rst $00
	ld [de], a
	cp b
	inc bc
	daa
	jr z, jr_003_7652

	cp h
	inc bc

jr_003_7652:
	daa
	ret


	ld [de], a
	ret nc

	inc bc
	jr nz, jr_003_76cb

	nop
	call nc, $2003
	ld [hl], e
	db $10
	ret c

	inc bc
	jr nz, jr_003_76d7

	nop
	call c, $2003
	ld [hl], l
	db $10
	ldh [$03], a
	jr nz, jr_003_76e3

	nop
	db $e4
	inc bc
	jr nz, jr_003_76e9

	db $10
	add sp, $03
	jr nz, jr_003_76ef

	nop
	db $ec
	inc bc
	ld [hli], a
	nop
	inc de
	db $10
	inc b
	add hl, hl
	ld [hl], d
	ld bc, $0418
	add hl, hl
	ld [hl], e
	ld de, $0420
	add hl, hl
	ld [hl], h
	ld bc, $0428
	add hl, hl
	ld [hl], l
	ld de, $0430
	add hl, hl
	db $76
	ld bc, $0438
	add hl, hl
	ld [hl], a
	ld de, $0440
	add hl, hl
	ld a, b
	ld bc, $0448
	ld [hli], a
	nop
	inc de
	ld d, b
	inc b
	dec bc
	ld [hl], b
	nop
	ld h, b
	inc b
	rlca
	ld d, d
	db $10
	ld h, h
	inc b
	rlca
	sub e
	nop
	ld l, b
	inc b
	rlca
	ld b, h
	db $10
	ld l, h
	inc b
	rlca
	and l
	nop
	ld [hl], b
	inc b
	rlca
	ld [hl], $10
	ld [hl], h
	inc b
	rlca
	or a
	nop
	ld a, b
	inc b
	rlca

jr_003_76cb:
	jr z, jr_003_76dd

	ld a, h
	inc b
	rlca
	ret


	nop
	sub b
	inc b
	ld [hli], a
	nop
	inc de

jr_003_76d7:
	sub h
	inc b
	ld [hli], a
	nop
	inc bc
	sbc b

jr_003_76dd:
	inc b
	ld [hli], a
	nop
	inc de
	sbc h
	inc b

jr_003_76e3:
	ld [hli], a
	nop
	inc bc
	and b
	inc b
	ld [hli], a

jr_003_76e9:
	nop
	inc bc
	and h
	inc b
	ld [hli], a
	nop

jr_003_76ef:
	inc bc
	xor b
	inc b
	ld [hli], a
	nop
	inc bc
	xor h
	inc b
	ld [hli], a
	nop
	inc bc
	ret nz

	inc b
	dec e
	nop
	nop
	ret z

	inc b
	inc e
	nop
	nop
	ret nc

	inc b
	add hl, hl
	inc de
	ld bc, $04d8
	add hl, hl
	rst $10
	ld de, $04e0
	add hl, hl
	inc [hl]
	ld bc, $04e8
	add hl, hl
	or [hl]
	ld de, $04f0
	add hl, hl
	ld d, l
	ld bc, $04f8
	add hl, hl
	sub l
	ld de, $0500
	add hl, hl
	ld h, $01
	inc b
	dec b
	ld [bc], a
	ld h, d
	nop
	ld [$2905], sp
	or h
	ld de, $0520
	ld [hli], a
	jr nz, jr_003_7739

	jr z, jr_003_773d

	ld [hli], a

jr_003_7739:
	or b
	inc de
	ld [hl], b
	dec b

jr_003_773d:
	rrca
	ld h, a
	nop
	sub b
	dec b
	ld [hli], a
	nop
	inc bc
	or b
	dec b
	ld [hli], a
	nop
	inc bc
	ret nc

	dec b
	ld [hli], a
	nop
	inc bc
	ldh a, [rTIMA]
	ld [hli], a
	nop
	inc bc
	db $10
	ld b, $22
	nop
	inc bc
	jr nc, jr_003_7761

	ld [hli], a
	nop
	inc bc
	ld d, b
	ld b, $0b

jr_003_7761:
	ld [hl], b
	nop
	add b
	ld b, $10
	ld h, l
	nop
	and b
	ld b, $22
	nop
	inc bc
	ret nz

	ld b, $22
	nop
	inc bc
	ldh [rTMA], a
	ld [hli], a
	nop
	inc bc
	nop
	rlca
	dec bc
	ld [hl], b
	nop
	ld d, b
	rlca
	ld de, $0065
	ld [hl], b
	rlca
	ld [hli], a
	nop
	inc bc
	add b
	rlca
	ld [hli], a
	nop
	inc bc
	sub b
	rlca
	ld [hli], a
	nop
	inc bc
	and b
	rlca
	ld [hli], a
	nop
	inc bc
	or b
	rlca
	ld [hli], a
	nop
	inc bc
	ret nz

	rlca
	ld [hli], a
	nop
	inc bc
	call nz, $1507
	nop
	nop
	ret nc

	rlca
	dec bc
	ld [hl], b
	nop
	db $10
	ld [$001d], sp
	nop
	jr z, jr_003_77b8

	ld e, $00
	nop
	inc l
	ld [$0002], sp
	nop

jr_003_77b8:
	jr nc, jr_003_77c2

	add hl, de
	ld a, h
	nop
	inc [hl]
	ld [$2012], sp
	nop

jr_003_77c2:
	jr c, jr_003_77cc

	nop
	nop
	nop
	ld d, l
	rst $30
	ld d, h
	jp hl


	adc c

jr_003_77cc:
	ld a, $51
	call nc, $a3d5
	ld l, e
	or a
	ld d, l
	dec l
	inc e
	db $fd
	ld [hl], c
	ld [hl], c
	ret c

	dec a
	dec d
	db $f4
	push de
	adc d
	ld d, l
	rst $28
	ld d, c
	rst $38
	ld d, e
	ld e, a
	sub $5f
	ld d, c
	push de
	ld e, b
	rst $38
	inc hl
	db $fd
	ld d, l
	cp a
	push hl
	ld sp, hl
	ld d, a
	ei
	scf
	ld c, d
	dec [hl]
	sbc a
	sbc a
	rst $18
	rst $38
	db $fd
	ld de, $6d7e
	add hl, de
	ld d, $00
	inc b
	nop
	ld [bc], a
	nop
	ld [bc], a
	add b
	nop
	ld [bc], a
	add h
	nop
	nop
	add b
	nop
	ld [bc], a
	nop
	ld [$0908], sp
	ret nc

	nop
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	nop
	jr nz, jr_003_7820

jr_003_7820:
	nop
	nop
	ld [bc], a
	nop
	nop
	ld [$1300], sp
	nop
	nop
	jr nz, jr_003_782c

jr_003_782c:
	nop
	nop
	nop
	inc hl
	nop
	nop
	nop
	nop
	nop
	ld bc, $21a0
	ld [bc], a
	db $10
	jr nz, @-$3e

	nop
	ld c, b
	nop
	add b
	nop
	nop
	ld [bc], a
	nop
	nop
	stop
	inc de
	nop
	nop
	jr nz, jr_003_784c

jr_003_784c:
	nop
	nop
	nop
	ld [de], a
	jr nz, jr_003_7852

jr_003_7852:
	nop
	ld [$0800], sp
	add d
	ld [bc], a
	jr nz, jr_003_786a

	and b
	ld bc, $0120
	nop
	add b
	nop
	nop
	ld [bc], a
	nop
	nop
	ld b, b
	nop
	inc b
	jr nz, jr_003_786a

jr_003_786a:
	add b
	db $10
	add b
	inc b
	nop
	inc b
	nop
	inc b
	jr nz, @+$52

	ld [bc], a
	stop
	jr nz, jr_003_7883

	nop
	ld [$0001], sp
	jr jr_003_787f

jr_003_787f:
	add b
	nop
	nop
	add b

jr_003_7883:
	dec c
	nop
	ld b, d
	jr nz, jr_003_788c

	ld [bc], a
	jr nz, jr_003_788b

jr_003_788b:
	add b

jr_003_788c:
	ld [$0000], sp
	add b
	nop
	nop
	jr nz, jr_003_78a4

	nop
	stop
	ld d, c
	nop
	ld b, c
	nop
	nop
	add b
	nop
	nop
	nop
	nop
	inc c
	nop
	inc b

jr_003_78a4:
	add b
	nop
	add b
	inc b
	nop
	inc h
	nop
	db $10
	ld [bc], a
	stop
	ld b, b
	jr nz, jr_003_78c2

	ld bc, $0021
	ret nz

	nop
	jr jr_003_78c1

	ld bc, $3200
	ld [bc], a
	nop
	nop
	inc c
	nop

jr_003_78c1:
	nop

jr_003_78c2:
	nop
	ld bc, $0200
	jr nz, jr_003_78c8

jr_003_78c8:
	nop
	jr nz, jr_003_78cb

jr_003_78cb:
	ld [$0008], sp
	nop
	inc b
	inc h
	add c
	jr nz, jr_003_78d4

jr_003_78d4:
	nop
	ld de, $0c20
	nop
	nop
	ld [bc], a
	sbc b
	nop
	add b
	nop
	jr nc, jr_003_7901

	ld de, $0000
	nop
	sbc h
	ld [bc], a
	add [hl]
	ld [$0080], sp
	add b
	nop
	add c
	jr nz, jr_003_7910

	add b
	sub b
	add d
	add b
	add b
	xor b
	nop
	ld b, b
	nop
	inc b
	nop
	nop
	nop
	inc [hl]
	jr nz, jr_003_7940

	nop

jr_003_7901:
	nop
	nop
	stop
	jr nz, jr_003_7907

jr_003_7907:
	nop
	add b
	jr nz, jr_003_790b

jr_003_790b:
	nop
	jr nz, jr_003_792e

	nop
	nop

jr_003_7910:
	jr nz, jr_003_7912

jr_003_7912:
	xor b
	jp nz, $0000

	nop
	ld hl, $0822
	nop
	nop
	nop
	nop
	nop
	ld b, d
	nop
	ld [$a480], sp
	nop
	nop
	nop
	db $10
	inc b
	nop
	nop
	nop
	nop
	nop

jr_003_792e:
	ld [bc], a
	inc h
	add b
	ret nz

	ld [bc], a
	nop
	jr nz, @-$7a

	add b
	ld b, b
	nop
	nop
	add b
	dec b
	nop
	nop
	jr nz, jr_003_79a0

jr_003_7940:
	ld [$0010], sp
	dec b
	and b
	ld [$4002], sp
	nop
	ld bc, $0088
	ld [$0000], sp
	nop
	nop
	ld [$8280], sp
	nop
	add b
	nop
	ld de, $8002
	add b
	nop
	ld [hli], a
	nop
	nop
	ld [bc], a
	nop
	nop
	add b
	jr nz, @+$0c

	and b
	nop
	add c
	nop
	ld b, c
	ld [bc], a
	add b
	nop
	ld [$2040], sp
	nop
	nop
	ld [$8040], sp
	ld b, b
	add b
	nop
	and b
	ld b, b
	nop
	ld bc, $0402
	nop
	ld e, $02
	nop
	nop
	ld b, b
	ld [$8000], sp
	ld bc, $0020
	nop
	ld h, b

jr_003_798c:
	nop
	inc b
	add b
	nop
	jr nz, @+$04

	ld [$0020], sp
	ld bc, $0008
	nop
	sub b
	ld [bc], a
	add d
	ld [bc], a
	db $10
	jr nz, @+$32

jr_003_79a0:
	add b
	ld b, b
	jr nc, @+$0a

	nop
	nop
	nop
	nop
	nop
	inc b
	ld [$0008], sp
	inc c
	add b
	ld d, b
	nop
	db $10
	add h
	ld b, b
	nop
	ld h, l
	ld [bc], a
	and b
	jr z, @-$77

	jr nz, jr_003_79c8

	nop
	ld b, c
	nop
	ld b, b
	nop
	ld b, b
	nop
	nop
	add d
	nop
	nop
	nop

jr_003_79c8:
	nop
	ld b, b
	nop
	db $10
	ld [$0000], sp
	jr jr_003_79d9

	nop
	nop
	nop
	jr nz, jr_003_79d6

jr_003_79d6:
	nop
	nop
	nop

jr_003_79d9:
	inc d
	nop
	nop
	add b
	ld [hld], a
	ld [bc], a
	add hl, bc
	nop
	inc c
	nop
	nop
	nop
	inc b
	ld [$0205], sp
	ld [hld], a
	nop
	jr nc, jr_003_79f7

	ld h, b
	nop
	inc h
	nop
	ld b, $00
	inc bc
	nop
	sub b
	nop

jr_003_79f7:
	jr z, jr_003_7a19

	ld [$8020], sp
	nop
	sbc b
	nop
	add [hl]
	nop
	nop
	nop
	ld [bc], a
	nop
	ld [$0000], sp
	nop
	ld [bc], a
	jr nz, jr_003_798c

	nop
	nop
	add b
	nop
	nop
	nop
	nop
	jr nz, jr_003_7a15

jr_003_7a15:
	nop
	nop
	jr nz, jr_003_7a19

jr_003_7a19:
	stop
	stop
	sub b
	nop
	stop
	nop
	nop
	jr nz, jr_003_7a25

jr_003_7a25:
	nop
	ld [$0004], sp
	stop

jr_003_7a2b:
	nop
	nop
	inc b
	nop
	and b
	jr nz, jr_003_7a32

jr_003_7a32:
	adc b
	ld [bc], a
	nop
	inc c
	add d

jr_003_7a37:
	jr @-$7e

	inc hl
	ld [bc], a
	nop
	nop
	inc de
	nop
	ld b, b
	nop
	nop
	jr nz, jr_003_7a44

jr_003_7a44:
	add b
	nop
	nop
	inc b
	nop
	jr nz, jr_003_7a4b

jr_003_7a4b:
	nop
	jr nz, jr_003_7a4e

jr_003_7a4e:
	add b
	stop
	nop
	ld [bc], a
	add h
	nop
	add b
	nop
	ld [bc], a
	stop
	nop
	ld b, b
	ld [bc], a
	inc b
	ld a, [bc]
	nop
	nop
	add b
	nop
	or b
	nop
	nop
	nop
	nop
	add b
	nop
	ld [bc], a
	ld a, [bc]
	nop
	jr nz, jr_003_7a6f

jr_003_7a6f:
	ld [hli], a
	nop
	ld c, c
	add b
	jr nz, jr_003_7a7d

	sub d
	ld [bc], a
	ld b, c
	nop
	ld h, h
	nop
	nop
	ld [hli], a

jr_003_7a7d:
	add c
	nop
	ld bc, $0000
	nop
	ld [bc], a
	nop
	nop
	jr nz, @+$22

	ld [bc], a
	nop
	ld [$0008], sp
	ld [$0080], sp
	jr z, jr_003_7a92

jr_003_7a92:
	nop
	ld b, b
	nop
	nop
	nop
	sub b
	add b
	nop
	nop
	ld b, b
	nop
	db $10
	ld [bc], a
	inc h
	nop
	nop
	nop
	ld b, b
	jr nz, jr_003_7af6

	nop
	jr nz, jr_003_7a2b

	ld d, b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, c
	nop
	jr nz, jr_003_7a37

	inc b
	ld [bc], a
	ld [de], a
	ld [$0008], sp
	inc bc
	ld [bc], a
	and b
	nop
	jr c, jr_003_7ac3

jr_003_7ac3:
	add b
	ld [$0200], sp
	nop
	jr nz, jr_003_7aca

jr_003_7aca:
	nop
	nop
	ld [bc], a
	ld [bc], a
	nop
	nop
	nop
	inc d
	nop
	ld [$8200], sp
	ld [$0280], sp
	nop
	nop
	stop
	stop
	nop
	ld [$0000], sp
	ld b, b
	ld [bc], a
	jr jr_003_7ae9

	nop
	nop

jr_003_7ae9:
	ld [$0000], sp
	nop
	nop
	nop
	stop
	nop
	jr nz, jr_003_7b05

	add d
	nop

jr_003_7af6:
	add b
	stop
	ld [$2000], sp
	nop
	nop
	nop
	ld c, b
	nop
	nop
	add b
	nop
	and b

jr_003_7b05:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	ld [bc], a
	nop
	nop
	nop
	nop
	ld [bc], a
	nop
	ld [bc], a
	ld [hl], h
	ld [bc], a
	jr nz, jr_003_7b19

jr_003_7b19:
	jr nz, @-$5e

	nop
	ld [$0012], sp
	jr nz, jr_003_7b21

jr_003_7b21:
	inc b
	nop
	dec b
	jr nz, jr_003_7b26

jr_003_7b26:
	ld [bc], a
	stop
	nop
	nop
	db $10
	add d
	ld b, b
	nop
	db $10
	jr nz, jr_003_7b62

	nop
	nop
	nop
	nop
	add b
	jr nz, jr_003_7b59

	sbc b
	ld [$00d1], sp
	add [hl]
	nop
	dec de
	nop
	nop
	nop
	nop
	nop
	ld bc, $0000
	ld [bc], a
	nop
	nop
	ld [$0000], sp
	nop
	nop
	add b
	nop
	nop
	ld d, b
	nop
	jr nz, jr_003_7b57

jr_003_7b57:
	xor b
	nop

jr_003_7b59:
	nop
	jr nz, jr_003_7b74

	add b
	jr nz, jr_003_7b5f

jr_003_7b5f:
	ld b, $08
	nop

jr_003_7b62:
	nop
	add b
	add b
	nop
	ld [bc], a
	nop
	nop
	nop
	ld [hli], a
	ld [bc], a
	nop
	nop
	nop
	adc b
	add b
	ld b, b
	nop
	nop

jr_003_7b74:
	nop
	jr jr_003_7b7f

	ld [$0080], sp
	nop
	dec b
	nop
	ld a, [de]
	nop

jr_003_7b7f:
	ld b, $80
	nop
	nop
	ld [$0008], sp
	nop
	add hl, bc
	add b
	ld hl, $6000
	nop
	add b
	nop
	inc b
	jr z, @+$06

	nop
	nop
	nop
	ld hl, $0000
	add b
	nop
	db $10
	add b
	nop
	inc b
	nop
	jr nz, jr_003_7ba1

jr_003_7ba1:
	add b
	nop
	jr nz, jr_003_7ba5

jr_003_7ba5:
	nop
	nop
	add b
	ld [bc], a
	nop
	ld [bc], a
	adc b
	nop
	nop
	nop
	ld b, b
	nop
	ld [$0800], sp
	ld c, b
	ld [$0118], sp
	ld [bc], a
	nop
	nop
	ld d, b
	nop
	jr nz, jr_003_7bc1

	nop
	nop

jr_003_7bc1:
	nop
	add b
	add b
	nop
	nop
	nop
	nop
	ld [bc], a
	nop
	nop
	nop
	nop
	add hl, bc
	nop
	dec b
	nop
	db $10
	ld [$200a], sp
	add b
	add d
	ld b, b
	nop
	ret nz

	nop
	db $10
	xor b
	nop
	nop
	ld bc, $0002
	nop
	ld [bc], a
	ld [hli], a
	nop
	ld [$0080], sp
	ret nz

	nop
	ld de, $1020
	ld [$0000], sp
	nop
	nop
	ld b, $02
	nop
	ld [bc], a
	ld [bc], a
	nop
	nop
	nop
	nop
	jr nz, jr_003_7bfe

jr_003_7bfe:
	nop
	ld b, b
	add c
	nop
	nop
	ld bc, $0000
	db $10
	ld bc, $0080
	nop
	nop
	nop
	ld b, b
	db $10
	stop

Call_003_7c11:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz, jr_003_7c1f

jr_003_7c1f:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld [$0040], sp
	nop
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr jr_003_7c74

	nop
	nop
	add d
	stop
	nop
	nop
	nop
	stop
	nop
	nop
	nop
	nop
	nop
	nop
	add b
	ld b, b
	nop
	nop
	adc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	stop
	ld b, b
	nop
	nop
	nop
	nop
	inc b
	dec b
	nop
	sub b
	nop
	ld bc, $0000
	nop
	and b
	nop
	jr nz, jr_003_7ca6

	add b
	nop
	nop
	nop
	ld a, [bc]
	ld b, c
	jr nz, jr_003_7c6e

jr_003_7c6e:
	nop
	nop
	ld b, b
	ld bc, $0000

jr_003_7c74:
	nop
	nop
	nop
	nop
	nop
	db $10
	stop
	ld de, $0000
	nop
	nop
	db $10
	db $10
	db $10
	add b
	nop
	ret nz

	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	db $10
	inc b
	nop
	nop
	ld b, b
	nop
	nop
	nop
	inc b
	inc b
	nop
	inc d
	nop
	nop
	nop
	stop
	nop
	stop
	nop

jr_003_7ca6:
	nop
	nop
	nop
	nop
	inc b
	nop
	ld [$0000], sp
	nop
	add b
	ld d, b
	nop
	ld bc, $0000
	ld [bc], a
	nop
	jr nz, jr_003_7cba

jr_003_7cba:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, b
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0082
	nop
	nop
	inc h
	nop
	nop
	nop
	nop
	nop
	add b
	ld bc, $0000
	ld c, b
	nop
	inc b
	nop
	nop
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	inc b
	nop
	inc b
	ld b, b
	nop
	ld [$0010], sp
	ld b, b
	ld b, b
	inc b
	nop
	nop
	ld b, b
	nop
	add b
	nop
	jr nz, jr_003_7cfa

jr_003_7cfa:
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld [bc], a
	nop
	inc d
	nop
	nop
	stop
	nop
	ld bc, $0000
	nop
	ld bc, $0440
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz, jr_003_7d1a

jr_003_7d1a:
	nop
	nop
	nop
	nop
	ld [bc], a
	nop
	ld bc, $0000
	nop
	nop
	nop
	add b
	db $10
	ld [$0000], sp
	nop
	nop
	nop
	inc b
	inc b
	adc b
	ld bc, $0080
	nop
	nop
	ld [bc], a
	nop
	nop
	nop
	ld [bc], a
	nop
	nop
	nop
	ld [$0000], sp
	db $10
	ld b, b
	ld bc, $0000
	nop
	stop
	nop
	stop
	ld b, h
	nop
	nop
	nop
	nop
	nop
	ld a, [bc]
	nop
	nop
	nop
	nop
	ld de, $0000
	nop
	nop
	dec b
	nop
	nop
	ld b, b
	nop
	nop
	nop
	inc b
	nop
	nop
	stop
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	nop
	inc d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, b
	inc d
	nop
	nop
	stop
	ld bc, $0100
	inc c
	nop
	nop
	nop
	jr nz, jr_003_7d86

jr_003_7d86:
	nop
	nop
	nop
	ld b, h
	nop
	stop
	ld bc, $0000
	inc bc
	nop
	nop
	nop
	add b
	nop
	ld [bc], a
	stop
	nop
	stop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz, jr_003_7da6

jr_003_7da6:
	ld [$0100], sp
	nop
	add b
	nop
	dec b
	nop
	nop
	nop
	nop
	nop
	ld b, b
	nop
	nop
	ld bc, $0009
	nop
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld [hli], a
	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	nop
	ld b, b
	add b
	nop
	nop
	nop
	ld [$0000], sp
	nop
	nop
	nop
	ld b, d
	nop
	nop
	ld b, b
	nop
	nop
	nop
	nop
	ld [$0201], sp
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld [hld], a
	nop
	nop
	nop
	stop
	nop
	nop
	nop
	ld bc, $0000
	ld [$0004], sp
	nop
	nop
	nop
	nop
	ld bc, $0004
	nop
	nop
	nop
	nop
	ld de, $0000
	nop
	ld de, $0000
	nop
	inc b
	nop
	inc b
	nop
	nop
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, b
	ld bc, $2000
	nop
	ld [$1004], sp
	nop
	nop
	inc b
	ld b, b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add b
	nop
	nop
	nop
	nop
	nop
	ld [hli], a
	nop
	add b
	nop
	nop
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, h
	nop
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	nop
	add b
	nop
	nop
	ld b, b
	nop
	ld bc, $0100
	jr jr_003_7e56

jr_003_7e56:
	stop
	inc b
	nop
	nop
	nop
	nop
	ld bc, $0000
	ld c, b
	nop
	nop
	nop
	nop
	nop
	nop
	db $10
	ld b, b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	db $10
	stop
	nop
	stop
	nop
	nop
	db $10
	ld bc, $1400
	inc b
	stop
	inc c
	nop
	add b
	db $10
	add b
	nop
	ld [bc], a
	nop
	nop
	nop
	nop
	inc b
	add e
	nop
	nop
	nop
	nop
	nop
	ld bc, $0000
	nop
	nop
	nop
	nop
	stop
	nop
	nop
	ld b, c
	nop
	nop
	dec l
	nop
	inc h
	nop
	nop
	nop
	and b
	nop
	nop
	ld bc, $0000
	inc b
	nop
	nop
	nop
	db $10
	inc d
	ld b, b
	nop
	inc b
	nop
	jr nz, jr_003_7ebe

jr_003_7ebe:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	stop
	nop
	nop
	nop
	nop
	nop
	jr nz, jr_003_7ece

jr_003_7ece:
	nop
	nop
	ld bc, $0800
	nop
	nop
	ld bc, $0040
	ld b, b
	nop
	add b
	nop
	nop
	nop
	jr z, jr_003_7ee0

jr_003_7ee0:
	nop
	nop
	nop
	ld b, b
	stop
	add b
	nop
	ld bc, $0000
	nop
	rlca
	nop
	nop
	inc b
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	ld b, h
	nop
	nop
	nop
	nop
	nop
	ld bc, $0041
	nop
	nop
	ld c, b
	nop
	nop
	nop
	nop
	ld bc, $4400
	ld [$1000], sp
	stop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz, jr_003_7f1a

jr_003_7f1a:
	nop
	nop
	add b
	nop
	nop
	inc b
	inc h
	nop
	nop
	nop
	nop
	ld b, b
	nop
	nop
	jr nz, jr_003_7f2a

jr_003_7f2a:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	stop
	nop
	nop
	nop
	nop
	stop
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	inc bc
	nop
	nop
	nop
	inc b
	stop
	nop
	nop
	nop
	inc b
	ld b, b
	nop
	inc b
	stop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, b
	nop
	nop
	nop
	nop
	inc d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	stop
	nop
	nop
	nop
	nop
	ld b, b
	nop
	nop
	nop
	inc d
	inc b
	nop
	nop
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	jr nz, jr_003_7f8a

jr_003_7f8a:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0000
	jr nz, jr_003_7f9b

	nop

jr_003_7f9b:
	nop
	ld b, b
	nop
	nop
	nop
	ld bc, $0010
	nop
	nop
	stop
	nop
	nop
	nop
	ld [de], a
	nop
	ld b, b
	nop
	nop
	nop
	ld [hl], b
	inc b
	nop
	ld b, b
	nop
	nop
	nop
	db $10
	ld b, b
	db $10
	ld [bc], a
	nop
	ret nz

	ld b, h
	ld [$0001], sp
	nop
	nop
	nop
	add b
	nop
	ld b, d
	nop
	nop
	db $10
	ld b, d
	nop
	nop
	nop
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0188
	add b
	inc b
	nop
	nop
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	add d
	nop
	nop
	nop
	nop
	stop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld [$0000], sp
	nop
	ld e, h
	nop
	db $11
	ld [bc], a
