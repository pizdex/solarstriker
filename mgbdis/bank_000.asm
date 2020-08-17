; Disassembly of "solarstriker.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
	jp Jump_000_0150


	ei
	ei
	xor $ab
	rst $28

RST_08::
	cp [hl]
	rst $38
	cp l
	rst $38
	cp d
	rst $38
	xor d
	rst $38

RST_10::
	xor a
	rst $38
	cp [hl]
	cp a
	xor e
	rst $38
	xor e
	rst $38

RST_18::
	db $eb
	rst $30
	xor e
	rst $38
	ld [$aeff], a
	rst $38

RST_20::
	cp $ff
	cp [hl]
	rst $38
	cp $bf
	xor d
	rst $38

RST_28::
	xor e
	rst $38
	and e
	rst $38
	xor [hl]
	rst $18
	db $ea
	rst $38

RST_30::
	ld [$aa7f], a
	rst $38
	rst $38
	rst $38
	xor e
	rst $38

RST_38::
	ei
	rst $38
	cp [hl]
	rst $38
	xor d
	rst $38
	ei
	rst $38

VBlankInterrupt::
	jp Jump_000_02e5


	cp a
	xor $ff
	cp d
	rst $38

LCDCInterrupt::
	jp Jump_000_030c


	cp $ff
	ei
	rst $28
	rst $38

TimerOverflowInterrupt::
	jp Jump_000_0315


	cp a
	xor $ff
	db $ea
	ld a, a

SerialTransferCompleteInterrupt::
	reti


	rst $38
	xor a
	or $fb
	rst $38
	cp e
	rst $38

JoypadTransitionInterrupt::
	reti


	rst $38
	xor e
	rst $38
	xor e
	rst $38
	or $fb

	cp [hl]
	rst $38
	cp e
	rst $30
	xor d
	rst $38
	cp d
	rst $38
	ei
	rst $38
	ei
	rst $38
	ld a, [$eafe]
	rst $38
	db $eb
	rst $38
	xor d
	rst $38
	xor d
	rst $38
	ld [$feff], a
	rst $38
	ld a, [bc]
	rst $38
	cp a
	rst $38
	ld [$baff], a
	rst $38
	ld l, [hl]
	rst $38
	ld a, $ff
	rst $38
	rst $38
	db $eb
	ld sp, hl
	xor d
	cp a
	ld [$aafb], a
	rst $38
	and e
	rst $38
	ld [$3afb], a
	rst $38
	ld [$aeff], a
	rst $38
	xor e
	rst $38
	rst $18
	rst $38
	ld a, [$afbf]
	rst $38
	db $eb
	rst $38
	cp e
	rst $38
	xor $ff
	xor $ff
	ld [$aaff], a
	rst $38
	xor [hl]
	rst $38
	db $eb
	rst $28
	db $eb
	rst $38

Call_000_00bc:
	ei
	rst $38
	sbc a
	rst $38
	xor $ff
	xor a
	rst $38
	ld a, [hld]
	rst $18
	ld [$feff], a
	rst $38
	xor d
	rst $38
	cp d
	rst $38
	db $eb
	rst $38
	db $eb
	db $fd
	xor [hl]
	rst $38
	cp d
	rst $38
	xor e
	rst $38
	jp hl


	rst $38
	rst $28
	rst $38
	xor e
	rst $38
	xor a
	db $fd
	cp e
	rst $38
	rst $28
	db $fd
	xor $ff
	xor a
	rst $38
	ld a, [$aaf7]
	db $fd
	ld a, [$bbff]
	rst $38
	db $eb
	ld a, a
	ld a, [$aaff]
	rst $38
	cp [hl]
	ei
	cp [hl]
	rst $38
	rst $28
	ei
	xor $f5
	xor $ff

Boot::
	nop
	jp Jump_000_0150


HeaderLogo::
	db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
	db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
	db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
	db "SOLARSTRIKER", $00, $00, $00, $00

HeaderNewLicenseeCode::
	db $00, $00

HeaderSGBFlag::
	db $00

HeaderCartridgeType::
	db $01

HeaderROMSize::
	db $01

HeaderRAMSize::
	db $00

HeaderDestinationCode::
	db $00

HeaderOldLicenseeCode::
	db $01

HeaderMaskROMVersion::
	db $00

HeaderComplementCheck::
	db $3f

HeaderGlobalChecksum::
	db $26, $06

Jump_000_0150:
	ld a, $01
	ld [$2100], a
	call Call_000_0866
	di
	call Call_000_084e
	call $495c
	ld bc, $0010
	ld hl, $cff0
	call Call_000_0a87
	ld a, $02
	ld [$cff3], a

Jump_000_016d:
	ld a, $02
	ld [$2100], a
	ld hl, $4000
	ld de, $8000
	ld bc, $1000
	call Call_000_088e
	ld hl, $6730
	ld de, $9000
	ld bc, $0630
	call Call_000_088e
	ld a, $03
	ld [$2100], a
	ld hl, $58b0
	ld de, $d000
	ld bc, $0080
	call Call_000_088e
	ld hl, $5930
	ld de, $d200
	ld bc, $0090
	call Call_000_088e
	ld a, $01
	ld [$2100], a
	call Call_000_0877
	ld bc, $0ff0
	ld hl, $c000
	call Call_000_0a87
	ld hl, $ca88
	ld a, $a2
	ld [hli], a
	ld a, $9a
	ld [hl], a
	call Call_000_13d4
	xor a
	ldh [rSCY], a
	ldh [rSB], a
	ldh [rSC], a
	ld [$cf86], a
	ld [$ca19], a
	ld a, $20
	ldh [rSCX], a
	ld a, $20
	ldh [rSCY], a
	ld a, [$cffc]
	or a
	jr nz, jr_000_01e7

	ld de, $3e9b
	call Call_000_08a1
	jr jr_000_01ed

jr_000_01e7:
	ld de, $3ec7
	call Call_000_08a1

jr_000_01ed:
	ld hl, $9a4c
	ld de, $cff1
	ld b, $07

jr_000_01f5:
	ld a, [de]
	or $f0
	ld [hli], a
	inc de
	dec b
	jr nz, jr_000_01f5

	ld a, $e4
	ldh [rBGP], a
	ldh [rOBP0], a
	ld a, $40
	ldh [rOBP1], a
	ld a, $88
	ldh [rLYC], a
	ld a, $40
	ldh [rSTAT], a
	xor a
	ldh [rTMA], a
	ldh [rIF], a
	ld de, $04f5
	call Call_000_0a3e
	ld hl, $5ddb
	xor a
	call $49aa
	ld [$cf9a], a
	ld a, $07
	ldh [rTAC], a
	ld a, $07
	ldh [rIE], a
	ld a, $87
	ldh [rLCDC], a
	ei

jr_000_0231:
	ld a, [$cf86]
	and a
	jr z, jr_000_0231

	ld a, $07
	ldh [rIE], a
	ei
	xor a
	ld [$ca18], a
	ld a, [$ca1a]
	or a
	jp nz, Jump_000_054a

	call Call_000_081a
	call Call_000_0455
	call Call_000_14c4
	xor a
	ld [$cf86], a
	inc a
	ld [$ca18], a
	call Call_000_0325
	or a
	jp nz, Jump_000_02ce

	jr jr_000_0231

Jump_000_0261:
jr_000_0261:
	ld a, [$cf86]
	or a
	jr z, jr_000_0261

	xor a
	ld [$ca18], a
	ld a, $07
	ldh [rIE], a
	ei
	call Call_000_137a
	call Call_000_081a
	call Call_000_0455
	call Call_000_14c4
	ld hl, $cf9b
	ld a, [hli]
	or a
	jp nz, Jump_000_05d8

	ld a, [hli]
	or a
	jp nz, Jump_000_0730

	ld a, [hli]
	or a
	jp nz, Jump_000_0381

	call Call_000_0325
	or a
	jp nz, Jump_000_02ce

	ld a, [$ca1d]
	or a
	call nz, Call_000_04d3
	xor a
	ld [$cf86], a
	jr jr_000_0261

Jump_000_02a2:
jr_000_02a2:
	ld a, [$cf86]
	or a
	jr z, jr_000_02a2

	ld a, $07
	ldh [rIE], a
	ei
	call Call_000_081a
	call Call_000_0455
	ld a, $01
	ld [$ca18], a
	xor a
	ld [$cf86], a
	ld hl, $cf98
	ld a, [hl]
	or a
	jr z, jr_000_02a2

	inc [hl]
	cp $04
	jr c, jr_000_02a2

	ld a, [$cf9a]
	call $4bd1

Jump_000_02ce:
jr_000_02ce:
	ldh a, [rLY]
	cp $90
	jr c, jr_000_02ce

	cp $96
	jr nc, jr_000_02ce

	ldh a, [rLCDC]
	and $7f
	ldh [rLCDC], a
	ld hl, $ffff
	ld sp, hl
	jp Jump_000_016d


Jump_000_02e5:
	di
	push af
	push bc
	push de
	push hl
	di
	ld a, $03
	ldh [rIE], a
	ld a, [$ca18]
	and a
	call nz, $ff80
	ld a, $01
	ld [$cf86], a
	ldh a, [rLCDC]
	or $02
	ldh [rLCDC], a
	call Call_000_1447
	call Call_000_048d
	pop hl
	pop de
	pop bc
	pop af
	reti


Jump_000_030c:
	push af
	ldh a, [rLCDC]
	and $fd
	ldh [rLCDC], a
	pop af
	reti


Jump_000_0315:
	push af
	di
	ld a, $03
	ldh [rIE], a
	ei
	call $4c97
	ld a, $07
	ldh [rIE], a
	pop af
	reti


Call_000_0325:
	ld a, [$cab9]
	or a
	jr nz, jr_000_0357

	ld a, [$cf80]
	and $0f
	cp $0f
	jr z, jr_000_0336

	xor a
	ret


jr_000_0336:
	ld a, [$cf9a]
	call $4bd1

jr_000_033c:
	ld a, [$cf86]
	or a
	jr z, jr_000_033c

	call Call_000_081a
	xor a
	ld [$cf86], a
	ld a, [$cf80]
	and $0f
	jr nz, jr_000_033c

	xor a
	ldh [rTAC], a
	ldh [rTMA], a
	inc a
	ret


jr_000_0357:
	ld a, [$cf80]
	and $08
	jr nz, jr_000_0360

	xor a
	ret


jr_000_0360:
	ld a, [$cf9a]
	call $4bd1

jr_000_0366:
	ld a, [$cf86]
	or a
	jr z, jr_000_0366

	call Call_000_081a
	xor a
	ld [$cf86], a
	ld a, [$cf80]
	and $08
	jr nz, jr_000_0366

	xor a
	ldh [rTAC], a
	ldh [rTMA], a
	inc a
	ret


Jump_000_0381:
	ld a, [$cf9a]
	call $4bd1
	ld a, $01
	ld hl, $5d8a
	call $49aa
	ld [$cf9a], a
	xor a
	ld [$cf9d], a
	call Call_000_0437

jr_000_0399:
	ld a, [$cf86]
	or a
	jr z, jr_000_0399

	xor a
	ld [$ca18], a
	call Call_000_048d
	call Call_000_081a
	call Call_000_14c4
	call $4c97
	call Call_000_0c04
	or a
	jp nz, Jump_000_03f6

	call Call_000_0325
	or a
	jp nz, Jump_000_02ce

	ld hl, $cf9d
	ld a, [hli]
	or a
	jr z, jr_000_03d5

	ld a, [hli]
	or a
	jr z, jr_000_03e1

	ld a, [hli]
	or a
	jr z, jr_000_03ec

	ld a, [$cf80]
	and $08
	jr z, jr_000_03fc

	jr jr_000_03f6

jr_000_03d5:
	ld a, [$cf80]
	and $08
	jr nz, jr_000_03f6

	inc a
	dec hl
	ld [hl], a
	jr jr_000_03f6

jr_000_03e1:
	ld a, [$cf80]
	and $08
	jr z, jr_000_03f6

	dec hl
	ld [hl], a
	jr jr_000_03f6

jr_000_03ec:
	ld a, [$cf80]
	and $08
	jr nz, jr_000_03f6

	inc a
	dec hl
	ld [hl], a

Jump_000_03f6:
jr_000_03f6:
	xor a
	ld [$cf86], a
	jr jr_000_0399

jr_000_03fc:
	ld hl, $cf9d
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld [$cf86], a
	ld [$cfa2], a
	call Call_000_0446
	ld a, [$cfa1]
	or a
	jr z, jr_000_041f

	ld hl, $5eb0
	ld a, [$cfa1]
	dec a
	jr z, jr_000_042d

	ld hl, $5f23
	jr jr_000_042d

jr_000_041f:
	ld a, [$ca19]
	add a
	ld l, a
	ld h, $00
	ld de, $07f8
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a

jr_000_042d:
	xor a
	call $49aa
	ld [$cf9a], a
	jp Jump_000_0261


Call_000_0437:
	ld de, $080e
	ld hl, $cae0
	ld b, $04

jr_000_043f:
	ld a, [de]
	ld [hli], a
	inc de
	dec b
	jr nz, jr_000_043f

	ret


Call_000_0446:
	ld hl, $cae0
	ld de, $0814
	ld b, $06
	ld a, [de]
	ld [hli], a
	inc de
	dec b
	jr nz, jr_000_043f

	ret


Call_000_0455:
	ld hl, $c700
	ld bc, $ca10

Jump_000_045b:
	push hl
	ld a, [hli]
	ld e, a
	ld d, [hl]
	or d
	jp z, Jump_000_047e

	ld a, [bc]
	rlca
	swap a
	ld b, a
	and $0f
	ld h, a
	ld a, b
	and $f0
	ld l, a
	ld bc, $c100
	add hl, bc
	ld c, l
	ld b, h
	ld hl, $ca12
	ld a, c
	ld [hli], a
	ld [hl], b
	ld l, e
	ld h, d
	jp hl


Jump_000_047e:
	pop hl
	inc hl
	inc hl
	ld bc, $ca10
	ld a, [bc]
	inc a
	and $1f
	ld [bc], a
	jp nz, Jump_000_045b

	ret


Call_000_048d:
	ld a, [$ca19]
	cp $07
	jr nc, jr_000_04b3

	ld c, $0d
	ld hl, $9c06
	ld de, $cf88

Call_000_049c:
jr_000_049c:
	ld a, [de]
	or $f0
	ld [hli], a
	inc de
	dec c
	jr nz, jr_000_049c

	ld c, $06
	ld hl, $9c00
	ld de, $cae0

jr_000_04ac:
	ld a, [de]
	ld [hli], a
	inc de
	dec c
	jr nz, jr_000_04ac

	ret


jr_000_04b3:
	ld a, [$cad0]
	or a
	ret z

	ld a, [$cad6]
	ld b, a
	ld hl, $cad4
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld hl, $cad2
	ld a, [hli]
	ld h, [hl]
	ld l, a

jr_000_04c8:
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, jr_000_04c8

	ld a, b
	ld [$cad0], a
	ret


Call_000_04d3:
	ld hl, $ff42
	ld de, $ca1e
	ld a, [de]
	or a
	jr nz, jr_000_04e9

	ldh a, [rDIV]
	and $07
	or $01
	ld [de], a
	inc [hl]
	inc hl
	add [hl]
	ld [hl], a
	ret


jr_000_04e9:
	dec [hl]
	inc hl
	ld b, a
	xor a
	sub b
	add [hl]
	ld [hl], a
	xor a
	ld [de], a
	dec de
	ld [de], a
	ret


	ld a, [$cf80]
	ld b, a
	and $08
	jr z, jr_000_0516

	ld a, [$cffa]
	or a
	jp nz, Jump_000_047e

	ld a, $01
	ld [$ca1a], a
	ld a, $01
	ld [$ca19], a
	ld a, $0f
	ld [$ca22], a
	jp Jump_000_0a67


jr_000_0516:
	ld [$cffa], a
	ld a, b
	and $04
	jp nz, Jump_000_0525

	ld [$cffb], a
	jp Jump_000_047e


Jump_000_0525:
	ld a, [$cffb]
	or a
	jp nz, Jump_000_047e

	ld a, [$cffc]
	or a
	jp z, Jump_000_047e

	ld a, $01
	ld [$ca1a], a
	ld a, $01
	ld [$ca19], a
	ld a, $0f
	ld [$ca22], a
	ld a, $01
	ld [$ca2e], a
	jp Jump_000_0a67


Jump_000_054a:
	call Call_000_0866
	di
	call Call_000_0877
	ld bc, $0020
	ld hl, $9c00
	call Call_000_0a87
	ld de, $0e81
	call Call_000_0dfb
	ld de, $0e5d
	call Call_000_0e16
	ld hl, $ca88
	ld de, $9b82
	ld a, e
	ld [hli], a
	ld [hl], d
	call Call_000_13d4
	ld de, $3ef4
	call Call_000_08a1
	ld de, $cae0
	ld hl, $0814
	ld b, $05

jr_000_0580:
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, jr_000_0580

	ld de, $8807
	ld hl, $ff4a
	ld a, d
	ld [hli], a
	ld [hl], e
	ld de, $6030
	ld hl, $ff42
	ld a, d
	ld [hli], a
	ld [hl], e
	ld de, $16b3
	call Call_000_0a3e
	ld de, $17e3
	call Call_000_0a3e
	ld de, $0c19
	call Call_000_0a3e
	ld de, $0d1c
	call Call_000_0a3e
	ld b, $03

jr_000_05b2:
	push bc
	ld de, $1801
	call Call_000_0a3e
	pop bc
	dec b
	jr nz, jr_000_05b2

	xor a
	ld [$ca23], a
	ld [$cf86], a
	ld [$ca54], a
	ld a, $e7
	ldh [rLCDC], a
	ld a, $07
	ldh [rTAC], a
	ld a, $02
	ld [$cf95], a
	ei
	jp Jump_000_06cd


Jump_000_05d8:
	ld a, [$cf9a]
	call $4bd1
	di
	xor a
	ldh [rTAC], a
	ldh [rTMA], a
	ld [$cf9b], a
	ld [$ca18], a
	call Call_000_0866
	ld a, [$ca19]
	cp $08
	jr nz, jr_000_0605

	ld a, $02
	ld [$2100], a
	ld hl, $7950
	ld de, $8000
	ld bc, $0800
	call Call_000_088e

jr_000_0605:
	call Call_000_0877
	ld de, $0e81
	call Call_000_0dfb
	ld de, $0e5d
	call Call_000_0e16
	call Call_000_0877
	ld hl, $ca88
	ld de, $9b82
	ld a, e
	ld [hli], a
	ld [hl], d
	call Call_000_13d4
	ld hl, $ca82
	xor a
	ld [hli], a
	ld [hl], a
	ld hl, $ca28
	ld [hli], a
	ld [hl], a
	ld [$cf9c], a
	ld [$ca20], a
	ld [$ca81], a
	ld [$cf86], a
	ld [$cac5], a
	ld [$ca80], a
	ld [$cfa1], a
	ld [$cad8], a
	ld [$cad0], a
	ld [$ca1d], a
	ld [$ca1e], a
	ld a, [$ca19]
	cp $07
	jr nc, jr_000_067b

	ld a, $30
	ldh [rSCX], a
	ld a, $60
	ldh [rSCY], a
	ld de, $8807
	ld hl, $ff4a
	ld a, d
	ld [hli], a
	ld [hl], e
	ld a, $e4
	ldh [rBGP], a
	ld de, $0d1c
	call Call_000_0a3e
	ld a, $07
	ldh [rTAC], a
	ld a, $e7
	ldh [rLCDC], a
	jr jr_000_06cd

jr_000_067b:
	ld a, $50
	ldh [rSCX], a
	ld a, $60
	ldh [rSCY], a
	ld d, $88
	ld a, [$ca19]
	cp $07
	jr z, jr_000_0691

	call Call_000_0886
	ld d, $68

jr_000_0691:
	ld hl, $ff4a
	ld a, d
	ld [hli], a
	ld a, $07
	ld [hl], a
	ld a, $e4
	ldh [rBGP], a
	ld de, $0d1c
	call Call_000_0a3e
	ld a, [$ca19]
	cp $08
	jr z, jr_000_06b2

	ld de, $2d09
	call Call_000_0a3e
	jr jr_000_06c2

jr_000_06b2:
	xor a
	ld hl, $9c00
	ld b, $1f

jr_000_06b8:
	ld [hli], a
	dec b
	jr nz, jr_000_06b8

	ld de, $2ec9
	call Call_000_0a3e

jr_000_06c2:
	ld a, $07
	ldh [rTAC], a
	ld [$ca81], a
	ld a, $e7
	ldh [rLCDC], a

Jump_000_06cd:
jr_000_06cd:
	ei
	ld b, $00
	ld a, [$ca19]
	cp $07
	jp z, Jump_000_0261

	jr c, jr_000_06db

	inc b

jr_000_06db:
	add a
	ld l, a
	ld h, $00
	ld de, $07f8
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, b
	call $49aa
	ld [$cf9a], a
	ei
	jp Jump_000_0261


	ld hl, $cf97
	ld a, [hl]
	inc [hl]
	cp $20
	jr nc, jr_000_0705

	ld a, $90
	ldh [rBGP], a
	ldh [rOBP0], a
	ldh [rOBP1], a
	jp Jump_000_047e


jr_000_0705:
	cp $30
	jr nc, jr_000_0714

	ld a, $40
	ldh [rBGP], a
	ldh [rOBP0], a
	ldh [rOBP1], a
	jp Jump_000_047e


jr_000_0714:
	cp $40
	jr nc, jr_000_0722

	xor a
	ldh [rBGP], a
	ldh [rOBP0], a
	ldh [rOBP1], a
	jp Jump_000_047e


jr_000_0722:
	ld a, $e4
	ldh [rOBP0], a
	ldh [rOBP1], a
	ld a, $01
	ld [$cf9c], a
	jp Jump_000_0a67


Jump_000_0730:
	ld a, [$cf9a]
	call $4bd1
	di
	xor a
	ldh [rTAC], a
	ldh [rTMA], a
	ld [$ca18], a
	call Call_000_0866
	ld a, $02
	ld [$2100], a
	ld hl, $6230
	ld de, $9000
	ld bc, $0360
	call Call_000_088e
	ld a, $03
	ld [$2100], a
	ld hl, $59c0
	ld de, $d000
	ld bc, $0200
	call Call_000_088e
	ld hl, $5a20
	ld de, $d200
	ld bc, $0090
	call Call_000_088e
	ld a, $01
	ld [$2100], a
	call Call_000_0877
	ld hl, $c000
	ld bc, $0c00
	call Call_000_0a87
	ld hl, $ca88
	ld a, $82
	ld [hli], a
	ld a, $9b
	ld [hl], a
	call Call_000_13d4
	ld de, $2c9b
	call Call_000_08a1
	ld de, $2ca8
	call Call_000_08a1
	ld de, $2cb5
	call Call_000_08a1
	call Call_000_2c79
	ld c, $07
	ld hl, $9a30
	ld de, $cff1
	call Call_000_049c
	ld c, $07
	ld hl, $9a90
	ld de, $cf88
	call Call_000_049c
	ld hl, $9c00
	xor a
	ld c, $14

jr_000_07be:
	ld [hli], a
	dec c
	jr nz, jr_000_07be

	ld a, $50
	ldh [rSCY], a
	ld a, $50
	ldh [rSCX], a
	ld a, $e4
	ldh [rBGP], a
	ldh [rOBP0], a
	ldh [rOBP1], a
	ld de, $2c63
	call Call_000_0a3e
	xor a
	ld [$cf98], a
	ld [$cf86], a
	ld hl, $5541
	call $49aa
	ld [$cf9a], a
	ld a, $07
	ldh [rTAC], a
	ld a, $05
	ldh [rIE], a
	ld a, $c7
	ldh [rLCDC], a
	ei
	jp Jump_000_02a2


	db $10
	ld h, d
	db $10
	ld h, d
	db $10
	ld h, d
	ld h, b
	ld l, e
	dec e
	ld h, l
	rst $08
	ld l, a
	ld hl, sp+$70
	inc bc
	ld d, [hl]
	inc bc
	ld d, [hl]
	ld b, c
	ld d, l
	or b
	ld e, [hl]
	jp nc, $dcb4

	ret c

	cp h
	cp a
	ret c

	cp b
	ret nc

	sub $bc
	cp a

Call_000_081a:
	ld a, $20
	ldh [rP1], a
	ldh a, [rP1]
	ldh a, [rP1]
	cpl
	and $0f
	swap a
	ld b, a
	ld a, $10
	ldh [rP1], a
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	cpl
	and $0f
	or b
	ld c, a
	ld a, [$cf80]
	xor c
	and c
	ld [$cf81], a
	ld a, c
	ld [$cf80], a
	ld a, $30
	ldh [rP1], a
	ret


Call_000_084e:
	ld c, $80
	ld b, $0a
	ld hl, $085c

jr_000_0855:
	ld a, [hli]
	ld [c], a
	inc c
	dec b
	jr nz, jr_000_0855

	ret


	ld a, $c0
	ldh [rDMA], a
	ld a, $28

jr_000_0862:
	dec a
	jr nz, jr_000_0862

	ret


Call_000_0866:
jr_000_0866:
	ldh a, [rLY]
	cp $91
	jr c, jr_000_0866

	cp $96
	jr nc, jr_000_0866

	ldh a, [rLCDC]
	and $7f
	ldh [rLCDC], a
	ret


Call_000_0877:
	ld hl, $9bff
	ld bc, $0400

jr_000_087d:
	ld a, $00
	ld [hld], a
	dec bc
	ld a, b
	or c
	jr nz, jr_000_087d

	ret


Call_000_0886:
	ld hl, $9fff
	ld bc, $0400
	jr jr_000_087d

Call_000_088e:
Jump_000_088e:
jr_000_088e:
	ld a, [hli]
	ld [de], a
	inc de
	dec bc
	ld a, b
	or c
	jr nz, jr_000_088e

	ret


jr_000_0897:
	inc de
	ld h, a
	ld a, [de]

Jump_000_089a:
	ld l, a
	inc de
	ld a, [de]
	inc de
	call Call_000_08a7

Call_000_08a1:
	ld a, [de]
	cp $00
	jr nz, jr_000_0897

	ret


Call_000_08a7:
	push af
	and $3f
	ld b, a
	pop af
	rlca
	rlca
	and $03
	jr z, jr_000_08ba

	dec a
	jr z, jr_000_08c1

	dec a
	jr z, jr_000_08c8

	jr jr_000_08d5

jr_000_08ba:
	ld a, [de]
	ld [hli], a
	inc de
	dec b
	jr nz, jr_000_08ba

	ret


jr_000_08c1:
	ld a, [de]
	inc de

jr_000_08c3:
	ld [hli], a
	dec b
	jr nz, jr_000_08c3

	ret


jr_000_08c8:
	ld a, [de]
	ld [hl], a
	inc de
	ld a, b
	ld bc, $0020
	add hl, bc
	ld b, a
	dec b
	jr nz, jr_000_08c8

	ret


jr_000_08d5:
	ld a, [de]
	ld [hl], a
	ld a, b
	ld bc, $0020
	add hl, bc
	ld b, a
	dec b
	jr nz, jr_000_08d5

	inc de
	ret


Call_000_08e2:
	ld hl, $c781
	ld a, [hli]
	ld c, [hl]
	ld b, a
	ld a, [de]
	ld h, a
	inc de
	ld a, [de]
	ld d, h
	ld e, a
	add $18
	sub c
	jr c, jr_000_0902

	ld a, e
	sub $18
	sub c
	jr nc, jr_000_0917

	ld a, d
	sub b
	jr c, jr_000_08ff

	xor a
	ret


jr_000_08ff:
	ld a, $04
	ret


jr_000_0902:
	ld a, d
	add $18
	sub b
	jr c, jr_000_0911

	ld a, d
	sub $18
	sub b
	jr nc, jr_000_0914

	ld a, $02
	ret


jr_000_0911:
	ld a, $03
	ret


jr_000_0914:
	ld a, $01
	ret


jr_000_0917:
	ld a, d
	add $18
	sub b
	jr c, jr_000_0926

	ld a, d
	sub $18
	sub b
	jr nc, jr_000_0929

	ld a, $06
	ret


jr_000_0926:
	ld a, $05
	ret


jr_000_0929:
	ld a, $07
	ret


Call_000_092c:
	ld hl, $0011
	add hl, bc
	ld a, [hl]
	add a
	ld l, a
	ld h, $00
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a

Call_000_0939:
	ld hl, $000a
	add hl, bc
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hli], a
	ret


Call_000_0947:
	ld a, [$cab5]
	ld hl, $0f19
	call Call_000_0f0f
	xor a
	ld [$caa4], a
	call Call_000_0aa7
	jp c, Jump_000_097b

	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [$ca11]
	ld [hl], a
	push hl
	call Call_000_0faa
	pop hl
	ld de, $0010
	add hl, de
	ld b, $04
	ld de, $cab6

jr_000_0972:
	ld a, [de]
	ld [hli], a
	inc de
	dec b
	jr nz, jr_000_0972

	ld a, b
	dec a
	ret


Jump_000_097b:
	xor a
	ret


Call_000_097d:
	ld a, [bc]
	call Call_000_0b4a
	ld a, $04
	call Call_000_0b61
	call Call_000_0ce4
	ld a, [$ca16]
	add d
	ld d, a
	call Call_000_0b1e
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $000c
	add hl, de
	ld a, [hli]
	ret


Call_000_099d:
	ld a, [bc]
	call Call_000_0b4a
	call Call_000_09b8
	or a
	ret nz

	ld de, $ca60
	ld a, [de]
	or a
	ret nz

	ld bc, $0804
	call Call_000_0a2e
	ld de, $1083
	jp Jump_000_0a3e


Call_000_09b8:
	ld hl, $0007
	add hl, bc
	inc [hl]
	ld a, [hli]
	cp [hl]
	jr z, jr_000_09cb

	ret c

	inc hl
	cp [hl]
	ret nz

	dec hl
	dec hl
	xor a
	ld [hl], a
	dec a
	ret


jr_000_09cb:
	xor a
	ret


Call_000_09cd:
	ld a, [bc]
	call Call_000_0b4a
	ld de, $0006
	add hl, de
	ld de, $ca30
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ld hl, $c788
	call Call_000_0ba4
	ld a, c
	or a
	ret z

	ld a, $01
	ld [$ca20], a
	ret


Call_000_09ec:
	ld a, [bc]
	call Call_000_0b4a
	ld bc, $c786
	ld de, $ca30
	ld a, [bc]
	ld [de], a
	inc de
	inc bc
	ld a, [bc]
	ld [de], a
	ld de, $0008
	add hl, de
	call Call_000_0ba4
	ld a, c
	or a
	ret z

	ld a, $01
	ld [$ca20], a
	ret


Call_000_0a0c:
	ld a, [bc]
	call Call_000_0b4a
	ld de, $000d
	add hl, de
	ld d, [hl]
	ld hl, $0016
	add hl, bc
	ld a, [hl]
	ld [hl], d
	xor d
	or a
	ret z

	ld a, [$cfa0]
	or a
	ret nz

	ld hl, $7311
	ld a, $01
	call $49aa
	ld a, $01
	ret


Call_000_0a2e:
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld a, [hli]
	add b
	ld [de], a
	inc de
	ld a, [hl]
	add c
	ld [de], a
	inc de
	ret


Call_000_0a3e:
Jump_000_0a3e:
	ld b, $00
	ld hl, $c700

jr_000_0a43:
	inc b
	ld a, $1f
	cp b
	ret c

	ld a, [hli]
	ld c, a
	ld a, [hli]
	or c
	jr nz, jr_000_0a43

	dec hl
	ld a, d
	ld [hld], a
	ld [hl], e
	ret


Jump_000_0a53:
	ld a, [$ca10]
	rlca
	ld h, $00
	ld l, a
	ld bc, $c700
	add hl, bc
	ld a, e
	ld [hli], a
	ld [hl], d
	jp Jump_000_047e


Jump_000_0a64:
	call Call_000_0b10

Jump_000_0a67:
	ld a, [$ca10]
	rlca
	ld l, a
	ld h, $00
	ld de, $c700
	add hl, de
	xor a
	ld [hli], a
	ld [hl], a
	call Call_000_0a7b
	jp Jump_000_047e


Call_000_0a7b:
	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld bc, $0020
	jp Jump_000_0a87


Call_000_0a87:
Jump_000_0a87:
jr_000_0a87:
	xor a
	ld [hli], a
	dec bc
	ld a, b
	or c
	jr nz, jr_000_0a87

	ret


Call_000_0a8f:
	ld [$ca11], a
	push de
	push bc
	ld c, a
	swap a
	ld l, a
	ld h, $00
	ld de, $c780
	add hl, de
	ld a, [hli]
	or [hl]
	jp z, Jump_000_0add

	pop bc
	pop de
	scf
	ret


Call_000_0aa7:
	ld hl, $c7c0
	push de
	push bc
	ld c, $04

jr_000_0aae:
	ld a, [hli]
	or [hl]
	jr z, jr_000_0ad9

	ld de, $000f
	add hl, de
	inc c
	ld a, $10
	cp c
	jr nz, jr_000_0aae

	pop bc
	pop de
	scf
	ret


Call_000_0ac0:
	ld hl, $c880
	push de
	push bc
	ld c, $10

jr_000_0ac7:
	ld a, [hli]
	or [hl]
	jr z, jr_000_0ad9

	ld de, $000f
	add hl, de
	inc c
	ld a, $26
	cp c
	jr nz, jr_000_0ac7

	pop bc
	pop de
	scf
	ret


jr_000_0ad9:
	ld a, c
	ld [$ca11], a

Jump_000_0add:
	dec hl
	pop bc
	ld a, [bc]
	inc bc
	ld [hli], a
	pop de
	ld a, d
	ld [hli], a
	ld a, e
	ld [hli], a
	inc hl
	inc hl
	ld a, [$caa4]
	ld [hli], a

Jump_000_0aed:
	call Call_000_0afa
	call Call_000_0afa
	call Call_000_0afa
	ld a, [bc]
	ld [hl], a
	xor a
	ret


Call_000_0afa:
	ld a, [bc]
	add d
	ld [hli], a
	inc bc
	ld a, [bc]
	add e
	ld [hli], a
	inc bc
	ret


Call_000_0b03:
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	inc hl
	inc hl
	ld a, e
	ld [hli], a
	ld [hl], d
	ret


Call_000_0b10:
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld b, $10
	xor a

jr_000_0b19:
	ld [hli], a
	dec b
	jr nz, jr_000_0b19

	ret


Call_000_0b1e:
Jump_000_0b1e:
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	call Call_000_0b31
	inc hl
	inc hl
	inc hl
	call Call_000_0b31
	call Call_000_0b31

Call_000_0b31:
	ld a, d
	add [hl]
	ld [hli], a
	ld a, e
	add [hl]
	ld [hli], a
	ret


Call_000_0b38:
Jump_000_0b38:
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld a, d
	ld [hli], a
	ld a, e
	ld [hli], a
	inc hl
	inc hl
	inc hl
	inc bc
	jp Jump_000_0aed


Call_000_0b4a:
	swap a
	ld l, a
	and $0f
	ld h, a
	ld a, l
	and $f0
	ld l, a
	ld de, $c780
	add hl, de
	ld de, $ca14
	ld a, l
	ld [de], a
	inc de
	ld a, h
	ld [de], a
	ret


Call_000_0b61:
	bit 7, a
	jr z, jr_000_0b72

	ld hl, $0003
	add hl, bc
	cpl
	inc a
	call Call_000_0b99
	cpl
	inc a
	jr jr_000_0b79

jr_000_0b72:
	ld hl, $0004
	add hl, bc
	call Call_000_0b99

jr_000_0b79:
	ld [$ca16], a
	ret


Call_000_0b7d:
	bit 7, a
	jr z, jr_000_0b8e

	ld hl, $0005
	add hl, bc
	cpl
	inc a
	call Call_000_0b99
	cpl
	inc a
	jr jr_000_0b95

jr_000_0b8e:
	ld hl, $0006
	add hl, bc
	call Call_000_0b99

jr_000_0b95:
	ld [$ca17], a
	ret


Call_000_0b99:
	add [hl]
	ld d, a
	and $0f
	ld [hl], a
	swap d
	ld a, d
	and $0f
	ret


Call_000_0ba4:
	ld c, $00
	ld a, [$ca30]
	cp [hl]
	ret c

	inc hl
	inc hl
	cp [hl]
	ret nc

	dec hl
	ld a, [$ca31]
	cp [hl]
	ret c

	inc hl
	inc hl
	cp [hl]
	ret nc

	dec c
	ret


Jump_000_0bbb:
	ld a, d
	call Call_000_0c57
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $0005
	add hl, de
	inc [hl]
	ld a, [$cfa0]
	or a
	jr nz, jr_000_0bed

	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $0012
	add hl, de
	ld a, [hl]
	and $03
	add a
	ld l, a
	ld h, $00
	ld de, $0c11
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, $01
	call $49aa

jr_000_0bed:
	ld de, $1019
	jp Jump_000_0a53


Call_000_0bf3:
	ld a, d
	call Call_000_0b61
	ld a, e
	call Call_000_0b7d
	ld hl, $ca16
	ld a, [hli]
	ld e, [hl]
	ld d, a
	jp Jump_000_0b1e


Call_000_0c04:
	ld a, [$cf9a]
	dec a
	ld l, a
	ld h, $00
	ld de, $cc04
	add hl, de
	ld a, [hl]
	ret


	dec l
	ld [hl], e
	ret c

	ld [hl], e
	nop
	ld [hl], h
	ld c, d
	ld [hl], h
	call Call_000_0c75
	ld hl, $cfa0
	ld a, [hl]
	or a
	jr z, jr_000_0c27

	inc a
	and $3f
	ld [hl], a

jr_000_0c27:
	ld a, [$ca2a]
	or a
	jr z, jr_000_0c33

	ld [$ca69], a
	jp Jump_000_047e


jr_000_0c33:
	ld hl, $ca68
	ld de, $ca20
	ld a, [hl]
	or a
	jr nz, jr_000_0c4b

	dec hl
	ld a, [de]
	or a
	jr z, jr_000_0c46

	ld [hl], a
	jp Jump_000_047e


jr_000_0c46:
	ld a, [hli]
	or a
	jp z, Jump_000_047e

jr_000_0c4b:
	inc [hl]
	ld a, [hli]
	and $7f
	ld [hld], a
	ld [hld], a
	ld [hld], a
	xor a
	ld [de], a
	jp Jump_000_047e


Call_000_0c57:
	ld b, a
	and $0f
	ld hl, $cf8f
	dec hl

jr_000_0c5e:
	dec hl
	dec a
	jr nz, jr_000_0c5e

	swap b
	ld a, b
	and $0f

jr_000_0c67:
	add [hl]
	cp $0a
	jr nc, jr_000_0c6e

	ld [hl], a
	ret


jr_000_0c6e:
	sub $0a
	ld [hld], a
	ld a, $01
	jr jr_000_0c67

Call_000_0c75:
	call Call_000_0c92
	ld hl, $cf8f
	ld a, $0b
	ld [hli], a
	ld [hli], a
	dec a
	ld [hli], a
	ld a, [$cf95]
	ld b, a
	swap a
	and $0f
	ld [hli], a
	ld a, b
	and $0f
	ld [hli], a
	ld a, $0b
	ld [hl], a
	ret


Call_000_0c92:
	ld hl, $cf87
	ld de, $0003
	add hl, de
	ld a, [hl]
	or a
	jr z, jr_000_0ca7

	cp $05
	jr z, jr_000_0ca7

	ld a, $01
	ld [$cf96], a
	ret


jr_000_0ca7:
	ld a, [$cf96]
	or a
	ret z

	call Call_000_0cbe
	xor a
	ld [$cf96], a
	inc a
	ld hl, $5d41
	call $49aa
	ld [$cfa0], a
	ret


Call_000_0cbe:
	ld hl, $cf95
	ld a, [hl]
	cp $99
	ret z

	inc [hl]
	ld a, [hl]
	and $0f
	cp $0a
	ret c

	ld a, [hl]
	and $f0
	add $10
	ld [hl], a
	ret


Call_000_0cd3:
	ld hl, $cf95
	dec [hl]
	ld a, [hl]
	and $0f
	cp $0a
	ret c

	ld a, [hl]
	and $f0
	add $09
	ld [hl], a
	ret


Call_000_0ce4:
	ld hl, $000c
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld a, [bc]
	inc bc
	ld de, $0000
	rlca
	jr nc, jr_000_0cf5

	ld d, $fd

jr_000_0cf5:
	rlca
	jr nc, jr_000_0cfa

	ld d, $03

jr_000_0cfa:
	rlca
	jr nc, jr_000_0cff

	ld e, $fd

jr_000_0cff:
	rlca
	jr nc, jr_000_0d04

	ld e, $03

jr_000_0d04:
	rlca
	jr c, jr_000_0d0b

	ld a, b
	ld [hld], a
	ld [hl], c
	ret


jr_000_0d0b:
	dec hl
	dec hl
	ld a, [hld]
	ld c, [hl]
	ld b, a
	inc bc
	inc bc
	ld a, c
	ld [hli], a
	ld [hl], b
	inc hl
	ld a, [bc]
	ld [hli], a
	inc bc
	ld a, [bc]
	ld [hli], a
	ret


	xor a
	ld hl, $cab2
	ld [hli], a
	ld a, $d8
	ld [hl], a
	ld de, $0d2a
	jp Jump_000_0a53


	ld hl, $cab2
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, $ca82
	ld a, [bc]
	cp [hl]
	jp nz, Jump_000_047e

	inc hl
	inc bc
	ld a, [bc]
	cp [hl]
	jp nz, Jump_000_047e

	inc bc
	ld a, [bc]
	or a
	jp z, Jump_000_0a67

	dec a
	jp z, Jump_000_0de6

	inc a
	push bc
	add a
	ld l, a
	ld h, $00
	ld de, $0eb7
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	call Call_000_0a3e
	pop bc
	ld hl, $cab5
	inc bc
	ld e, $02

jr_000_0d60:
	ld a, [bc]
	ld d, a
	swap a
	and $0f
	ld [hli], a
	ld a, d
	and $0f
	ld [hli], a
	inc bc
	dec e
	jr nz, jr_000_0d60

	ld hl, $cab2
	ld a, c
	ld [hli], a
	ld [hl], b
	ld hl, $cab6
	ld b, [hl]
	ld a, [$ca22]
	and b
	ld [hl], a
	jp Jump_000_047e


	ld a, [$cac1]
	or a
	jp nz, Jump_000_0a67

	ld hl, $ff42
	dec [hl]
	jp Jump_000_047e


	ld a, $01
	ld [$ca81], a
	jp Jump_000_0a67


	xor a
	ld [$ca81], a
	jp Jump_000_0a67


	ld a, $01
	ld [$cac8], a
	jp Jump_000_0a67


	ld a, $01
	ld [$caca], a
	jp Jump_000_0a67


	ld a, $01
	ld [$cac9], a
	xor a
	ld [$cac1], a
	jp Jump_000_0a67


	ld hl, $cfa1
	inc [hl]
	ld hl, $5f23
	xor a
	call $49aa
	ld [$cf9a], a
	jp Jump_000_0a67


	ld hl, $5eb0
	xor a
	call $49aa
	ld [$cf9a], a
	ld a, $01
	ld [$cfa1], a
	jp Jump_000_0a67


	ld a, [$cf9a]
	call $4bd1
	jp Jump_000_0a67


Jump_000_0de6:
	ld a, $01
	ld [$cf9b], a
	ld hl, $ca19
	inc [hl]
	ld hl, $cc40
	ld bc, $0200
	call Call_000_0a87
	jp Jump_000_0a67


Call_000_0dfb:
	ld a, $02
	ld [$2100], a
	ld a, [$ca19]
	add a
	add a
	ld l, a
	ld h, $00
	add hl, de
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $9000
	jp Jump_000_088e


Call_000_0e16:
	ld a, $03
	ld [$2100], a
	ld a, [$ca19]
	add a
	add a
	ld l, a
	ld h, $00
	add hl, de
	push hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $d000
	ld bc, $0200
	call Call_000_088e
	pop hl
	inc hl
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $d200
	ld bc, $0550
	call Call_000_088e
	ld a, [$ca19]
	ld de, $0ea5
	add a
	ld l, a
	ld h, $00
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $d800
	ld bc, $0400
	call Call_000_088e
	ld a, $01
	ld [$2100], a
	ret


	nop
	ld b, b
	or b
	ld b, c
	nop
	ld b, b
	and b
	ld b, d
	nop
	ld b, b
	sub b
	ld b, e
	add b
	ld b, h
	jr nc, @+$47

	add b
	ld b, h
	jr nz, jr_000_0eb7

	ld [hl], b
	ld c, e
	ld d, b
	ld c, l
	ld [hl], b
	ld c, e
	and b
	ld d, d
	ret nc

	ld e, d
	ld d, b
	ld e, e
	ldh a, [$57]
	jr nz, jr_000_0ed9

	ld d, b
	inc bc
	nop
	ld d, b
	ld d, b
	inc bc
	nop
	ld d, b
	ld d, b
	inc bc
	nop
	ld d, b
	ld b, b
	ld b, $00
	ld d, h
	ld b, b
	ld b, $00
	ld d, h
	or b
	ld b, $40
	ld e, d
	or b
	ld b, $40
	ld e, d
	db $10
	dec b
	ld [hl], b
	ld l, l
	and b
	ld bc, $6590
	nop
	ld h, b
	jr nz, @+$62

	jr nz, jr_000_0f0f

	jr nz, @+$6a

	jr nz, @+$6e

	jr nz, jr_000_0f21

	jr nz, jr_000_0f27

	jr nz, jr_000_0f2d

	ld b, b
	ld a, b

jr_000_0eb7:
	ld h, a
	ld a, [bc]
	and $0d
	adc a
	dec c
	sbc [hl]
	dec c
	ld a, [c]
	add hl, hl
	db $db
	add hl, de
	ld b, a
	ld a, [de]
	ld [hl], a
	ld a, [de]
	ld c, b
	dec de
	ld e, $1c
	inc [hl]
	dec e
	ld a, [de]
	ld e, $00
	ld b, b
	rst $00
	jr nz, @-$1e

	ld b, c
	or l
	ld b, d
	rst $08
	ld b, e

jr_000_0ed9:
	and $44
	and [hl]
	dec c
	xor [hl]
	dec c
	ld l, $20
	sub a
	dec c
	rst $30
	jr nz, jr_000_0f08

	inc hl
	ld d, a
	inc h
	rst $38
	inc h
	add hl, bc
	dec l
	ld h, a
	ld a, [bc]
	rrc l
	db $dd
	dec c
	cp d
	dec c
	ret


	ld l, $18
	dec de
	ld a, b
	dec de
	xor b

jr_000_0efc:
	dec de
	xor c
	inc e
	and [hl]
	rra
	add c
	dec c
	inc hl
	ld hl, $214f
	ld a, a

jr_000_0f08:
	ld hl, $21b2
	ld b, l

jr_000_0f0c:
	ld [hli], a
	db $fd
	ld b, b

Call_000_0f0f:
jr_000_0f0f:
	ld e, a
	ld d, $00
	add hl, de
	ld a, [$ca29]
	add [hl]
	ld e, a
	ret


	ld [$2018], sp
	jr z, jr_000_0f4e

	jr c, jr_000_0f68

	ld d, b

jr_000_0f21:
	ld e, b
	ld l, b
	ld [hl], b
	ld a, b
	add b
	adc b

jr_000_0f27:
	sbc b
	and b
	ld c, b
	ld d, b
	ld e, b
	ld h, b

jr_000_0f2d:
	ld c, b
	ld e, b

Call_000_0f2f:
	add a
	ld e, a
	ld d, $00
	add hl, de
	ld a, [hli]
	ld d, a
	ld a, [$ca29]
	add [hl]
	ld e, a
	ret


	db $10
	ld d, b
	jr nz, jr_000_0f90

	db $10
	ld b, b
	db $10
	ld h, b
	nop
	ld d, b
	jr nz, jr_000_0f90

	jr @+$3a

	jr jr_000_0fa4

	jr nc, jr_000_0f9e

jr_000_0f4e:
	jr c, jr_000_0f98

	jr z, jr_000_0f8a

	jr z, @+$5a

	jr c, jr_000_0f6e

	jr c, jr_000_0fc0

	ld h, b
	ld b, b
	ld h, b
	ld e, b
	ld e, b
	jr nc, @+$5a

	ld l, b
	ld d, b
	jr jr_000_0fb3

	add b
	ld c, b
	ld [$9048], sp

jr_000_0f68:
	jr nc, jr_000_0f72

	jr nc, jr_000_0efc

	jr z, @+$1a

jr_000_0f6e:
	jr z, @-$7e

	jr nz, jr_000_0fa2

jr_000_0f72:
	jr nz, jr_000_0fdc

	jr jr_000_0fb6

	jr @+$5a

	jr @+$52

	jr z, jr_000_0f98

	ld b, b
	ld d, h
	jr z, jr_000_0f0c

	inc e
	ld [$101c], sp
	inc [hl]
	jr nc, jr_000_0fb3

	ld b, b
	inc l
	ld c, b

jr_000_0f8a:
	inc l
	ld h, b
	inc l
	ld l, b
	inc [hl]
	ld a, b

jr_000_0f90:
	inc e
	sbc b
	inc e
	and b
	inc [hl]
	jr nc, jr_000_0fc3

	ld b, b

jr_000_0f98:
	inc l
	ld c, b
	inc l
	ld h, b
	inc l
	ld l, b

jr_000_0f9e:
	inc [hl]
	ld a, b
	jr jr_000_0ff2

jr_000_0fa2:
	jr c, @+$2e

jr_000_0fa4:
	jr c, @+$7e

	adc b
	inc e
	adc b
	adc h

Call_000_0faa:
	ld de, $0008
	add hl, de
	push hl
	ld a, [$cab6]
	add a

jr_000_0fb3:
	ld l, a
	ld h, $00

jr_000_0fb6:
	ld de, $0fd5
	add hl, de
	pop de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a

jr_000_0fc0:
	ld a, [$ca2e]

jr_000_0fc3:
	or a
	ret z

	ldh a, [rDIV]
	and $3f
	or $0f
	ld [de], a
	dec de
	ldh a, [rDIV]
	and $07
	or $01
	ld [de], a
	ret


	ldh [$f0], a
	inc e
	ld b, b
	inc e
	jr c, jr_000_0ff4

jr_000_0fdc:
	jr c, @+$1a

	jr nc, @+$18

	jr nc, jr_000_0ff8

	inc l
	inc d
	inc l
	inc d
	jr z, @+$14

	jr z, @+$12

	inc h
	inc c
	inc h
	ld a, [bc]
	jr nz, jr_000_0ff8

	inc e
	inc b

jr_000_0ff2:
	jr jr_000_0ff8

jr_000_0ff4:
	db $10
	ld bc, $1072

jr_000_0ff8:
	ld hl, $ca34
	ld a, [hli]
	ld e, [hl]
	ld d, a
	ld a, $01
	ld [$caa4], a
	call Call_000_0aa7
	jp c, Jump_000_0a67

	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [$ca11]
	ld [hl], a
	ld de, $1019
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld a, $12
	ld [hl], a
	ld de, $1077
	call Call_000_0b03
	ld a, [bc]
	call Call_000_0b4a
	ld a, $08
	call Call_000_0b61
	ld d, a
	ld e, $00
	call Call_000_0b1e
	ld de, $103b
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc bc
	ld a, [bc]
	xor $01
	ld [bc], a
	jr nz, jr_000_105e

	inc bc
	ld a, [bc]
	add a
	ld e, a
	ld d, $00
	ld hl, $106a
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	call Call_000_0b03
	ld a, [bc]
	inc a
	and $03
	ld [bc], a
	jp z, Jump_000_0a64

jr_000_105e:
	ld de, $1064
	jp Jump_000_0a53


	ld de, $1026
	jp Jump_000_0a53


	ld [hl], a
	db $10
	ld a, e
	db $10
	ld a, a
	db $10
	ld [hl], a
	db $10
	ld [de], a
	nop
	nop
	nop
	nop
	ld [hli], a
	nop
	inc h
	nop
	ld h, $00
	jr z, jr_000_107f

jr_000_107f:
	ld a, [hli]
	nop
	inc l
	nop
	ld bc, $1244
	ld hl, $ca60
	ld a, [hli]
	ld e, [hl]
	ld d, a
	call Call_000_0ac0
	jp c, Jump_000_1138

	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [$ca11]
	ld [hl], a
	ld de, $10a2
	jp Jump_000_0a53


	push bc
	ld de, $ca60
	call Call_000_08e2
	pop bc
	ld hl, $000e
	add hl, bc
	ld [hl], a
	xor a
	ld hl, $ca60
	ld [hli], a
	ld [hli], a
	ld de, $10bb
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $133e
	ld a, [$ca2f]
	or a
	jr nz, jr_000_10de

	ld a, [$ca2c]
	ld l, a
	ld h, $00
	ld de, $1256
	add hl, de
	ld a, [hl]
	add a
	ld l, a
	ld h, $00
	ld de, $125e
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a

Jump_000_10de:
jr_000_10de:
	ld hl, $000e
	add hl, bc
	ld a, [hl]
	add a
	ld l, a
	ld h, $00
	add hl, de
	ld a, [hli]
	ld e, [hl]
	ld hl, $0008
	add hl, bc
	ld [hli], a
	ld [hl], e
	ld de, $124b
	call Call_000_0b03
	ld a, [$ca10]
	or a
	jr z, jr_000_1102

	ld de, $1108
	jp Jump_000_0a53


jr_000_1102:
	ld de, $1128
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld hl, $0008
	add hl, bc
	ld a, [hli]
	ld e, [hl]
	call Call_000_0b61
	ld a, e
	call Call_000_0b7d
	ld hl, $ca16
	ld a, [hli]
	ld e, [hl]
	ld d, a
	call Call_000_0b1e
	ld de, $1128
	jp Jump_000_0a53


	call Call_000_1841
	or a
	jp nz, Jump_000_0a64

	call Call_000_09cd
	ld de, $1108
	jp Jump_000_0a53


Jump_000_1138:
	ld hl, $ca63
	xor a
	ld [hli], a
	ld [hl], a
	jp Jump_000_0a67


	ld bc, $124d
	ld hl, $ca60
	ld a, [hli]
	ld e, [hl]
	ld d, a
	call Call_000_0ac0
	jp c, Jump_000_1138

	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [$ca11]
	ld [hl], a
	xor a
	ld hl, $ca60
	ld [hli], a
	ld [hli], a
	ld de, $1166
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $1254
	call Call_000_0b03
	ld de, $1176
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld d, $05
	ld e, $00
	call Call_000_0b1e
	ld de, $1187
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld a, [hl]
	cp $98
	jp nc, Jump_000_0a64

	ld de, $1198
	jp Jump_000_0a53


	call Call_000_09cd
	ld de, $1176
	jp Jump_000_0a53


	ld hl, $ca6a
	inc [hl]
	ld a, [hl]
	and $01
	jp nz, Jump_000_047e

	ld [hl], a
	ld de, $11cd
	call Call_000_0a3e
	ld a, [$ca65]
	ld e, a
	ld d, $00
	ld hl, $126e
	add hl, de
	ld b, [hl]
	ld hl, $ca6b
	inc [hl]
	ld a, [hl]
	cp b
	jp nz, Jump_000_047e

	xor a
	ld [$ca6b], a
	jp Jump_000_0a67


	ld bc, $1244
	ld hl, $ca63
	ld a, [hli]
	ld e, [hl]
	ld d, a
	call Call_000_0ac0
	jp c, Jump_000_1138

	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [$ca11]
	ld [hl], a
	ld de, $11ec
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld hl, $000e
	add hl, bc
	push hl
	ld bc, $ca65
	ld a, [bc]
	ld h, $00
	ld l, a
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, $127e
	add hl, de
	inc bc
	ld a, [bc]
	ld e, a
	ld d, $00
	add hl, de
	pop de
	ld a, [hl]
	ld [de], a
	ld a, [bc]
	inc a
	and $0f
	ld [bc], a
	ld de, $1217
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld a, [$ca2c]
	ld l, a
	ld h, $00
	ld de, $1256
	add hl, de
	ld a, [hl]
	add a
	ld l, a
	ld h, $00
	ld de, $125e
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	jp Jump_000_10de


	ld de, $1364
	ld a, [$ca2f]
	or a
	jp nz, Jump_000_10de

	ld de, $134e
	jp Jump_000_10de


	ld de, $0408
	ld b, $02
	ld a, [bc]
	ld b, $0a
	nop
	ld de, $0408
	nop
	nop
	db $10
	ld [$0010], sp
	nop
	ld bc, $0201
	ld [bc], a
	inc bc
	inc bc
	inc bc
	sbc $12
	xor $12
	cp $12
	ld c, $13
	ld e, $13
	ld e, $13
	ld e, $13
	ld e, $13
	ld bc, $0202
	inc bc
	inc bc
	inc b
	dec b
	dec b
	dec b
	dec b
	dec b
	dec b
	dec b
	dec b
	dec b
	dec b
	inc b
	inc b
	inc b
	inc b
	inc b
	inc b
	inc b
	inc b
	ld [bc], a
	ld b, $02
	ld b, $02
	ld b, $02
	ld b, $00
	inc b
	nop
	inc b
	nop
	inc b
	nop
	inc b
	inc bc
	inc b
	dec b
	inc bc
	inc b
	dec b
	dec b
	rlca
	ld bc, $0503
	rlca
	ld bc, $0503
	rlca
	nop
	ld [bc], a
	inc b
	ld b, $00
	ld [bc], a
	inc b
	ld b, $02
	inc bc
	inc b
	dec b
	ld b, $04
	inc b
	inc b
	ld b, $07
	nop
	ld bc, $0302
	inc b
	dec b
	nop
	ld bc, $0905
	ld a, [bc]
	inc b
	inc b
	inc b
	ld [bc], a
	inc b
	dec b
	ld b, $08
	inc b
	inc b
	inc b
	ld bc, $0503
	rlca
	add hl, bc
	inc b
	inc b
	inc b
	inc bc
	inc b
	dec b
	ld b, $07
	inc b
	inc b
	inc b
	call c, $e700
	add hl, de
	nop
	inc h
	add hl, de
	add hl, de
	inc h
	nop
	add hl, de
	rst $20
	nop
	call c, $e7e7
	ret c

	nop
	db $e4
	inc e

jr_000_12f2:
	nop
	jr z, jr_000_1311

	inc e
	jr z, jr_000_12f8

jr_000_12f8:
	inc e
	db $e4
	nop
	ret c

	db $e4
	db $e4
	ret nc

	nop
	sbc $22
	nop
	jr nc, jr_000_1327

	ld [hli], a
	jr nc, jr_000_1308

jr_000_1308:
	ld [hli], a
	sbc $00
	ret nc

	sbc $de
	ret z

	nop
	ret c

jr_000_1311:
	jr z, jr_000_1313

jr_000_1313:
	jr c, jr_000_133d

	jr z, jr_000_134f

	nop
	jr z, jr_000_12f2

	nop
	ret z

	ret c

	ret c

	ret nz

	nop
	db $d3
	dec l
	nop
	ld b, b
	dec l
	dec l
	ld b, b

jr_000_1327:
	nop
	dec l
	db $d3
	nop
	ret nz

	db $d3
	db $d3
	or b
	nop
	rst $00
	add hl, sp
	nop
	ld d, b
	add hl, sp
	add hl, sp
	ld d, b
	nop
	add hl, sp
	rst $00
	nop
	or b
	rst $00

jr_000_133d:
	rst $00
	and b
	nop
	cp h
	ld b, h
	nop
	ld h, b
	ld b, h
	ld b, h
	ld h, b
	nop
	ld b, h
	cp h
	nop
	and b
	cp h
	cp h
	nop

jr_000_134f:
	ld b, b
	dec l
	dec l
	dec sp
	jr @+$40

	inc c
	ccf
	ld b, $40
	nop
	ccf
	ld a, [$f43e]
	dec sp
	add sp, $2d
	db $d3
	nop
	ret nz

	nop
	ld h, b
	ld b, h
	ld b, h
	ld e, c
	dec h
	ld e, l
	inc de
	ld e, a
	add hl, bc
	ld h, b
	nop
	ld e, a
	rst $30
	ld e, l
	db $ed
	ld e, c
	db $db
	ld b, h
	cp h
	nop
	and b

Call_000_137a:
	ld hl, $ca80
	inc [hl]
	ld a, [hl]
	cp $06
	ret nz

	xor a
	ld [hl], a
	ld hl, $ca82
	inc [hl]
	ld a, [hli]
	or a
	jr nz, jr_000_138d

	inc [hl]

jr_000_138d:
	ld a, $01
	ld [$ca87], a
	ld a, [$ca81]
	or a
	ret nz

	ld hl, $ff42
	dec [hl]
	ld de, $ca84
	ld a, [de]
	cp $ff
	ret z

	inc de
	inc de
	ld a, [hl]
	and $0f
	jr nz, jr_000_13ba

	ld [de], a
	ld hl, $ca8a
	ld bc, $ca90
	ld a, [hli]
	and $f0
	or $02
	ld [bc], a
	inc bc
	ld a, [hli]
	ld [bc], a
	ret


jr_000_13ba:
	ld a, [de]
	or a
	ret nz

	ld a, [$ca87]
	or a
	ret z

	call Call_000_141e
	ld hl, $ca85
	inc [hl]
	ld a, [hli]
	cp $0e
	ret nz

	inc a
	ld [hld], a
	xor a
	ld [hl], a
	jp Jump_000_1472


Call_000_13d4:
	ld de, $ca88
	ld hl, $ca8a
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hl], a
	ld hl, $ca8e
	xor a
	ld [hli], a
	ld a, $d2
	ld [hl], a
	ld b, $0b

jr_000_13e9:
	ld hl, $ca8a
	ld de, $ca90
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld c, $0e

jr_000_13f6:
	push bc
	call Call_000_141e
	call Call_000_1447
	pop bc
	dec c
	jr nz, jr_000_13f6

	push bc
	call Call_000_1472
	pop bc
	dec b
	jr nz, jr_000_13e9

	ld hl, $ca8a
	ld de, $ca90
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld a, $01
	ld [$ca87], a
	xor a
	ld [$ca85], a
	ret


Call_000_141e:
	ld hl, $ca8e
	ld a, [hli]
	ld e, a
	ld a, [hld]
	ld d, a
	ld bc, $ca84
	ld a, [de]
	ld [bc], a
	cp $ff
	ret z

	inc de
	ld a, e
	ld [hli], a
	ld [hl], d
	ld a, [bc]
	ld h, $00
	ld l, a
	ld de, $d000
	add hl, hl
	add hl, hl
	add hl, de
	ld d, h
	ld a, l
	ld hl, $ca8c
	ld [hli], a
	ld [hl], d
	xor a
	ld [$ca87], a
	ret


Call_000_1447:
	ld a, [$ca87]
	or a
	ret nz

	ld hl, $ca8c
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld hl, $ca90
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hli], a
	inc de
	ld bc, $001e
	add hl, bc
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hli], a
	ld hl, $ca90
	inc [hl]
	inc [hl]
	ld a, $01
	ld [$ca87], a
	ret


Call_000_1472:
Jump_000_1472:
	ld hl, $ca88
	ld d, h
	ld e, l
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld bc, $ffc0
	add hl, bc
	ld a, l
	ld b, a
	ld [de], a
	ld a, h
	cp $97
	jr nz, jr_000_1488

	ld a, $9b

jr_000_1488:
	ld hl, $ca8b
	inc de
	ld [de], a
	ld [hld], a
	ld [hl], b
	ret


Jump_000_1490:
	ld a, [$ca28]
	or a
	ret z

	ld c, a
	ld hl, $c790
	ld b, $27

jr_000_149b:
	ld a, [hli]
	or a
	jr z, jr_000_14b4

	inc hl
	ld a, [hl]
	add c
	ld [hli], a
	ld de, $0004
	add hl, de
	ld a, [hl]
	add c
	ld [hli], a
	inc hl
	ld a, [hl]
	add c
	ld [hli], a
	inc hl
	ld a, [hl]
	add c
	ld [hli], a
	jr jr_000_14b8

jr_000_14b4:
	ld de, $000b
	add hl, de

jr_000_14b8:
	ld de, $0004
	add hl, de
	dec b
	jr nz, jr_000_149b

	ld a, b
	ld [$ca28], a
	ret


Call_000_14c4:
	ld a, [$ca7b]
	swap a
	ld l, a
	and $0f
	ld h, a
	ld a, l
	and $f0
	ld l, a
	ld de, $c780
	add hl, de
	xor a
	ld [$ca70], a
	ld [$ca71], a

Jump_000_14dc:
	push hl
	ld a, [hl]
	or a
	jp z, Jump_000_154c

	ld de, $ca72
	ld bc, $0005
	call Call_000_088e
	ld hl, $ca75
	ld a, [hli]
	or [hl]
	jp z, Jump_000_154c

	ld de, $ca77
	ld hl, $ca73
	ld bc, $0004
	call Call_000_088e
	ld a, [$ca72]
	ld c, a
	and $0f
	ld b, a
	swap c
	ld a, c
	and $0f
	ld c, a
	ld a, [$ca70]
	ld e, a
	ld d, $c0

Jump_000_1512:
	push bc
	ld hl, $ca77
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld c, a
	ld b, [hl]
	ld a, [bc]
	ld [de], a
	inc bc
	inc de
	ld a, [bc]
	ld [de], a
	inc bc
	inc de
	ld a, b
	ld [hld], a
	ld [hl], c
	ld hl, $ca78
	ld a, [hl]
	add $08
	ld [hld], a
	pop bc
	dec b
	jp nz, Jump_000_1512

	ld a, [hl]
	add $10
	ld [hli], a
	ld a, [$ca74]
	ld [hl], a
	ld a, [$ca72]
	and $0f
	ld b, a
	dec c
	jp nz, Jump_000_1512

	ld a, e
	ld [$ca70], a

Jump_000_154c:
	ld hl, $ca71
	ld a, [hl]
	inc a
	ld [hl], a
	cp $28
	jr z, jr_000_1567

	pop hl
	ld de, $0010
	add hl, de
	ld a, h
	cp $ca
	jp nz, Jump_000_14dc

	ld hl, $c780
	jp Jump_000_14dc


jr_000_1567:
	pop hl
	ld a, [$ca70]
	ld l, a
	ld h, $c0

jr_000_156e:
	xor a
	ld [hli], a
	ld a, l
	cp $f0
	jr c, jr_000_156e

	ld hl, $ca7b
	ld a, [hl]
	inc a
	ld [hl], a
	cp $27
	jr nz, jr_000_1581

	xor a
	ld [hl], a

jr_000_1581:
	ld a, $01
	ld [$ca18], a
	ret


Call_000_1587:
	ld a, [hl]
	and $03
	ret z

	ld a, [hli]
	cp $04
	jr c, jr_000_15a4

	ld a, [$ca17]
	cpl
	inc a
	add [hl]
	ld b, a
	and $03
	ld [hli], a
	srl b
	srl b
	xor a
	sub b
	ld b, a
	inc hl
	jr jr_000_15b1

jr_000_15a4:
	inc hl
	ld a, [$ca17]
	add [hl]
	ld b, a
	and $03
	ld [hli], a
	srl b
	srl b

jr_000_15b1:
	ldh a, [rSCX]
	add b
	ldh [rSCX], a
	xor a
	sub b
	ld [hli], a
	add [hl]
	ld [hl], a
	jp Jump_000_1490


Call_000_15be:
	ld hl, $c781
	ld a, [hli]
	cp $15
	jr nc, jr_000_15ca

	res 6, b
	jr jr_000_15d0

jr_000_15ca:
	cp $85
	jr c, jr_000_15d0

	res 7, b

jr_000_15d0:
	ld a, [hl]
	cp $94
	jr c, jr_000_15d9

	res 4, b
	jr jr_000_15df

jr_000_15d9:
	cp $0d
	jr nc, jr_000_15df

	res 5, b

jr_000_15df:
	ld hl, $ca23
	ld a, [hl]
	and $0f
	or b
	ld [hl], a
	ret


Jump_000_15e8:
	ld hl, $739b
	ld a, $01
	call $49aa
	xor a
	ld [$ca24], a
	ld de, $15fa
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld b, [hl]
	ld a, $c0
	ld [hli], a
	ld c, [hl]
	ld hl, $ca34
	ld [hl], b
	inc hl
	ld [hl], c
	ld de, $0ff5
	call Call_000_0a3e
	ld de, $1616
	jp Jump_000_0a53


	ld hl, $000e
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $3f
	jp nz, Jump_000_047e

	xor a
	ld [hl], a
	ld a, [bc]
	call Call_000_0b4a
	inc hl
	inc hl
	ld e, [hl]
	ld d, $a0
	ld bc, $1694
	call Call_000_0b38
	ld de, $169b
	call Call_000_0b03
	ld a, [$ca21]
	ld l, a
	ld h, $00
	ld de, $168c
	add hl, de
	ld a, [hl]
	ld [$ca21], a
	ld [$ca2c], a
	ld a, [$cf95]
	or a
	jr z, jr_000_1658

	call Call_000_0cd3
	ld de, $165e
	jp Jump_000_0a53


jr_000_1658:
	ld de, $2c49
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld a, [hl]
	cp $60
	jp c, Jump_000_1672

	ld de, $ff00
	call Call_000_0b1e
	jp Jump_000_047e


Jump_000_1672:
	xor a
	ld [$ca20], a
	ld de, $16ce
	jp Jump_000_0a53


	rst $38
	ld [bc], a
	ld b, $ff
	nop
	ld bc, $ff07
	inc b
	inc bc
	dec b
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	nop
	nop
	nop
	ld bc, $0301
	inc bc
	inc bc
	ld [de], a
	ld [$0208], sp
	ld [bc], a
	ld c, $0e
	ld [bc], a
	nop
	ld [bc], a
	jr nz, jr_000_16a0

jr_000_16a0:
	nop
	nop
	nop
	ret nc

	nop
	sbc $22
	nop
	jr nc, @+$24

	ld [hli], a
	jr nc, jr_000_16ad

jr_000_16ad:
	ld [hli], a
	sbc $00
	ret nc

	sbc $de
	ld bc, $1694
	ld de, $603a
	xor a
	call Call_000_0a8f
	jp c, Jump_000_0a67

	ld hl, $ca12
	ld a, [hli]
	ld d, [hl]
	ld e, a
	xor a
	ld [de], a
	ld de, $293a
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld a, [$cf80]
	ld [$ca23], a
	and $f0
	jp z, Jump_000_1717

	push bc
	ld b, a
	call Call_000_15be
	swap a
	and $0f
	ld l, a
	ld h, $00
	ld de, $167c
	add hl, de
	ld a, [hl]
	ld [$ca25], a
	pop bc
	cp $ff
	jr z, jr_000_1717

	add a
	ld e, a
	ld d, $00
	ld hl, $16a3
	add hl, de
	ld a, [hli]
	push hl
	call Call_000_0b61
	pop hl
	ld a, [hl]
	call Call_000_0b7d
	ld hl, $ca25
	call Call_000_1587
	ld hl, $ca16
	ld a, [hli]
	ld e, [hl]
	ld d, a
	call Call_000_0b1e

Jump_000_1717:
jr_000_1717:
	ld de, $171d
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld a, [$cac5]
	or a
	jr nz, jr_000_1774

	ld a, [$ca69]
	or a
	jr nz, jr_000_1734

	ld a, [$ca20]
	or a
	jp nz, Jump_000_15e8

jr_000_1734:
	ld bc, $ca23
	ld a, [bc]
	and $08
	ld [$cf9d], a
	ld hl, $ca24
	ld a, [bc]
	and $03
	jr z, jr_000_174b

	ld a, [hl]
	or a
	jr nz, jr_000_174b

	inc a
	ld [hl], a

jr_000_174b:
	ld a, [$ca69]
	or a
	jr z, jr_000_1768

	ld hl, $cfa3
	ld a, [hl]
	xor $01
	ld [hl], a
	jr nz, jr_000_1768

	ld a, [$cf9d]
	or a
	jr nz, jr_000_1768

	ld de, $169f
	call Call_000_0b03
	jr jr_000_176e

jr_000_1768:
	ld de, $169b
	call Call_000_0b03

jr_000_176e:
	ld de, $16ce
	jp Jump_000_0a53


jr_000_1774:
	ld de, $169b
	call Call_000_0b03
	ld de, $1780
	jp Jump_000_0a53


	ld a, [$ca19]
	cp $06
	jr z, jr_000_1792

	ld hl, $600e
	ld a, $01
	call $49aa
	ld [$cf9a], a

jr_000_1792:
	ld de, $1798
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $0000
	inc hl
	ld a, [hli]
	cp $80
	jr z, jr_000_17ab

	ld d, $08
	jr c, jr_000_17ab

	ld d, $f8

jr_000_17ab:
	ld a, [hl]
	cp $28
	jr z, jr_000_17b6

	ld e, $08
	jr c, jr_000_17b6

	ld e, $f8

jr_000_17b6:
	ld a, d
	or e
	jr z, jr_000_17c0

	call Call_000_0bf3
	jp Jump_000_047e


jr_000_17c0:
	ld a, $01
	ld [$cac7], a
	ld de, $17cb
	jp Jump_000_0a53


	ld a, [$cacb]
	or a
	jp z, Jump_000_047e

	ld a, [bc]
	ld hl, $000f
	add hl, bc
	xor a
	ld [hli], a
	ld [hl], a
	ld [$ca69], a
	ld de, $28f0
	jp Jump_000_0a53


	ld bc, $ca24
	ld a, [bc]
	or a
	jp z, Jump_000_047e

	cp $01
	jr z, jr_000_17f6

	inc a
	and $07
	ld [bc], a
	jp Jump_000_047e


jr_000_17f6:
	inc a
	ld [bc], a
	ld a, [$ca21]
	ld de, $18f9
	jp Jump_000_0a53


	ld bc, $18cb
	ld de, $0000
	ld a, [$ca54]
	inc a
	ld [$ca54], a
	call Call_000_0a8f
	jp c, Jump_000_0a67

	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [$ca11]
	ld [hl], a
	ld de, $1930
	jp Jump_000_0a53


Call_000_1824:
	ld a, [$ca21]
	or a
	jr z, jr_000_1835

	ld a, [hli]
	ld d, a
	ld e, [hl]
	ld a, $12
	ld [bc], a
	ld bc, $18d2
	jr jr_000_183e

jr_000_1835:
	ld a, [hli]
	ld d, a
	ld a, [hl]
	add $06
	ld e, a
	ld bc, $18cb

jr_000_183e:
	jp Jump_000_0b38


Call_000_1841:
	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld a, [hli]
	cp $90
	jr nc, jr_000_1854

	ld a, [hl]
	add $20
	cp $d0
	jr nc, jr_000_1854

	xor a
	ret


jr_000_1854:
	ld a, $ff
	ret


Call_000_1857:
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld bc, $0006
	add hl, bc
	ld bc, $ca30
	ld a, [hli]
	ld [bc], a
	inc bc
	ld a, [hl]
	ld [bc], a
	jr jr_000_1895

Call_000_186b:
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld bc, $0006
	add hl, bc
	ld bc, $ca30
	ld a, [hli]
	ld [bc], a
	inc bc
	ld a, [hl]
	sub $04
	ld [bc], a
	jr jr_000_1895

Call_000_1881:
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld bc, $0006
	add hl, bc
	ld bc, $ca30
	ld a, [hli]
	ld [bc], a
	inc bc
	ld a, [hl]
	add $04
	ld [bc], a

jr_000_1895:
	ld hl, $c7c0
	ld b, $0c

Jump_000_189a:
	push hl
	ld a, [hl]
	or a
	jp z, Jump_000_18c0

	ld de, $0005
	add hl, de
	ld a, [hli]
	or a
	jr nz, jr_000_18c0

	inc hl
	inc hl
	push hl
	call Call_000_0ba4
	pop hl
	ld a, c
	or a
	jr z, jr_000_18c0

	ld de, $0005
	add hl, de
	ld a, [$ca33]
	add [hl]
	ld [hl], a
	pop hl
	ld a, $01
	ret


Jump_000_18c0:
jr_000_18c0:
	pop hl
	ld de, $0010
	add hl, de
	dec b
	jp nz, Jump_000_189a

	ld a, b
	ret


	ld de, $0408
	nop

jr_000_18cf:
	ld bc, $0710
	ld [de], a
	ld [$0008], sp
	cp $10
	ld [de], a

jr_000_18d9:
	ld bc, $0202
	inc bc
	inc bc
	inc b

jr_000_18df:
	db $eb
	jr jr_000_18cf

	jr @-$11

	jr @-$0d

	jr jr_000_18d9

	jr jr_000_18df

	jr @+$0e

	nop
	inc c
	nop
	inc c
	jr nz, jr_000_1900

	nop
	ld c, $20
	inc e
	nop
	ld e, $00
	ld bc, $ca51
	ld a, [bc]
	or a
	jr z, jr_000_190c

jr_000_1900:
	inc bc
	ld a, [bc]
	or a
	jr z, jr_000_190c

	inc bc
	ld a, [bc]
	or a
	jr z, jr_000_190c

	jr jr_000_1918

jr_000_190c:
	ld a, [$ca21]
	inc a
	ld [bc], a
	ld a, [$cfa0]
	or a
	call z, Call_000_191e

jr_000_1918:
	ld de, $17e3
	jp Jump_000_0a53


Call_000_191e:
	ld hl, $72d1
	ld a, [$ca21]
	cp $05
	jr nz, jr_000_192b

	ld hl, $72ef

jr_000_192b:
	ld a, $01
	jp $49aa


	ld a, [bc]
	ld l, a
	ld h, $00
	ld de, $ca50
	add hl, de
	ld a, [hl]
	or a
	jp z, Jump_000_047e

	ld de, $1943
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld b, h
	ld c, l
	ld hl, $c781
	call Call_000_1824
	ld a, [$ca21]
	add a
	ld l, a
	ld h, $00
	ld de, $18df
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	call Call_000_0b03
	ld de, $1966
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld a, [hli]
	cp $e0
	jr nc, jr_000_1984

	ld a, [hl]
	add $20
	cp $d0
	jr nc, jr_000_1984

	ld d, $f8
	ld e, $00
	call Call_000_0b1e
	ld de, $198a
	jp Jump_000_0a53


jr_000_1984:
	ld de, $19c1
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld a, [$ca21]
	ld l, a
	ld h, $00
	ld de, $18d9
	add hl, de
	ld a, [hl]
	ld [$ca33], a
	ld a, [$ca21]
	or a
	jr z, jr_000_19af

	call Call_000_186b
	or a
	jr nz, jr_000_19b5

	call Call_000_1881
	jr z, jr_000_19bb

	jr jr_000_19b5

jr_000_19af:
	call Call_000_1857
	or a
	jr z, jr_000_19bb

jr_000_19b5:
	ld de, $19c1
	jp Jump_000_0a53


jr_000_19bb:
	ld de, $1966
	jp Jump_000_0a53


	ld a, [bc]
	ld l, a
	ld h, $00
	ld de, $ca50
	add hl, de
	xor a
	ld [hl], a
	ld a, [bc]
	call Call_000_0b4a
	ld a, $11
	ld [hl], a
	inc hl
	xor a
	ld [hl], a
	ld de, $1930
	jp Jump_000_0a53


	ld bc, $1a3b
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $19eb
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $1a37
	call Call_000_092c
	ld de, $1a43
	jp Jump_000_19fb


Jump_000_19fb:
	call Call_000_0b03
	ld de, $1a0f
	ld a, [$ca10]
	and $01
	jp nz, Jump_000_0a53

	ld de, $1a2e
	jp Jump_000_0a53


	call Call_000_1841
	or a
	jp nz, Jump_000_0a64

	call Call_000_097d
	ld d, $22
	cp [hl]
	jp c, Jump_000_0bbb

	ld de, $1a25
	jp Jump_000_0a53


	call Call_000_099d
	ld de, $1a2e
	jp Jump_000_0a53


	call Call_000_09cd
	ld de, $1a0f
	jp Jump_000_0a53


	ld sp, $2935
	dec [hl]
	ld [de], a
	ld [$0008], sp
	cp $10
	ld [de], a
	nop
	ld l, $00
	ld l, $20
	ld bc, $1a6b
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $1a57
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $1a67
	call Call_000_092c
	ld de, $1a73
	jp Jump_000_19fb


	ld c, a
	dec [hl]
	ld h, c
	dec [hl]
	ld [de], a
	ld [$0008], sp
	cp $10
	ld [de], a
	nop
	jr nc, jr_000_1a75

jr_000_1a75:
	jr nc, jr_000_1a97

	ld bc, $1b00
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $1a87
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $1af4
	call Call_000_092c
	ld de, $1b08
	call Call_000_0b03

jr_000_1a97:
	ld a, [$ca10]
	and $01
	jr z, jr_000_1aa4

	ld de, $1acf
	jp Jump_000_0a53


jr_000_1aa4:
	ld de, $1aaa
	jp Jump_000_0a53


	call Call_000_097d
	ld d, $22
	cp [hl]
	jp c, Jump_000_0bbb

	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld a, [hl]
	cp $90
	jp nc, Jump_000_0a64

	ld de, $1ac6
	jp Jump_000_0a53


	call Call_000_099d
	ld de, $1acf
	jp Jump_000_0a53


	call Call_000_09cd
	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld bc, $0014
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $03
	add a
	ld e, a
	ld d, $00
	ld hl, $1af8
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	call Call_000_0b03
	ld de, $1aaa
	jp Jump_000_0a53


	ld [hl], e
	dec [hl]
	ld a, a
	dec [hl]
	ld [$101b], sp
	dec de
	inc c
	dec de
	inc d
	dec de
	ld [de], a
	ld [$0008], sp
	cp $10
	ld [de], a
	nop
	ld [hld], a
	nop
	ld [hld], a
	jr nz, @+$36

	nop
	inc [hl]
	jr nz, jr_000_1b47

	ld h, b
	ld [hl], $00
	ld [hl], $20
	ld [hl], $40
	ld bc, $1b3c
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $1b28
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $1b38
	call Call_000_092c
	ld de, $1b44
	jp Jump_000_19fb


	adc e
	dec [hl]
	sub l
	dec [hl]
	ld [de], a
	ld [$0008], sp
	cp $10
	ld [de], a
	ld bc, $0042
	ld b, d

jr_000_1b47:
	jr nz, jr_000_1b4a

	ld l, h

jr_000_1b4a:
	dec de
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $1b58
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $1b68
	call Call_000_092c
	ld de, $1b74
	jp Jump_000_19fb


	sbc a
	dec [hl]
	jp $1235


	ld [$0008], sp
	cp $10
	ld [de], a
	ld bc, $0038
	jr c, jr_000_1b98

	ld bc, $1b9c
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $1b88
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $1b98
	call Call_000_092c
	ld de, $1ba4
	jp Jump_000_19fb


jr_000_1b98:
	rst $20
	dec [hl]
	jp hl


	dec [hl]
	ld [de], a
	ld [$0008], sp
	cp $10
	ld [de], a
	ld bc, $004a
	ld c, d
	jr nz, jr_000_1baa

	ld [de], a

jr_000_1baa:
	inc e
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $1bb8
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld hl, $c782
	ld e, [hl]
	ld d, $00
	ld bc, $1c12
	call Call_000_0b38
	ld de, $1c1a
	call Call_000_0b03
	ld a, [$ca10]
	and $01
	jr z, jr_000_1bdb

	ld de, $1c04
	jp Jump_000_0a53


jr_000_1bdb:
	ld de, $1be1
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld a, [hli]
	cp $90
	jp nc, Jump_000_0a64

	ld de, $000a
	add hl, de
	ld d, $53
	ld a, [hli]
	cp [hl]
	jp c, Jump_000_0bbb

	ld d, $06
	ld e, $00
	call Call_000_0b1e
	ld de, $1c04
	jp Jump_000_0a53


	push bc
	call Call_000_099d
	pop bc
	call Call_000_09cd
	ld de, $1be1
	jp Jump_000_0a53


	ld [de], a
	ld [$0008], sp
	cp $10
	ld [de], a
	ld [de], a
	ld b, h
	nop
	ld b, h
	jr nz, jr_000_1c20

	sbc l

jr_000_1c20:
	inc e
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $1c2e
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld hl, $0010
	add hl, bc
	ld a, $20
	ld [hl], a
	ld de, $1ca5
	call Call_000_0b03
	ld a, [$ca10]
	and $01
	jr z, jr_000_1c4c

	ld de, $1c94
	jp Jump_000_0a53


jr_000_1c4c:
	ld de, $1c52
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld a, [hl]
	ld hl, $0010
	add hl, bc
	cp $90
	jp nc, Jump_000_0a64

	cp $30
	jr c, jr_000_1c67

	inc [hl]
	inc [hl]

jr_000_1c67:
	ld a, [hl]
	call Call_000_0b61
	ld a, [$ca16]
	ld d, a
	ld e, $00
	call Call_000_0b1e
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $000c
	add hl, de
	ld d, $22
	ld a, [hli]
	cp [hl]
	jp c, Jump_000_0bbb

	ld de, $1c8b
	jp Jump_000_0a53


	call Call_000_099d
	ld de, $1c94
	jp Jump_000_0a53


	call Call_000_09cd
	ld de, $1c52
	jp Jump_000_0a53


	ld [de], a
	ld [$0008], sp
	cp $14
	ld [de], a
	nop
	ld a, [hld]
	nop
	ld a, [hld]
	jr nz, @+$03

	jr z, jr_000_1cc9

	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $1cb9
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $1d24
	call Call_000_092c
	ld de, $1d30
	call Call_000_0b03

jr_000_1cc9:
	ld a, [$ca10]
	and $01
	jr z, jr_000_1cd6

	ld de, $1d1b
	jp Jump_000_0a53


Jump_000_1cd6:
jr_000_1cd6:
	ld de, $1cdc
	jp Jump_000_0a53


	call Call_000_097d
	ld d, $32
	cp [hl]
	jp c, Jump_000_0bbb

	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld a, [hl]
	cp $e0
	jp nc, Jump_000_0a64

	ld de, $1cf8
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	call Call_000_09b8
	or a
	jr nz, jr_000_1d15

	ld de, $ca60
	ld a, [de]
	or a
	jr nz, jr_000_1d15

	ld bc, $0806
	call Call_000_0a2e
	ld de, $1141
	call Call_000_0a3e

jr_000_1d15:
	ld de, $1d1b
	jp Jump_000_0a53


	call Call_000_09cd
	ld de, $1cdc
	jp Jump_000_0a53


	db $fd
	dec [hl]
	inc de
	ld [hl], $12
	ld [$0008], sp
	cp $10
	ld [de], a
	ld [bc], a
	ld c, b
	nop
	ld c, b
	jr nz, @+$03

	ld c, $1e
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $1d44
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $1e16
	call Call_000_0b03
	ld a, [$ca10]
	and $01
	jr z, jr_000_1d5b

	ld de, $1df1
	jp Jump_000_0a53


jr_000_1d5b:
	ld de, $1d61
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $000c
	add hl, de
	ld d, $32
	ld a, [hli]
	cp [hl]
	jp c, Jump_000_0bbb

	ld a, $28
	call Call_000_0b61
	ld a, [$ca16]
	ld d, a
	ld e, $00
	call Call_000_0b1e
	ld de, $c781
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld a, [de]
	sub $04
	cp [hl]
	jr nc, jr_000_1d9f

	inc de
	inc hl
	ld a, [de]
	cp [hl]
	jr c, jr_000_1d95

	xor a

jr_000_1d95:
	ld hl, $000f
	add hl, bc
	inc [hl]
	ld hl, $0011
	add hl, bc
	ld [hl], a

jr_000_1d9f:
	ld de, $1dd3
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $000c
	add hl, de
	ld d, $22
	ld a, [hli]
	cp [hl]
	jp c, Jump_000_0bbb

	ld d, $60
	ld hl, $0011
	add hl, bc
	ld a, [hl]
	or a
	jr z, jr_000_1dc0

	ld d, $a0

jr_000_1dc0:
	ld a, d
	call Call_000_0b7d
	ld a, [$ca17]
	ld e, a
	ld d, $00
	call Call_000_0b1e
	ld de, $1dd3
	jp Jump_000_0a53


	call Call_000_099d
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld a, [hli]
	cp $a0
	jp nc, Jump_000_0a64

	ld a, [hl]
	add $20
	cp $d0
	jp nc, Jump_000_0a64

	ld de, $1df1
	jp Jump_000_0a53


	call Call_000_09cd
	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $000f
	add hl, de
	ld a, [hl]
	or a
	jr z, jr_000_1e08

	ld de, $1da5
	jp Jump_000_0a53


jr_000_1e08:
	ld de, $1d61
	jp Jump_000_0a53


	ld [de], a
	ld [$0008], sp
	cp $10
	ld [de], a
	nop
	inc a
	nop
	inc a
	jr nz, jr_000_1e1c

	adc [hl]

jr_000_1e1c:
	rra
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $1e2a
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $1f96
	call Call_000_0b03
	ld de, $1e3a
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld d, $02
	ld e, $00
	call Call_000_0b1e
	ld de, $1e4b
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld a, [hli]
	cp $a0
	jp nc, Jump_000_0a64

	ld de, $000b
	add hl, de
	ld a, [hl]
	or a
	jr nz, jr_000_1e64

	ld de, $1e6a
	jp Jump_000_0a53


jr_000_1e64:
	ld de, $1e73
	jp Jump_000_0a53


	call Call_000_09cd
	ld de, $1e3a
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld de, $ca34
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ld de, $0003
	add hl, de
	inc [hl]
	ld de, $0ff5
	call Call_000_0a3e
	ld a, $22
	call Call_000_0c57
	ld hl, $732d
	ld a, $01
	call $49aa
	ld de, $1f9a
	call Call_000_0b03
	ld de, $1ea4
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld hl, $000e
	add hl, bc
	xor a
	ld [hli], a
	ld [hl], a
	ld de, $1f9a
	call Call_000_0b03
	ld de, $1ebb
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld hl, $c786
	ld de, $ca30
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $0008
	add hl, de
	call Call_000_0ba4
	ld a, c
	or a
	jr nz, jr_000_1ee1

	ld de, $1ee7
	jp Jump_000_0a53


jr_000_1ee1:
	ld de, $1f43
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld a, [hl]
	cp $a0
	jp nc, Jump_000_0a64

	ld hl, $000e
	add hl, bc
	ld a, [hli]
	or a
	jr nz, jr_000_1f08

	inc [hl]
	ld a, [hl]
	and $03
	jr nz, jr_000_1f08

	dec hl
	inc [hl]
	ld de, $1f9e
	call Call_000_0b03

jr_000_1f08:
	ld de, $1f0e
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld a, $08
	call Call_000_0b61
	ld a, [$ca16]
	ld d, a
	ld e, $00
	call Call_000_0b1e
	ld hl, $001e
	add hl, bc
	ld a, [hl]
	inc a
	and $0f
	ld [hl], a
	jr z, jr_000_1f37

	cp $08
	jr nz, jr_000_1f3d

	ld de, $1fa2
	call Call_000_0b03
	jr jr_000_1f3d

jr_000_1f37:
	ld de, $1f9e
	call Call_000_0b03

jr_000_1f3d:
	ld de, $1ebb
	jp Jump_000_0a53


	ld a, $22
	call Call_000_0c57
	ld hl, $5e5b
	ld a, $01
	call $49aa
	ld [$cfa0], a
	ld hl, $ca12
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld a, [bc]
	call Call_000_0b4a
	ld hl, $0013
	add hl, bc
	ld bc, $ca21
	ld a, [bc]
	cp $05
	jr z, jr_000_1f71

	inc a
	ld [bc], a
	ld [$ca2c], a
	jp Jump_000_0a64


jr_000_1f71:
	ld a, $82
	call Call_000_0c57
	jp Jump_000_0a64


	ld a, [bc]
	call Call_000_0b4a
	ld a, $06
	call Call_000_0b61
	ld a, [$ca16]
	ld d, a
	ld e, $00
	call Call_000_0b1e
	jp Jump_000_047e


	ld [de], a
	ld [$0008], sp
	cp $10
	ld [de], a
	nop
	ld a, $00
	ld a, $20
	nop
	nop
	nop
	nop
	inc b
	nop
	ld b, $00
	ld d, $00
	jr jr_000_1fa6

jr_000_1fa6:
	ld bc, $2022
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $1fb6
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $201e
	call Call_000_092c
	ld de, $202a
	call Call_000_0b03
	ld a, [$ca10]
	and $01
	jr z, jr_000_1fd3

	ld de, $2015
	jp Jump_000_0a53


jr_000_1fd3:
	ld de, $1fd9
	jp Jump_000_0a53


	call Call_000_097d
	ld d, $52
	cp [hl]
	jp c, Jump_000_0bbb

	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld a, [hl]
	cp $e0
	jp nc, Jump_000_0a64

	ld de, $1ff5
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	call Call_000_09b8
	or a
	jr nz, jr_000_200f

jr_000_1fff:
	ld de, $ca60
	ld a, [de]
	or a
	jr nz, jr_000_200f

	ld bc, $0800
	call Call_000_0a2e
	call $2288

jr_000_200f:
	ld de, $2015
	jp Jump_000_0a53


	call Call_000_09cd
	ld de, $1fd9
	jp Jump_000_0a53


	add hl, hl
	ld [hl], $3f
	ld [hl], $12
	ld [$0008], sp
	cp $10
	ld [de], a
	ld bc, $0046
	ld b, [hl]
	jr nz, jr_000_2030

	cp e

jr_000_2030:
	jr nz, jr_000_1fff

	ld b, a
	add hl, bc
	or a
	jp z, Jump_000_0a67

	ld de, $203e
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $20c3
	call Call_000_0b03
	ld a, [$ca10]
	and $01
	jr z, jr_000_2055

	ld de, $209f
	jp Jump_000_0a53


jr_000_2055:
	ld de, $205b
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld a, [$ca81]
	or a
	jr nz, jr_000_206f

	ld a, $08
	call Call_000_0b61
	ld a, [$ca16]
	jr jr_000_2070

jr_000_206f:
	xor a

jr_000_2070:
	ld d, a
	ld e, $00
	call Call_000_0b1e
	ld de, $207c
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	call Call_000_09b8
	or a
	jr nz, jr_000_2099

	ld de, $ca60
	ld a, [de]
	or a
	jr nz, jr_000_2099

	ld bc, $0804
	call Call_000_0a2e
	ld de, $1083
	call Call_000_0a3e

jr_000_2099:
	ld de, $209f
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld a, [hli]
	cp $90
	jp nc, Jump_000_0a64

	ld de, $000a
	add hl, de
	ld d, $13
	ld a, [hli]
	cp [hl]
	jp c, Jump_000_0bbb

	ld de, $205b
	jp Jump_000_0a53


	ld [de], a
	ld [$0008], sp
	cp $10
	ld [de], a
	jr jr_000_2114

	nop
	ld d, b
	jr nz, jr_000_20c9

	db $eb

jr_000_20c9:
	jr nz, @-$31

	ld b, a
	add hl, bc
	or a
	jp z, Jump_000_0a67

	ld de, $20d7
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $20e7
	call Call_000_092c
	ld de, $20f3
	jp Jump_000_19fb


	ld d, l
	ld [hl], $69
	ld [hl], $12
	ld [$0008], sp
	cp $10
	ld [de], a
	ld bc, $0052
	ld d, d
	jr nz, jr_000_20f9

	rla

jr_000_20f9:
	ld hl, $47cd
	add hl, bc
	or a
	jp z, Jump_000_0a67

	ld de, $2107
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $367d
	call Call_000_0939
	ld de, $211f

jr_000_2114:
	jp Jump_000_19fb


	ld [de], a
	ld [$0008], sp
	cp $10
	ld [de], a
	ld bc, $0054
	ld d, h
	jr nz, jr_000_2125

	ld b, e

jr_000_2125:
	ld hl, $47cd
	add hl, bc
	or a
	jp z, Jump_000_0a67

	ld de, $2133
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $3687
	call Call_000_0939
	ld de, $214b
	jp Jump_000_19fb


	ld [de], a
	ld [$0008], sp
	cp $10
	ld [de], a
	ld bc, $0040
	ld b, b
	jr nz, jr_000_2151

	ld [hl], e

jr_000_2151:
	ld hl, $47cd
	add hl, bc
	or a
	jp z, Jump_000_0a67

	ld de, $215f
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $216f
	call Call_000_092c
	ld de, $217b
	jp Jump_000_19fb


	and l
	ld [hl], $bd
	ld [hl], $12
	ld [$0008], sp
	cp $10
	ld [de], a
	ld bc, $004c
	ld c, h
	jr nz, jr_000_2181

	and d

jr_000_2181:
	ld hl, $47cd
	add hl, bc
	or a
	jp z, Jump_000_0a67

	ld de, $218f
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $36d5
	call Call_000_0939
	ld de, $21aa
	call Call_000_0b03
	jp Jump_000_1cd6


	ld [hli], a
	db $10
	ld [$fe00], sp
	jr nz, @+$14

	inc b
	ld c, [hl]
	nop
	ld c, [hl]
	jr nz, jr_000_2211

	nop
	ld h, d
	jr nz, jr_000_21b4

	add hl, sp

jr_000_21b4:
	ld [hli], a
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $21c2
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $2235
	call Call_000_092c
	ld de, $2241
	call Call_000_0b03
	ld a, [$ca10]
	and $01
	jr z, jr_000_21df

	ld de, $222c
	jp Jump_000_0a53


jr_000_21df:
	ld de, $21e5
	jp Jump_000_0a53


	call Call_000_097d
	ld d, $32
	cp [hl]
	jp c, Jump_000_0bbb

	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld a, [hl]
	cp $90
	jp nc, Jump_000_0a64

	ld de, $2201
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	call Call_000_09b8
	or a
	jr nz, jr_000_2226

	ld a, [$ca6b]
	or a
	jr nz, jr_000_2226

jr_000_2211:
	ld de, $ca63
	ld bc, $0804
	call Call_000_0a2e
	ld a, $03
	ld [de], a
	inc de
	xor a
	ld [de], a
	ld de, $11a1
	call Call_000_0a3e

jr_000_2226:
	ld de, $222c
	jp Jump_000_0a53


	call Call_000_09cd
	ld de, $21e5
	jp Jump_000_0a53


	db $ed
	ld [hl], $fd
	ld [hl], $12
	ld [$0008], sp
	cp $10
	ld [de], a
	ld [bc], a
	ld d, [hl]
	nop
	ld d, [hl]
	jr nz, jr_000_2247

	ld a, h

jr_000_2247:
	ld [hli], a
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $2255
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $2278
	call Call_000_092c
	ld de, $2284
	call Call_000_0b03
	ld a, [$ca10]
	and $01
	jr z, jr_000_2272

	ld de, $1d1b
	jp Jump_000_0a53


jr_000_2272:
	ld de, $1cdc
	jp Jump_000_0a53


	dec c
	scf
	dec h
	scf
	ld [de], a
	ld [$0008], sp
	cp $10
	ld [de], a
	ld [bc], a
	ld e, b
	nop
	ld e, b
	jr nz, @+$13

	adc a
	ld [hli], a
	call Call_000_0a3e
	ret


	ld bc, $2316
	ld hl, $ca60
	ld a, [hli]
	ld e, [hl]
	ld d, a
	xor a
	ld [$caa4], a
	call Call_000_0aa7
	jp c, Jump_000_0a67

	ld hl, $ca12
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld a, [$ca11]
	ld [de], a
	xor a
	ld hl, $ca60
	ld [hli], a
	ld [hli], a
	ld de, $22b8
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $231e
	call Call_000_0b03
	ld a, [$ca10]
	and $01
	jr z, jr_000_22cf

	ld de, $230d
	jp Jump_000_0a53


jr_000_22cf:
	ld de, $22d5

jr_000_22d2:
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	push hl
	ld d, $08
	ld e, $00
	call Call_000_0b1e
	pop hl
	ld de, $000c
	add hl, de
	ld d, $52
	ld a, [hli]
	cp [hl]
	jp c, Jump_000_0bbb

	ld de, $22f3
	jp Jump_000_0a53


	call Call_000_1841
	or a
	jp nz, Jump_000_0a64

	ld de, $2300
	jp Jump_000_0a53


	call Call_000_099d
	or a
	jp z, Jump_000_0a64

	ld de, $230d
	jp Jump_000_0a53


	call Call_000_09cd
	ld de, $22d5
	jp Jump_000_0a53


	ld [de], a
	ld [$0008], sp
	nop
	db $10
	db $10
	ld [bc], a
	ld [de], a
	nop
	ld [de], a
	jr nz, jr_000_22d2

	ld hl, $cac0
	ld b, $10

jr_000_2328:
	ld [hli], a
	dec b
	jr nz, jr_000_2328

	ld de, $2352
	call Call_000_0a3e
	ld b, $02

jr_000_2334:
	push bc
	ld de, $235e
	call Call_000_0a3e
	pop bc
	dec b
	jr nz, jr_000_2334

	ld b, $02

jr_000_2341:
	push bc
	ld de, $236a
	call Call_000_0a3e
	pop bc
	dec b
	jr nz, jr_000_2341

	ld de, $2700
	jp Jump_000_0a53


	ld bc, $2431
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	jr jr_000_2374

	ld bc, $2439
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	jr jr_000_2374

	ld bc, $2441
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

jr_000_2374:
	call $4690
	ld de, $237d
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld hl, $0011
	add hl, bc
	ld a, [hl]
	push af
	ld hl, $0f4e
	call Call_000_0f2f
	pop af
	ld bc, $2431
	or a
	jr z, jr_000_239e

	ld bc, $2439
	cp $03
	jr c, jr_000_239e

	ld bc, $2441

jr_000_239e:
	call Call_000_0b38
	ld de, $23a7
	jp Jump_000_0a53


	ld a, [$caca]
	or a
	jp z, Jump_000_047e

	ld a, [bc]
	call Call_000_0b4a
	ld de, $000d
	add hl, de
	xor a
	ld [hl], a
	ld hl, $0011
	add hl, bc
	ld a, [hl]
	or a
	jr nz, jr_000_23c6

	ld de, $23cc
	jp Jump_000_0a53


jr_000_23c6:
	ld de, $46ad
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $000c
	add hl, de
	ld a, [hli]
	cp [hl]
	jr c, jr_000_23e4

	ld de, $0000
	call Call_000_0b1e
	ld de, $23fd
	jp Jump_000_0a53


Jump_000_23e4:
jr_000_23e4:
	ld a, $01
	ld [$cac1], a
	ld [$ca69], a
	ld de, $46d7
	call Call_000_0a3e
	ld a, $14
	call Call_000_0c57
	ld de, $2415
	jp Jump_000_0a53


	call Call_000_09ec
	ld de, $2406
	jp Jump_000_0a53


	call Call_000_0a0c
	or a
	jr z, jr_000_240f

	ld [$ca1d], a

jr_000_240f:
	ld de, $23cc
	jp Jump_000_0a53


	ld hl, $0018
	add hl, bc
	ld a, [hl]
	inc [hl]
	and $07
	jp nz, Jump_000_047e

	call $46a2
	cp $07
	jp z, $46ea

	ld hl, $2449
	call $465d
	jp Jump_000_047e


	ld [de], a
	ld [$fe08], sp
	cp $12
	inc d
	ld h, b

jr_000_2439:
	ld [hld], a
	jr @+$0a

	nop
	nop
	jr nc, jr_000_2450

	ldh a, [rNR14]
	ld [$0010], sp
	nop
	db $10
	jr nz, jr_000_2439

	nop
	nop
	db $10
	db $10
	db $10
	ldh a, [$f0]

jr_000_2450:
	db $10
	ldh a, [$f0]
	nop
	jr nz, jr_000_2456

jr_000_2456:
	ldh [$af], a
	ld hl, $cac0
	ld b, $10

jr_000_245d:
	ld [hli], a
	dec b
	jr nz, jr_000_245d

	ld de, $2473
	call Call_000_0a3e
	ld de, $2700
	call Call_000_0a3e
	ld de, $27ad
	jp Jump_000_0a53


	ld bc, $24f7
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	call $4690
	ld de, $2486
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	xor a
	ld hl, $0f78
	call Call_000_0f2f
	ld bc, $24f7
	call Call_000_0b38
	ld de, $249d
	jp Jump_000_0a53


	ld a, [$caca]
	or a
	jp z, Jump_000_047e

	ld a, [bc]
	call Call_000_0b4a
	ld de, $000d
	add hl, de
	xor a
	ld [hl], a
	ld de, $24b4
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $000c
	add hl, de
	ld a, [hli]
	cp [hl]
	jp c, Jump_000_23e4

	ld de, $0000
	call Call_000_0b1e
	ld a, $05
	ld [$ca2c], a
	ld de, $24d2
	jp Jump_000_0a53


	call Call_000_09ec
	ld de, $24db
	jp Jump_000_0a53


	call Call_000_0a0c
	or a
	jr z, jr_000_24e4

	ld [$ca1d], a

jr_000_24e4:
	ld hl, $c781
	ld a, [hl]
	cp $34
	jr nc, jr_000_24f1

	ld a, $01
	ld [$ca20], a

jr_000_24f1:
	ld de, $24b4
	jp Jump_000_0a53


	ld [de], a
	ld [$0008], sp
	nop
	db $10
	db $10
	ld [hl], b
	xor a
	ld hl, $cac0
	ld b, $10

jr_000_2505:
	ld [hli], a
	dec b
	jr nz, jr_000_2505

	ld [$cf99], a
	ld de, $251b
	call Call_000_0a3e
	ld de, $281c
	call Call_000_0a3e
	jp Jump_000_0a67


	ld bc, $25c9
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	call $4690
	ld de, $252e
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	xor a
	ld hl, $0fa0
	call Call_000_0f2f
	ld bc, $25c9
	call Call_000_0b38
	ld de, $2545
	jp Jump_000_0a53


	ld a, [$caca]
	or a
	jp z, Jump_000_047e

	ld a, [bc]
	call Call_000_0b4a
	ld de, $000d
	add hl, de
	xor a
	ld [hl], a
	ld de, $255c
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $000c
	add hl, de
	ld a, [hli]
	cp [hl]
	jr c, jr_000_2574

	ld de, $0000
	call Call_000_0b1e
	ld de, $2590
	jp Jump_000_0a53


jr_000_2574:
	ld a, $01
	ld [$cac1], a
	ld [$ca69], a
	ld de, $46d7
	call Call_000_0a3e
	ld a, $24
	call Call_000_0c57
	call Call_000_0cbe
	ld de, $2415
	jp Jump_000_0a53


	push bc
	call Call_000_09ec
	pop bc
	call Call_000_0a0c
	or a
	jr z, jr_000_259e

	ld [$ca1d], a

jr_000_259e:
	ld de, $25a4
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	call Call_000_09b8
	or a
	jr nz, jr_000_25c3

	ld de, $ca63
	ld bc, $0804
	call Call_000_0a2e
	ld a, $06
	ld [de], a
	inc de
	xor a
	ld [de], a
	ld de, $11a1
	call Call_000_0a3e

jr_000_25c3:
	ld de, $255c
	jp Jump_000_0a53


	ld [de], a
	ld [$0008], sp
	nop
	db $10
	db $10
	add b
	inc hl
	db $10
	inc c
	nop
	nop
	jr nz, jr_000_25f0

	ldh [$fa], a
	pop bc
	jp z, $c2b7

	ld h, a
	ld a, [bc]
	ld a, [bc]
	ld hl, $0004
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $0f
	jp nz, Jump_000_047e

	ld [hl], a
	ld de, $25f3

jr_000_25f0:
	jp Jump_000_0a53


	ld a, [$cf99]
	call Call_000_0b4a
	inc hl
	inc hl
	ld a, [hl]
	add $10
	ld b, a
	ld de, $c782
	ld a, [de]
	add $10
	cp b
	jr c, jr_000_262a

	ld a, [de]
	sub $10
	cp b
	jr nc, jr_000_262a

	ld c, $18
	ld a, [de]
	add $04
	cp b
	jr nc, jr_000_2618

	ld c, $00

jr_000_2618:
	ld b, $10
	ld de, $ca60
	ld a, [de]
	or a
	jr nz, jr_000_262a

	call Call_000_0a2e
	ld de, $1141
	call Call_000_0a3e

jr_000_262a:
	ld de, $25d9
	jp Jump_000_0a53


	ld a, [$cac1]
	or a
	jp nz, Jump_000_0a67

	ld hl, $0002
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $0f
	ld [hl], a
	jp nz, Jump_000_047e

	ld de, $264c
	call Call_000_0a3e
	jp Jump_000_047e


	ld bc, $26f4
	xor a
	ld d, a
	ld e, a
	ld [$caa4], a
	call Call_000_0aa7
	jp c, Jump_000_0a67

	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [$ca11]
	ld [hl], a
	ld de, $266b
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld hl, $0004
	add hl, bc
	ld a, [$cace]
	ld [hl], a
	inc a
	and $03
	ld [$cace], a
	ld a, [hli]
	ld b, h
	ld c, l
	add a
	ld l, a
	ld h, $00
	ld de, $26ec
	add hl, de
	ld a, [hli]
	ld [bc], a
	inc bc
	ld a, [hl]
	ld [bc], a
	ld hl, $ca63
	ld a, [hli]
	ld e, [hl]
	ld d, a
	ld bc, $26f4
	call Call_000_0b38
	ld de, $26fc
	call Call_000_0b03
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $000d
	add hl, de
	xor a
	ld [hl], a
	ld de, $26b1
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld hl, $0005
	add hl, bc
	ld a, [hli]
	ld e, [hl]
	ld d, a
	call Call_000_0b1e
	ld de, $26c5
	jp Jump_000_0a53


	call Call_000_1841
	or a
	jp nz, Jump_000_0a64

	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $000c
	add hl, de
	ld d, $12
	ld a, [hli]
	cp [hl]
	jp c, Jump_000_0bbb

	ld de, $26e3
	jp Jump_000_0a53


	call Call_000_09cd
	ld de, $26b1
	jp Jump_000_0a53


	db $fc
	db $fc
	inc b
	db $fc
	inc b
	inc b
	db $fc
	inc b
	ld [de], a
	ld [$0008], sp
	nop
	db $10
	db $10

jr_000_26fb:
	ld bc, $007a
	ld a, d
	jr nz, jr_000_26fb

	jp z, $b7ca

	jp z, Jump_000_047e

	ld hl, $0016
	add hl, bc
	xor a
	ld [hl], a
	ld de, $2713
	jp Jump_000_0a53


	ld hl, $0016
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $07
	jr z, jr_000_2723

	ld de, $275c
	jp Jump_000_0a53


jr_000_2723:
	xor a
	ld b, a
	ld a, [$ca19]
	cp $05
	jr z, jr_000_272e

	ld b, $03

jr_000_272e:
	ld a, b
	ld [hl], a
	ld de, $2736
	jp Jump_000_0a53


	ld de, $ca60
	ld a, [de]
	or a
	jr nz, jr_000_2756

	ld de, $278d
	ld bc, $0f58
	ld a, [$ca19]
	cp $05
	jr nz, jr_000_274d

	ld bc, $0f80

jr_000_274d:
	call Call_000_2769
	ld de, $1083
	call Call_000_0a3e

jr_000_2756:
	ld de, $275c
	jp Jump_000_0a53


	ld a, [$cac1]
	or a
	jp nz, Jump_000_0a67

	ld de, $2713
	jp Jump_000_0a53


Call_000_2769:
	ld hl, $cf99
	ld a, [hl]
	and $1f
	inc [hl]
	ld l, a
	ld h, $00
	add hl, de
	ld a, [hl]
	and $0f
	ld h, b
	ld l, c
	call Call_000_0f2f
	ld hl, $ca60
	ld a, d
	ld [hli], a
	ld [hl], e
	inc hl
	ld a, [$cacc]
	ld [hl], a
	xor $01
	ld [$cacc], a
	ret


	dec b
	ld b, $03
	inc c
	ld a, [bc]
	ld [bc], a
	rrca
	rlca
	inc c
	inc b
	nop
	ld [bc], a
	ld [$0e0d], sp
	ld [bc], a
	inc bc
	ld [bc], a
	dec b
	ld bc, $0c09
	ld a, [bc]
	inc b
	dec bc
	rrca
	ld bc, $0009
	dec bc
	ld b, $0f
	ld a, [$caca]
	or a
	jp z, Jump_000_047e

	ld hl, $0016
	add hl, bc
	xor a
	ld [hl], a
	ld [$cfa4], a
	ld de, $27c3
	jp Jump_000_0a53


	ld hl, $0016
	add hl, bc
	inc [hl]
	ld a, [hl]
	cp $0d
	jr z, jr_000_27d3

	ld de, $280b
	jp Jump_000_0a53


jr_000_27d3:
	xor a
	ld [hl], a
	ld de, $27db
	jp Jump_000_0a53


	ld de, $ca60
	ld a, [de]
	or a
	jr nz, jr_000_2805

	ld hl, $cfa4
	ld a, [hl]
	and $03
	inc [hl]
	ld de, $2818
	ld l, a
	ld h, $00
	add hl, de
	ld a, [hl]
	and $03
	ld hl, $0f7a
	call Call_000_0f2f
	ld hl, $ca60
	ld a, d
	ld [hli], a
	ld [hl], e
	ld de, $1141
	call Call_000_0a3e

jr_000_2805:
	ld de, $280b
	jp Jump_000_0a53


	ld a, [$cac1]
	or a
	jp nz, Jump_000_0a67

	ld de, $27c3
	jp Jump_000_0a53


	ld bc, $0102
	nop
	ld a, [$caca]
	or a
	jp z, Jump_000_047e

	ld hl, $0016
	add hl, bc
	xor a
	ld [hl], a
	ld [$cf99], a
	ld de, $2832
	jp Jump_000_0a53


	ld hl, $0016
	add hl, bc
	ld a, [hl]
	inc a
	and $0f
	ld [hl], a
	jr z, jr_000_2843

	ld de, $2865
	jp Jump_000_0a53


jr_000_2843:
	ld de, $2849
	jp Jump_000_0a53


	ld de, $ca60
	ld a, [de]
	or a
	jr nz, jr_000_285f

	ld de, $2872
	ld bc, $0fa2
	call Call_000_2769
	ld de, $1083
	call Call_000_0a3e

jr_000_285f:
	ld de, $2865
	jp Jump_000_0a53


	ld a, [$cac1]
	or a
	jp nz, Jump_000_0a67

	ld de, $2832
	jp Jump_000_0a53


	inc bc
	ld bc, $0002
	ld bc, $0302
	nop
	inc bc
	ld [bc], a
	nop
	ld bc, $0301
	ld [bc], a
	nop
	ld [bc], a
	nop
	nop
	ld [bc], a
	inc bc
	ld bc, $0103
	ld bc, $0302
	ld [bc], a
	ld bc, $0300
	nop
	ld a, [$cac8]
	or a
	jp z, Jump_000_047e

	ld a, [bc]
	call Call_000_0b4a
	ld de, $169b
	call Call_000_0b03
	ld de, $28a9
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $f800
	call Call_000_0bf3
	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $000e
	add hl, de
	inc [hl]
	ld a, [hl]
	cp $60
	jp c, Jump_000_047e

	xor a
	ld [hl], a
	ld de, $28cc
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $08f8
	call Call_000_0bf3
	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $000e
	add hl, de
	inc [hl]
	ld a, [hli]
	cp $40
	jp c, Jump_000_047e

	xor a
	ld [hli], a
	ld [hli], a
	ld de, $28f0
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld hl, $000f
	add hl, bc
	ld a, [hl]
	xor $01
	ld [hli], a
	jr nz, jr_000_28ff

	dec [hl]

jr_000_28ff:
	ld a, [hl]
	call Call_000_0b61
	ld hl, $ca16
	ld d, [hl]
	ld e, $00
	call Call_000_0b1e
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld a, [hl]
	cp $a0
	jp c, Jump_000_047e

	ld a, $01
	ld hl, $cac6
	ld [hli], a
	ld [hl], a
	ld a, [$ca19]
	cp $06
	jr z, jr_000_292d

jr_000_2927:
	ld de, $293a
	jp Jump_000_0a53


jr_000_292d:
	ld a, [$ca22]
	cp $0f
	jr nz, jr_000_2927

	ld de, $2983
	jp Jump_000_0a53


	ld a, [$cac9]
	or a
	jp z, Jump_000_047e

	ld de, $2947
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $000f
	add hl, de
	xor a
	ld [hl], a
	ld bc, $1694
	ld de, $a050
	call Call_000_0b38
	ld de, $169b
	call Call_000_0b03
	ld de, $2966
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $ff00
	call Call_000_0b1e
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld a, [hl]
	cp $60
	jp nz, Jump_000_047e

	ld de, $16ce
	jp Jump_000_0a53


	ld a, [$ca2d]
	or a
	jp z, Jump_000_047e

	ld de, $2990
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $000f
	add hl, de
	xor a
	ld [hl], a
	ld bc, $1694
	ld de, $3c98
	call Call_000_0b38
	ld de, $2af0
	call Call_000_0b03
	ld de, $29af
	jp Jump_000_0a53


	ld a, [$cac9]
	or a
	jp z, Jump_000_047e

	ld de, $29bc
	jp Jump_000_0a53


	ldh a, [rSCX]
	cp $11
	jp nc, Jump_000_047e

	ld de, $29c9
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld a, $f8
	call Call_000_0b7d
	ld a, [$ca17]
	ld e, a
	ld d, $00
	call Call_000_0b1e
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	inc hl
	ld a, [hl]
	cp $38
	jp nc, Jump_000_047e

	ld de, $3207
	call Call_000_0a3e
	jp Jump_000_0a64


	ld bc, $2a34
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $2a02
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld bc, $2a34
	ld de, $3040
	call Call_000_0b38
	ld a, [$ca19]
	dec a
	add a
	ld l, a
	ld h, $00
	ld de, $2a3c
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	call Call_000_0b03
	ld de, $2a27
	jp Jump_000_0a53


	ld a, [$cac9]
	or a
	jp z, Jump_000_047e

	ld [$cac9], a
	jp Jump_000_0a64


	daa
	ld [$0008], sp
	nop
	db $10
	db $10
	ld bc, $2a48
	ld h, h
	ld a, [hli]
	add b
	ld a, [hli]
	sbc h
	ld a, [hli]
	cp b
	ld a, [hli]
	call nc, $d82a
	nop
	jp c, $b400

	nop
	ret nz

	nop
	cp h
	nop
	nop
	nop
	and d
	nop
	nop
	nop
	sub $00
	cp h
	nop
	or h
	nop
	cp d
	nop
	db $e4
	nop
	nop
	nop
	ret c

	nop
	jp c, $b400

	nop
	ret nz

	nop
	cp h
	nop
	nop
	nop
	and h
	nop
	nop
	nop
	sub $00
	cp h
	nop
	or h
	nop
	cp d
	nop
	db $e4
	nop
	nop
	nop
	ret c

	nop
	jp c, $b400

	nop
	ret nz

	nop
	cp h
	nop
	nop
	nop
	and [hl]
	nop
	nop
	nop
	sub $00
	cp h
	nop
	or h
	nop
	cp d
	nop
	db $e4
	nop
	nop
	nop
	ret c

	nop
	jp c, $b400

	nop
	ret nz

	nop
	cp h
	nop
	nop
	nop
	xor b
	nop
	nop
	nop
	sub $00
	cp h
	nop
	or h
	nop
	cp d
	nop
	db $e4
	nop
	nop
	nop
	ret c

	nop
	jp c, $b400

	nop
	ret nz

	nop
	cp h
	nop
	nop
	nop
	xor d
	nop
	nop
	nop
	sub $00
	cp h
	nop
	or h
	nop
	cp d
	nop
	db $e4
	nop
	nop
	nop
	ret c

	nop
	jp c, $b400

	nop
	ret nz

	nop
	cp h
	nop
	nop
	nop
	xor h
	nop
	nop
	nop
	sub $00
	cp h
	nop
	or h
	nop
	cp d
	nop
	db $e4
	nop
	nop
	nop
	ld [bc], a
	nop
	inc b
	nop
	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc [hl]
	ld a, [hl]
	cp $40
	jp c, Jump_000_047e

	ld a, $01
	ld [$cac5], a
	ld bc, $2b6d
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld a, [$cf9a]
	call $4bd1
	ld a, [$ca21]
	ld [$ca2c], a
	ld de, $2b22
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld bc, $2b6d
	ld de, $3040
	call Call_000_0b38
	ld de, $2b75
	call Call_000_0b03
	ld de, $2b3b
	jp Jump_000_0a53


	ld a, [$cac7]
	or a
	jp z, Jump_000_047e

	call Call_000_0c04
	or a
	jp nz, Jump_000_047e

	inc a
	ld [$cacb], a
	ld de, $2b53
	jp Jump_000_0a53


	ld a, [$cac6]
	or a
	jp z, Jump_000_047e

	ld hl, $ca12
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld a, [bc]
	call Call_000_0b4a
	ld de, $0de6
	call Call_000_0a3e
	jp Jump_000_0a64


	dec h
	ld [$0008], sp
	nop
	db $10
	db $10
	ld bc, $00ce
	cp h
	nop
	ld [c], a
	nop
	jp c, RST_00

	nop
	ret c

	nop
	jp c, $b400

	nop
	ret nz

	nop
	cp h
	nop
	adc $00
	cp h
	nop
	ld [c], a
	nop
	jp c, RST_00

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret c

	nop
	jp c, $b400

	nop
	ret nz

	nop
	cp h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	call z, $b400
	nop
	cp d
	nop
	nop
	nop
	ret c

	nop
	cp h
	nop
	or h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret nz

	nop
	call c, $ce00
	nop
	cp b
	nop
	call nz, $da00
	nop
	db $e4
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	cp d
	nop
	or h
	nop
	sub $00
	ret z

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	cp b
	nop
	or h
	nop
	sbc $00
	cp h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	cp [hl]
	nop
	ret nc

	nop
	sub $00
	jp c, $d600

	nop
	cp h
	nop
	ret c

	nop
	ret c

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	cp [hl]
	nop
	call nz, $ce00
	nop
	or h
	nop
	jp z, RST_00

	nop
	nop
	nop
	nop
	nop
	call z, $c400
	nop
	ret c

	nop
	ret c

	nop
	call nz, $d000
	nop
	adc $00
	nop
	nop
	ld a, [$cf95]
	or a
	jr z, jr_000_2c59

	xor a
	ld [$cf95], a
	ld de, $165e
	jp Jump_000_0a53


jr_000_2c59:
	xor a
	ld [$cf97], a
	ld de, $06f1
	jp Jump_000_0a53


	ld a, [$cf80]
	and $08
	jp z, Jump_000_047e

	ld a, $01
	ld [$cffa], a
	ld [$cffb], a
	ld [$cf98], a
	jp Jump_000_0a67


Call_000_2c79:
	ld c, $08
	ld de, $cf88
	ld hl, $cff1

jr_000_2c81:
	ld a, [de]
	cp [hl]
	ret c

	jr nz, jr_000_2c8c

	inc de
	inc hl
	dec c
	jr nz, jr_000_2c81

	ret


jr_000_2c8c:
	ld c, $08
	ld hl, $cf88
	ld de, $cff1

jr_000_2c94:
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, jr_000_2c94

	ret


	sbc c
	rst $08
	add hl, bc
	ret nz

	or h
	call z, Call_000_00bc
	ret nc

	sbc $bc
	sub $00
	sbc d
	rrca
	add hl, bc
	jp c, $d2d0

	nop
	ret c

	cp b
	ret nc

	sub $bc
	nop
	sbc d
	ld [hl], c
	dec b
	ret c

	cp b
	ret nc

	sub $bc
	nop
	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc [hl]
	ld a, [hl]
	cp $40
	jp c, Jump_000_047e

	ld a, $01
	ld [$cac5], a
	ld a, [$cf9a]
	call $4bd1
	call Call_000_2c79
	ld de, $2cdf
	jp Jump_000_0a53


	ld a, [$cac7]
	or a
	jp z, Jump_000_047e

	ld [$cacb], a
	ld de, $2cef
	jp Jump_000_0a53


	ld a, [$cac6]
	or a
	jp z, Jump_000_047e

	ld hl, $ca12
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld a, [bc]
	call Call_000_0b4a
	ld de, $0de6
	call Call_000_0a3e
	jp Jump_000_0a67


	ld bc, $2f9b
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $2d19
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld bc, $2f9b
	ld de, $6872
	call Call_000_0b38
	ld de, $2fa3
	call Call_000_0b03
	ld de, $2d32
	jp Jump_000_0a53


	ld hl, $0010
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $ff
	jp nz, Jump_000_047e

	ld de, $2d43
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld hl, $001c
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $07
	ld [hli], a
	jp nz, Jump_000_047e

	ld a, [hl]
	inc [hl]
	cp $07
	jp z, Jump_000_0a64

	push hl
	ld hl, $2fc7
	call $465d
	pop hl
	ld a, [hl]
	cp $04
	jp nz, Jump_000_047e

	ld de, $2d71
	call Call_000_0a3e
	jp Jump_000_047e


	ld bc, $2faf
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $2d81
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld hl, $0008
	add hl, bc
	xor a
	ld [hli], a
	ld [hl], a
	ld hl, $0018
	add hl, bc
	ld bc, $2faf
	ld de, $606a
	call Call_000_0b38
	ld de, $2fb7
	call Call_000_0b03
	ld de, $2da5
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld a, [hl]
	cp $f0
	jr nc, jr_000_2dbf

	ld hl, $0008
	add hl, bc
	ld a, [hli]
	ld e, [hl]
	ld d, a
	call Call_000_0bf3
	ld de, $2dd5
	jp Jump_000_0a53


jr_000_2dbf:
	call Call_000_0b10
	ld a, [$ca22]
	cp $0f
	jr nz, jr_000_2dcf

	ld de, $2ded
	jp Jump_000_0a53


jr_000_2dcf:
	ld de, $2e5b
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld hl, $0007
	add hl, bc
	ld a, [hl]
	inc a
	and $03
	ld [hli], a
	jr nz, jr_000_2de7

	dec [hl]
	inc hl
	dec [hl]

jr_000_2de7:
	ld de, $2da5
	jp Jump_000_0a53


	ld hl, $0018
	add hl, bc
	xor a
	ld [hl], a
	ld a, $0e
	ld [$cad6], a
	ld de, $2fdb
	ld hl, $cad2
	ld a, e
	ld [hli], a
	ld [hl], d
	ld de, $9a2e
	ld a, e
	ld hl, $cad4
	ld [hli], a
	ld [hl], d
	ld a, $01
	ld [$cad0], a
	ld [$cad8], a
	ld de, $2e18
	jp Jump_000_0a53


	ld a, [$cad0]
	or a
	jp nz, Jump_000_047e

	ld a, $0e
	ld [$cad6], a
	ld de, $2fe9
	ld hl, $cad2
	ld a, e
	ld [hli], a
	ld [hl], d
	ld de, $9a4e
	ld a, e
	ld hl, $cad4
	ld [hli], a
	ld [hl], d
	ld a, $01
	ld [$cad0], a
	ld [$cad8], a
	ld de, $2e44
	jp Jump_000_0a53


	ld a, [$cad0]
	or a
	jp nz, Jump_000_047e

	ld hl, $0018
	add hl, bc
	inc [hl]
	ld a, [hl]
	or a
	jp nz, Jump_000_047e

	ld de, $0de6
	jp Jump_000_0a53


	ld hl, $0018
	add hl, bc
	xor a
	ld [hl], a
	ld a, $0e
	ld [$cad6], a
	ld de, $2ff7
	ld hl, $cad2
	ld a, e
	ld [hli], a
	ld [hl], d
	ld de, $9a2e
	ld a, e
	ld hl, $cad4
	ld [hli], a
	ld [hl], d
	ld a, $01
	ld [$cad0], a
	ld [$cad8], a
	ld de, $2e86
	jp Jump_000_0a53


	ld a, [$cad0]
	or a
	jp nz, Jump_000_047e

	ld a, $0e
	ld [$cad6], a
	ld de, $3005
	ld hl, $cad2
	ld a, e
	ld [hli], a
	ld [hl], d
	ld de, $9a4e
	ld a, e
	ld hl, $cad4
	ld [hli], a
	ld [hl], d
	ld a, $01
	ld [$cad0], a
	ld [$cad8], a
	ld de, $2eb2
	jp Jump_000_0a53


	ld a, [$cad0]
	or a
	jp nz, Jump_000_047e

	ld hl, $0018
	add hl, bc
	inc [hl]
	ld a, [hl]
	or a
	jp nz, Jump_000_047e

	ld de, $0de6
	jp Jump_000_0a53


	ld de, $3019
	call Call_000_0a3e
	ld de, $2ed5
	jp Jump_000_0a53


	ld a, [$cac9]
	or a
	jp z, Jump_000_047e

	ld hl, $ca80
	ld a, [hl]
	or a
	jp nz, Jump_000_047e

	ld hl, $ff43
	dec [hl]
	ld a, [hl]
	cp $11
	jp nc, Jump_000_047e

	jp Jump_000_0a67


	ld bc, $2f8d
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $2f01
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld bc, $2f8d
	ld de, $a048
	call Call_000_0b38
	ld de, $2f95
	call Call_000_0b03
	ld de, $2f1a
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld a, [hl]
	cp $30
	jr c, jr_000_2f37

	ld d, b
	ld e, c
	ld a, $fc
	call Call_000_0b61
	ld a, [$ca16]
	ld d, a
	ld e, $00
	call Call_000_0b1e
	jp Jump_000_047e


jr_000_2f37:
	ld de, $2f3d
	jp Jump_000_0a53


	ld hl, $caf0
	ld de, $3013
	ld b, $06

jr_000_2f45:
	ld a, [de]
	ld [hli], a
	inc de
	dec b
	jr nz, jr_000_2f45

	ld hl, $caf6
	ld de, $cf88
	ld b, $07

jr_000_2f53:
	ld a, [de]
	or $f0
	ld [hli], a
	inc de
	dec b
	jr nz, jr_000_2f53

	ld a, $0e
	ld [$cad6], a
	ld de, $caf0
	ld hl, $cad2
	ld a, e
	ld [hli], a
	ld [hl], d
	ld de, $9a25
	ld a, e
	ld hl, $cad4
	ld [hli], a
	ld [hl], d
	ld a, $01
	ld [$cad0], a
	ld [$cad8], a
	ld [$cffc], a
	ld [$cab9], a
	ld a, [$ca2e]
	or a
	jp z, Jump_000_0a67

	ld [$ca2f], a
	jp Jump_000_0a67


	inc de
	ld [$0008], sp
	nop
	db $10
	db $10
	ld bc, $00bc
	adc $00
	cp d
	nop
	inc de
	ld [$0008], sp
	nop
	db $10
	db $10
	ld bc, $0080
	add d
	nop
	add h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc h
	ld [$0008], sp
	nop
	db $10
	db $10
	ld bc, $005a
	ld e, h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld e, [hl]
	nop
	ld h, b
	nop
	inc b
	inc b
	nop
	inc b
	inc b
	nop
	nop
	db $fc
	db $fc
	nop
	nop
	nop
	db $fc
	db $fc
	db $fc
	inc b
	nop
	inc b
	inc b
	db $fc
	cp [hl]
	call nz, $b4ce
	jp z, $ccbf

	call nz, $d8d8
	call nz, $ced0
	cp a
	cp a
	cp a
	cp a
	call nz, $bfd8
	ret nc

	sbc $bc
	sub $bf
	cp a
	cp a
	cp a
	cp [hl]
	call nz, $b4ce
	jp z, $ccbf

	call nz, $d8d8
	call nz, $ced0
	cp a
	call nz, $bfd8
	ret nc

	sbc $bc
	sub $bf
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	ret c

	cp b
	ret nc

	sub $bc
	cp a
	ld de, $3040
	call Call_000_0a3e
	ld de, $30d9
	call Call_000_0a3e
	ld a, $01
	ld [$ca2d], a
	ld de, $3030
	jp Jump_000_0a53


	ld bc, $31ba
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $3050
	jp Jump_000_0a53


	ld bc, $31bb
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $3069
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld bc, $31ba
	ld de, $30e1
	call Call_000_0b38
	ld de, $31bc
	call Call_000_0b03
	ld de, $3082
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld bc, $31bb
	ld de, $4000
	call Call_000_0b38
	ld de, $31d4
	call Call_000_0b03
	ld de, $3082
	jp Jump_000_0a53


	ld hl, $ca80
	ld a, [hl]
	or a
	jp nz, Jump_000_047e

	ldh a, [rSCX]
	cp $12
	jp c, Jump_000_309e

	ld a, [bc]
	call Call_000_0b4a
	ld de, $0001
	call Call_000_0b1e
	jp Jump_000_047e


Jump_000_309e:
	ld de, $30a4
	jp Jump_000_0a53


	ld a, [$ca1c]
	or a
	jp z, Jump_000_047e

	ld de, $30b1
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc hl
	inc hl
	ld a, [hl]
	cp $c0
	jp nc, Jump_000_0a64

	ld hl, $0004
	add hl, bc
	ld a, [hl]
	inc [hl]
	inc hl
	and $07
	jr nz, jr_000_30c9

	inc [hl]

jr_000_30c9:
	ld a, [hl]
	call Call_000_0b7d
	ld a, [$ca17]
	ld e, a
	ld d, $00
	call Call_000_0b1e
	jp Jump_000_047e


	ld a, [$ca1b]
	or a
	jp z, Jump_000_047e

	ld bc, $31dc
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, $30f0
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld bc, $31dc
	ld de, $4012
	call Call_000_0b38
	ld de, $3103
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc bc
	ld a, [bc]
	inc a
	and $03
	ld [bc], a
	jp nz, Jump_000_047e

	inc bc
	ld l, c
	ld h, b
	ld a, [hl]
	inc [hl]
	cp $04
	jr z, jr_000_312c

	and $01
	add a
	ld l, a
	ld h, $00
	ld de, $31dd
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	call Call_000_0b03
	jp Jump_000_047e


jr_000_312c:
	xor a
	ld [bc], a
	ld de, $3134
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc bc
	ld a, [bc]
	inc a
	and $03
	ld [bc], a
	jp nz, Jump_000_047e

	inc bc
	ld l, c
	ld h, b
	ld a, [hl]
	inc [hl]
	cp $03
	jr z, jr_000_315b

	add a
	ld l, a
	ld h, $00
	ld de, $31e1
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	call Call_000_0b03
	jp Jump_000_047e


jr_000_315b:
	xor a
	ld [bc], a
	inc a
	ld [$ca1c], a
	ld de, $3167
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc hl
	inc hl
	ld a, [hl]
	cp $c0
	jp nc, Jump_000_31ad

	ld hl, $0004
	add hl, bc
	ld a, [hl]
	inc [hl]
	inc hl
	and $07
	jr nz, jr_000_317f

	inc [hl]

jr_000_317f:
	ld a, [hl]
	call Call_000_0b7d
	ld a, [$ca17]
	ld e, a
	ld d, $00
	call Call_000_0b1e
	inc bc
	ld a, [bc]
	inc a
	and $03
	ld [bc], a
	jp nz, Jump_000_047e

	inc bc
	ld l, c
	ld h, b
	ld a, [hl]
	xor $01
	ld [hl], a
	add a
	ld l, a
	ld h, $00
	ld de, $31e7
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	call Call_000_0b03
	jp Jump_000_047e


Jump_000_31ad:
	ld a, [bc]
	call Call_000_0b4a
	ld de, $2ef1
	call Call_000_0a3e
	jp Jump_000_0a64


	inc [hl]
	inc d
	ld b, $00
	ld [$0a00], sp
	nop
	inc c
	nop
	ld c, $00
	stop
	ld [de], a
	nop
	inc d
	nop
	ld d, $00
	jr jr_000_31d0

jr_000_31d0:
	ld a, [de]
	nop
	inc e
	nop
	ld e, $00
	jr nz, jr_000_31d8

jr_000_31d8:
	ld [hli], a
	nop
	inc h
	nop
	ld [de], a
	db $eb
	ld sp, $31ef
	di
	ld sp, $31f7
	ei
	ld sp, $31ff
	inc bc
	ld [hld], a
	nop
	nop
	ld h, $00
	nop
	nop
	jr z, jr_000_31f3

jr_000_31f3:
	nop
	nop
	ld a, [hli]
	nop
	nop
	nop
	inc l
	nop
	ld l, $00
	jr nc, jr_000_31ff

jr_000_31ff:
	ld [hld], a
	nop
	inc [hl]
	nop
	ld [hl], $00
	jr c, jr_000_3207

jr_000_3207:
	ld hl, $0004
	add hl, bc
	inc [hl]
	ld a, [hl]
	or a
	jp nz, Jump_000_047e

	xor a
	ld [$cad8], a
	ld de, $321b
	jp Jump_000_0a53


	call Call_000_32ab
	ld a, $90
	ldh [rWX], a
	ld de, $3228
	jp Jump_000_0a53


	ld a, [$cad0]
	or a
	jp nz, Jump_000_047e

	call Call_000_32ab
	ld a, [$cad8]
	cp $02
	jr z, jr_000_3264

	cp $05
	jr z, jr_000_3264

	cp $08
	jr z, jr_000_3264

	cp $0a
	jr z, jr_000_3264

	cp $0d
	jr z, jr_000_3264

	cp $0f
	jr z, jr_000_3264

	cp $12
	jr z, jr_000_3264

	cp $14
	jr z, jr_000_3264

	cp $16
	jr z, jr_000_3264

	cp $18
	jr z, jr_000_3264

	cp $1c
	jr z, jr_000_3264

	jp Jump_000_047e


jr_000_3264:
	ld de, $326a
	jp Jump_000_0a53


	ld a, [$cad0]
	or a
	jp nz, Jump_000_047e

	ld hl, $cad1
	ld a, [hl]
	inc a
	ld [hl], a
	and $03
	jp nz, Jump_000_047e

	ld hl, $ff4b
	dec [hl]
	ld a, [hl]
	cp $08
	jp nc, Jump_000_047e

	ld de, $328c
	jp Jump_000_0a53


	ld hl, $cad8
	ld a, [hli]
	cp $1c
	jr nz, jr_000_329c

	ld a, $01
	ld [$ca1b], a
	jp Jump_000_0a67


jr_000_329c:
	inc [hl]
	ld a, [hl]
	cp $e0
	jp nz, Jump_000_047e

	xor a
	ld [hl], a
	ld de, $321b
	jp Jump_000_0a53


Call_000_32ab:
	ld a, [$cad8]
	ld b, a
	ld a, $11
	ld [$cad6], a
	ld a, b
	add a
	ld l, a
	ld h, $00
	ld de, $3315
	add hl, de
	ld a, [hli]
	ld e, [hl]
	ld hl, $cad2
	ld [hli], a
	ld [hl], e
	ld a, b
	add a
	ld l, a
	ld h, $00
	ld de, $32dd
	add hl, de
	ld a, [hli]
	ld e, [hl]
	ld hl, $cad4
	ld [hli], a
	ld [hl], e
	ld a, b
	inc a
	ld [$cad0], a
	ld [$cad8], a
	ret


	ld [bc], a
	sbc h
	ld [hli], a
	sbc h
	ld [bc], a
	sbc h
	ld [hli], a
	sbc h
	ld b, d
	sbc h
	ld [bc], a
	sbc h
	ld [hli], a
	sbc h
	ld b, d
	sbc h
	ld [bc], a
	sbc h
	ld [hli], a
	sbc h
	ld [bc], a
	sbc h
	ld [hli], a
	sbc h
	ld b, d
	sbc h
	ld [hli], a
	sbc h
	ld b, d
	sbc h
	ld [bc], a
	sbc h
	ld [hli], a
	sbc h
	ld b, d
	sbc h
	ld [hli], a
	sbc h
	ld b, d
	sbc h
	ld [hli], a
	sbc h
	ld b, d
	sbc h
	ld [hli], a
	sbc h
	ld b, d
	sbc h
	ld [bc], a
	sbc h
	ld [hli], a
	sbc h
	ld b, d
	sbc h
	ld h, d
	sbc h
	ld c, l
	inc sp
	ld e, [hl]
	inc sp
	ld l, a
	inc sp
	add b
	inc sp
	sub c
	inc sp
	and d
	inc sp
	or e
	inc sp
	call nz, $d533
	inc sp
	and $33
	rst $30
	inc sp
	ld [$1934], sp
	inc [hl]
	ld a, [hli]
	inc [hl]
	dec sp
	inc [hl]
	ld c, h
	inc [hl]
	ld e, l
	inc [hl]
	ld l, [hl]
	inc [hl]
	ld a, a
	inc [hl]
	sub b
	inc [hl]
	and c
	inc [hl]
	or d
	inc [hl]
	jp $d434


	inc [hl]
	push hl
	inc [hl]
	or $34
	rlca
	dec [hl]
	jr @+$37

	jp nc, $d0d6

	cp d
	call c, $bcb8
	sub $bf
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	ret nz

	add sp, -$1c
	ret nc

	ret z

	ret nc

	call nz, $bfbf
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp d
	call nz, $bcd6
	cp b
	jp c, $d6d0

	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	ret c

	add sp, -$30
	ret z

	or h
	cp d
	or h
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	ret z

	add sp, -$26
	cp h
	sub $b4
	ret c

	or h
	ret z

	call nz, $bfbf
	cp a
	cp a
	cp a
	cp a
	cp a
	jp nc, $d0d6

	ret nz

	sub $b4
	call z, $bccc
	sub $bf
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	ret z

	add sp, -$28
	call c, $c4c0
	call z, $dad0
	ret nc

	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	call z, $d8dc
	call nz, $bfb8
	ret c

	ret nc

	call c, $bace
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	jp c, $d0e8

	ret c

	or h
	cp d
	or h
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp d
	cp h
	ret c

	call nz, $cec0
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	or h
	add sp, -$3e
	call nz, $b4c0
	ret c

	jp nz, $e4c4

	or h
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	ret z

	add sp, -$1c
	or h
	call z, $c0b4
	or h
	call z, $bfc4
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	ret z

	add sp, -$38
	or h
	jp c, $dcd8

	db $e4
	or h
	call z, $bfb4
	cp a
	cp a
	cp a
	cp a
	cp a
	ret z

	add sp, -$3e
	or h
	db $e4
	or h
	ret c

	jp nz, $bfc4

	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	ret c

	jp nc, $b8bc

	call nz, $cab4
	ei
	jp c, $b4c2

	adc $c8
	ret c

	ei
	jp c, $c2d0

	add sp, -$3e
	call nz, $b4d6
	db $e4
	or h
	call z, $bfb4
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	db $e4
	add sp, -$42
	call c, $c4c6
	call nz, $bfbf
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	ret z

	add sp, -$26
	or h
	ret z

	cp h
	call c, $c2b8
	call nz, $bfbf
	cp a
	cp a
	cp a
	cp a
	cp a
	jp nz, $b4e8

	db $e4
	sub $da
	ret nc

	adc $e8
	ldh [$b4], a
	cp d
	or h
	cp a
	cp a
	cp a
	cp a
	db $e4
	add sp, -$38
	or h
	ldh [$b4], a
	ret z

	or h
	call z, $bfc4
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	call z, $cee8
	or h
	ret z

	or h
	jp c, $ceb4

	call nz, $bfbf
	cp a
	cp a
	cp a
	cp a
	cp a
	jp nz, $cee8

	or h
	ret z

	or h
	and $b4
	ldh [$b4], a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	db $e4
	add sp, -$4c
	sub $b4
	ret c

	jp nz, $b6c4

	or h
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	ret c

	ret nc

	jp z, $d6b4

	ret c

	jp c, $c4d6

	ret z

	cp h
	sub $bf
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	cp a
	db $fc
	and d
	or d
	or b
	or d
	cp a
	ld [$eceb], a
	db $ed
	xor $ef
	cp a
	cp a
	cp a
	cp a
	ld b, e
	ld a, $4e
	ld a, $45
	dec a
	and c
	inc a
	ld l, a
	ld a, $7a
	ld a, $3d
	dec a
	sub c
	inc a
	ld b, e
	ld a, $4e
	ld a, $45
	dec a
	and c
	inc a
	ld l, a
	ld a, $7a
	ld a, $3d
	dec a
	dec b
	nop
	sub c
	inc a
	ld b, e
	ld a, $4e
	ld a, $b1
	inc a
	ld bc, $0c3e
	ld a, $91
	inc a
	sub c
	inc a
	sub c
	inc a
	sub c
	inc a
	sub c
	inc a
	sub c
	inc a
	or c
	inc a
	xor c
	dec a
	or h
	dec a
	and c
	inc a
	and c
	inc a
	and c
	inc a
	and c
	inc a
	and c
	inc a
	and c
	inc a
	xor c
	dec a
	ld h, l
	dec a
	or $3d
	ld bc, $5d3e
	dec a
	sbc [hl]
	dec a
	ld bc, $5d3e
	dec a
	sbc [hl]
	dec a
	xor c
	dec a
	ld h, l
	dec a
	or $3d
	or c
	inc a
	or c
	inc a
	pop af
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	ld bc, $b13d
	inc a
	or c
	inc a
	ld c, l
	dec a
	adc c
	inc a
	dec a
	dec a
	ld c, l
	dec a
	adc c
	inc a
	dec a
	dec a
	ld c, l
	dec a
	adc c
	inc a
	dec a
	dec a
	ld c, l
	dec a
	adc c
	inc a
	dec a
	dec a
	ld c, l
	dec a
	adc c
	inc a
	dec a
	dec a
	ld c, l
	dec a
	adc c
	inc a
	dec a
	dec a
	or c
	inc a
	adc c
	inc a
	and c
	inc a
	or c
	inc a
	adc c
	inc a
	and c
	inc a
	or c
	inc a
	adc c
	inc a
	and c
	inc a
	or c
	inc a
	adc c
	inc a
	and c
	inc a
	or c
	inc a
	adc c
	inc a
	and c
	inc a
	or c
	inc a
	adc c
	inc a
	and c
	inc a
	pop de
	inc a
	pop hl
	inc a
	pop de
	inc a
	pop hl
	inc a
	pop de
	inc a
	pop hl
	inc a
	pop hl
	inc a
	pop de
	inc a
	pop hl
	inc a
	pop de
	inc a
	pop hl
	inc a
	ld c, l
	dec a
	ld c, l
	dec a
	dec a
	dec a
	dec a
	dec a
	dec a
	dec a
	pop bc
	inc a
	pop bc
	inc a
	pop bc
	inc a
	pop bc
	inc a
	pop bc
	inc a
	pop bc
	inc a
	ld c, l
	dec a
	ld c, l
	dec a
	ld b, l
	dec a
	ld b, l
	dec a
	ld b, l
	dec a
	pop bc
	inc a
	pop bc
	inc a
	pop bc
	inc a
	pop bc
	inc a
	pop bc
	inc a
	pop bc
	inc a
	ld c, l
	dec a
	ld e, l
	dec a
	ld l, l
	dec a
	ld e, l
	dec a
	ld l, l
	dec a
	pop bc
	inc a
	pop bc
	inc a
	pop bc
	inc a
	pop bc
	inc a
	pop bc
	inc a
	pop bc
	inc a
	ld c, l
	dec a
	ld h, l
	dec a
	ld [hl], l
	dec a
	ld h, l
	dec a
	ld [hl], l
	dec a
	pop bc
	inc a
	pop bc
	inc a
	pop bc
	inc a
	pop bc
	inc a
	pop bc
	inc a
	pop bc
	inc a
	or c
	inc a
	ld c, l
	dec a
	ld a, d
	ld a, $85
	ld a, $90
	ld a, $6f
	ld a, $b1
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	ld c, l
	dec a
	ld c, [hl]
	ld a, $59
	ld a, $64
	ld a, $43
	ld a, $b1
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	ld c, [hl]
	ld a, $43
	ld a, $64
	ld a, $59
	ld a, $b1
	inc a
	ld c, [hl]
	ld a, $43
	ld a, $64
	ld a, $59
	ld a, $b1
	inc a
	ld c, [hl]
	ld a, $43
	ld a, $64
	ld a, $59
	ld a, $b1
	inc a
	ld bc, $0c3e
	ld a, $eb
	dec a
	or $3d
	ld bc, $0c3e
	ld a, $eb
	dec a
	or $3d
	ld bc, $0c3e
	ld a, $eb
	dec a
	or $3d
	xor c
	dec a
	or h
	dec a
	sub e
	dec a
	sbc [hl]
	dec a
	xor c
	dec a
	or h
	dec a
	sub e
	dec a
	sbc [hl]
	dec a
	xor c
	dec a
	or h
	dec a
	sub e
	dec a
	sbc [hl]
	dec a
	ld c, l
	dec a
	adc c
	inc a
	ld c, l
	dec a
	adc c
	inc a
	ld c, l
	dec a
	adc c
	inc a
	ld c, l
	dec a
	adc c
	inc a
	ld c, l
	dec a
	adc c
	inc a
	ld c, l
	dec a
	adc c
	inc a
	or c
	inc a
	dec a
	dec a
	sub e
	dec a
	sbc [hl]
	dec a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	ld b, l
	dec a
	db $eb
	dec a
	or $3d
	or c
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	sub c
	inc a
	or c
	inc a
	and c
	inc a
	or c
	inc a
	sub c
	inc a
	or c
	inc a
	and c
	inc a
	or c
	inc a
	sub c
	inc a
	or c
	inc a
	and c
	inc a
	or c
	inc a
	and c
	inc a
	or c
	inc a
	sub c
	inc a
	or c
	inc a
	and c
	inc a
	or c
	inc a
	sub c
	inc a
	or c
	inc a
	and c
	inc a
	or c
	inc a
	sub c
	inc a
	ld c, l
	dec a
	ld b, l
	dec a
	ld l, a
	ld a, $7a
	ld a, $91
	inc a
	ld b, e
	ld a, $4e
	ld a, $a1
	inc a
	ld e, c
	ld a, $64
	ld a, $91
	inc a
	add l
	ld a, $90
	ld a, $a1
	inc a
	ld l, a
	ld a, $7a
	ld a, $91
	inc a
	ld b, e
	ld a, $4e
	ld a, $a1
	inc a
	ld e, c
	ld a, $64
	ld a, $91
	inc a
	add l
	ld a, $90
	ld a, $a1
	inc a
	ld l, a
	ld a, $7a
	ld a, $91
	inc a
	ld b, e
	ld a, $4e
	ld a, $a1
	inc a
	ld e, c
	ld a, $64
	ld a, $91
	inc a
	add l
	ld a, $90
	ld a, $a1
	inc a
	ld l, a
	ld a, $7a
	ld a, $91
	inc a
	ld b, e
	ld a, $4e
	ld a, $a1
	inc a
	ld e, c
	ld a, $64
	ld a, $91
	inc a
	add l
	ld a, $90
	ld a, $a1
	inc a
	ld l, a
	ld a, $7a
	ld a, $91
	inc a
	ld b, e
	ld a, $4e
	ld a, $a1
	inc a
	ld e, c
	ld a, $64
	ld a, $91
	inc a
	add l
	ld a, $90
	ld a, $45
	dec a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	ld c, l
	dec a
	or c
	inc a
	or c
	inc a
	pop bc
	inc a
	pop bc
	inc a
	and c
	inc a
	sub c
	inc a
	sub c
	inc a
	and c
	inc a
	or c
	inc a
	or c
	inc a
	pop bc
	inc a
	pop bc
	inc a
	and c
	inc a
	sub c
	inc a
	sub c
	inc a
	and c
	inc a
	or c
	inc a
	or c
	inc a
	pop bc
	inc a
	pop bc
	inc a
	and c
	inc a
	sub c
	inc a
	sub c
	inc a
	and c
	inc a
	or c
	inc a
	or c
	inc a
	pop bc
	inc a
	pop bc
	inc a
	and c
	inc a
	sub c
	inc a
	sub c
	inc a
	and c
	inc a
	or c
	inc a
	or c
	inc a
	pop bc
	inc a
	pop bc
	inc a
	and c
	inc a
	sub c
	inc a
	sub c
	inc a
	and c
	inc a
	or c
	inc a
	or c
	inc a
	pop bc
	inc a
	pop bc
	inc a
	and c
	inc a
	sub c
	inc a
	sub c
	inc a
	and c
	inc a
	or c
	inc a
	or c
	inc a
	pop bc
	inc a
	pop bc
	inc a
	and c
	inc a
	sub c
	inc a
	sub c
	inc a
	and c
	inc a
	or c
	inc a
	or c
	inc a
	pop bc
	inc a
	pop bc
	inc a
	and c
	inc a
	sub c
	inc a
	sub c
	inc a
	and c
	inc a
	or c
	inc a
	or c
	inc a
	pop bc
	inc a
	pop bc
	inc a
	and c
	inc a
	sub c
	inc a
	sub c
	inc a
	and c
	inc a
	or c
	inc a
	or c
	inc a
	pop bc
	inc a
	pop bc
	inc a
	and c
	inc a
	sub c
	inc a
	sub c
	inc a
	and c
	inc a
	or c
	inc a
	or c
	inc a
	pop bc
	inc a
	pop bc
	inc a
	and c
	inc a
	sub c
	inc a
	sub c
	inc a
	and c
	inc a
	or c
	inc a
	or c
	inc a
	pop bc
	inc a
	pop bc
	inc a
	and c
	inc a
	sub c
	inc a
	sub c
	inc a
	and c
	inc a
	or c
	inc a
	or c
	inc a
	pop bc
	inc a
	pop bc
	inc a
	and c
	inc a
	sub c
	inc a
	sub c
	inc a
	and c
	inc a
	or c
	inc a
	or c
	inc a
	pop bc
	inc a
	pop bc
	inc a
	and c
	inc a
	sub c
	inc a
	sub c
	inc a
	and c
	inc a
	or c
	inc a
	or c
	inc a
	pop bc
	inc a
	pop bc
	inc a
	and c
	inc a
	sub c
	inc a
	sub c
	inc a
	and c
	inc a
	or c
	inc a
	or c
	inc a
	pop bc
	inc a
	pop bc
	inc a
	and c
	inc a
	sub c
	inc a
	sub c
	inc a
	and c
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	ld c, l
	dec a
	adc c
	inc a
	and c
	inc a
	adc c
	inc a
	sub c
	inc a
	sub c
	inc a
	adc c
	inc a
	and c
	inc a
	and c
	inc a
	adc c
	inc a
	sub c
	inc a
	sub c
	inc a
	adc c
	inc a
	and c
	inc a
	and c
	inc a
	adc c
	inc a
	sub c
	inc a
	sub c
	inc a
	adc c
	inc a
	and c
	inc a
	and c
	inc a
	adc c
	inc a
	sub c
	inc a
	sub c
	inc a
	adc c
	inc a
	and c
	inc a
	and c
	inc a
	adc c
	inc a
	sub c
	inc a
	sub c
	inc a
	adc c
	inc a
	and c
	inc a
	and c
	inc a
	adc c
	inc a
	sub c
	inc a
	sub c
	inc a
	adc c
	inc a
	and c
	inc a
	and c
	inc a
	adc c
	inc a
	sub c
	inc a
	sub c
	inc a
	adc c
	inc a
	and c
	inc a
	and c
	inc a
	adc c
	inc a
	sub c
	inc a
	sub c
	inc a
	adc c
	inc a
	and c
	inc a
	and c
	inc a
	adc c
	inc a
	sub c
	inc a
	sub c
	inc a
	adc c
	inc a
	and c
	inc a
	and c
	inc a
	adc c
	inc a
	sub c
	inc a
	sub c
	inc a
	adc c
	inc a
	and c
	inc a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	or c
	inc a
	sub b
	ld a, $6f
	ld a, $7a
	ld a, $85
	ld a, $64
	ld a, $43
	ld a, $4e
	ld a, $59
	ld a, $90
	ld a, $6f
	ld a, $7a
	ld a, $85
	ld a, $64
	ld a, $43
	ld a, $4e
	ld a, $59
	ld a, $89
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	ld a, l
	dec a
	sub b
	ld a, $6f
	ld a, $7a
	ld a, $85
	ld a, $64
	ld a, $43
	ld a, $4e
	ld a, $59
	ld a, $89
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	ld a, l
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	or c
	inc a
	sub b
	ld a, $6f
	ld a, $7a
	ld a, $85
	ld a, $64
	ld a, $43
	ld a, $4e
	ld a, $59
	ld a, $90
	ld a, $6f
	ld a, $7a
	ld a, $85
	ld a, $64
	ld a, $43
	ld a, $4e
	ld a, $59
	ld a, $89
	inc a
	daa
	dec a
	adc c
	inc a
	pop af
	inc a
	adc c
	inc a
	inc e
	dec a
	adc c
	inc a
	sub b
	ld a, $6f
	ld a, $7a
	ld a, $85
	ld a, $64
	ld a, $43
	ld a, $4e
	ld a, $59
	ld a, $89
	inc a
	ld de, $893d
	inc a
	ld bc, $893d
	inc a
	daa
	dec a
	adc c
	inc a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	or c
	inc a
	sub b
	ld a, $6f
	ld a, $7a
	ld a, $85
	ld a, $64
	ld a, $43
	ld a, $4e
	ld a, $59
	ld a, $90
	ld a, $6f
	ld a, $7a
	ld a, $85
	ld a, $64
	ld a, $43
	ld a, $4e
	ld a, $59
	ld a, $89
	inc a
	inc e
	dec a
	adc c
	inc a
	pop de
	inc a
	adc c
	inc a
	ld [hld], a
	dec a
	adc c
	inc a
	sub b
	ld a, $6f
	ld a, $7a
	ld a, $85
	ld a, $64
	ld a, $43
	ld a, $4e
	ld a, $59
	ld a, $89
	inc a
	daa
	dec a
	adc c
	inc a
	pop af
	inc a
	adc c
	inc a
	inc e
	dec a
	adc c
	inc a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	or c
	inc a
	sub b
	ld a, $6f
	ld a, $7a
	ld a, $85
	ld a, $64
	ld a, $43
	ld a, $4e
	ld a, $59
	ld a, $90
	ld a, $6f
	ld a, $7a
	ld a, $85
	ld a, $64
	ld a, $43
	ld a, $4e
	ld a, $59
	ld a, $89
	inc a
	ld de, $893d
	inc a
	ld bc, $893d
	inc a
	daa
	dec a
	adc c
	inc a
	sub b
	ld a, $6f
	ld a, $7a
	ld a, $85
	ld a, $64
	ld a, $43
	ld a, $4e
	ld a, $59
	ld a, $89
	inc a
	ld [hld], a
	dec a
	adc c
	inc a
	pop hl
	inc a
	adc c
	inc a
	ld de, $893d
	inc a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	or c
	inc a
	sub b
	ld a, $6f
	ld a, $7a
	ld a, $85
	ld a, $64
	ld a, $43
	ld a, $4e
	ld a, $59
	ld a, $90
	ld a, $6f
	ld a, $7a
	ld a, $85
	ld a, $64
	ld a, $43
	ld a, $4e
	ld a, $59
	ld a, $89
	inc a
	ld [hld], a
	dec a
	adc c
	inc a
	pop hl
	inc a
	adc c
	inc a
	ld de, $893d
	inc a
	sub b
	ld a, $6f
	ld a, $7a
	ld a, $85
	ld a, $64
	ld a, $43
	ld a, $4e
	ld a, $59
	ld a, $89
	inc a
	inc e
	dec a
	adc c
	inc a
	pop de
	inc a
	adc c
	inc a
	ld [hld], a
	dec a
	adc c
	inc a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	add e
	dec a
	ld c, l
	dec a
	adc c
	inc a
	dec a
	dec a
	ld b, e
	ld a, $4e
	ld a, $45
	dec a
	ld b, l
	dec a
	ld e, c
	ld a, $64
	ld a, $3d
	dec a
	and c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	sub c
	inc a
	sub c
	inc a
	adc c
	inc a
	ld c, [hl]
	ld a, $59
	ld a, $89
	inc a
	and c
	inc a
	adc c
	inc a
	adc c
	inc a
	pop de
	inc a
	adc c
	inc a
	pop de
	inc a
	pop de
	inc a
	ld c, l
	dec a
	adc c
	inc a
	dec a
	dec a
	ld b, e
	ld a, $4e
	ld a, $45
	dec a
	ld b, l
	dec a
	ld e, c
	ld a, $64
	ld a, $3d
	dec a
	ld b, l
	dec a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	ld b, l
	dec a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	dec a
	dec a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	sub c
	inc a
	dec a
	dec a
	adc c
	inc a
	adc c
	inc a
	ld c, [hl]
	ld a, $59
	ld a, $89
	inc a
	ld b, l
	dec a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	pop de
	inc a
	adc c
	inc a
	pop de
	inc a
	pop de
	inc a
	ld c, l
	dec a
	adc c
	inc a
	dec a
	dec a
	ld b, e
	ld a, $4e
	ld a, $45
	dec a
	ld b, l
	dec a
	ld e, c
	ld a, $64
	ld a, $3d
	dec a
	dec a
	dec a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	and c
	inc a
	ld b, l
	dec a
	adc c
	inc a
	adc c
	inc a
	sub c
	inc a
	dec a
	dec a
	adc c
	inc a
	adc c
	inc a
	dec a
	dec a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	ld c, [hl]
	ld a, $59
	ld a, $89
	inc a
	dec a
	dec a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	pop hl
	inc a
	adc c
	inc a
	pop hl
	inc a
	pop hl
	inc a
	ld c, l
	dec a
	adc c
	inc a
	dec a
	dec a
	ld b, e
	ld a, $4e
	ld a, $45
	dec a
	ld b, l
	dec a
	ld e, c
	ld a, $64
	ld a, $3d
	dec a
	sub c
	inc a
	adc c
	inc a
	adc c
	inc a
	and c
	inc a
	and c
	inc a
	adc c
	inc a
	sub c
	inc a
	sub c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	adc c
	inc a
	ld c, [hl]
	ld a, $59
	ld a, $89
	inc a
	sub c
	inc a
	adc c
	inc a
	adc c
	inc a
	pop hl
	inc a
	adc c
	inc a
	pop hl
	inc a
	pop hl
	inc a
	or c
	inc a
	and c
	inc a
	ld d, l
	dec a
	sub c
	inc a
	and c
	inc a
	or c
	inc a
	sub c
	inc a
	ld d, l
	dec a
	and c
	inc a
	sub c
	inc a
	ld c, l
	dec a
	and c
	inc a
	ld d, l
	dec a
	sub c
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	sub c
	inc a
	ld d, l
	dec a
	and c
	inc a
	sub c
	inc a
	or c
	inc a
	and c
	inc a
	ld d, l
	dec a
	sub c
	inc a
	and c
	inc a
	ld c, l
	dec a
	sub c
	inc a
	ld d, l
	dec a
	and c
	inc a
	or c
	inc a
	or c
	inc a
	or c
	inc a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld [$1010], sp
	db $10
	db $10
	db $10
	db $10
	db $10
	db $10
	db $10
	db $10
	db $10
	db $10
	db $10
	db $10
	db $10
	jr jr_000_3cc2

	jr nz, jr_000_3cc4

	jr nz, jr_000_3cc6

	jr nz, jr_000_3cc8

	jr nz, jr_000_3cca

	jr nz, jr_000_3ccc

	jr nz, jr_000_3cce

	jr nz, jr_000_3cd0

	jr z, jr_000_3cf2

	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld c, b
	add b

jr_000_3cc2:
	add b
	add b

jr_000_3cc4:
	add b
	add b

jr_000_3cc6:
	add b
	add b

jr_000_3cc8:
	add b
	add b

jr_000_3cca:
	add b
	add b

jr_000_3ccc:
	add b
	add b

jr_000_3cce:
	add b
	add b

jr_000_3cd0:
	adc b
	ld d, b
	ld d, b
	ld d, b
	ld d, b
	ld d, b
	ld d, b
	ld d, b
	ld d, b
	ld d, b
	ld d, b
	ld d, b
	ld d, b
	ld d, b
	ld d, b
	ld d, b
	ld e, b
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld l, b
	sub b

jr_000_3cf2:
	sub b
	sub b
	sub b
	sub b
	sub b
	sub b
	sub b
	sub b
	sub b
	sub b
	sub b
	sub b
	sub b
	sub b
	sbc b
	and b
	and b
	and b
	and b
	and b
	and b
	and b
	and b
	and b
	and b
	and b
	and b
	and b
	and b
	and b
	xor b
	db $10
	db $10
	db $10
	db $10
	db $10
	db $10
	db $10
	db $10
	db $10
	db $10
	jr jr_000_3d3d

	jr nz, jr_000_3d3f

	jr nz, jr_000_3d41

	jr nz, jr_000_3d43

	jr nz, @+$22

	jr nz, jr_000_3d4f

	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld c, b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	adc b

jr_000_3d3d:
	db $10
	db $10

jr_000_3d3f:
	db $10
	db $10

jr_000_3d41:
	db $10
	db $10

jr_000_3d43:
	db $10
	jr jr_000_3d66

	jr nz, jr_000_3d68

	jr nz, jr_000_3d6a

	jr nz, jr_000_3d6c

	jr z, jr_000_3d8e

	ld b, b

jr_000_3d4f:
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld c, b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	adc b
	ld d, b
	ld d, b
	ld d, b
	ld d, b
	ld d, b
	ld d, b
	ld d, b
	ld e, b
	ld h, b

jr_000_3d66:
	ld h, b
	ld h, b

jr_000_3d68:
	ld h, b
	ld h, b

jr_000_3d6a:
	ld h, b
	ld h, b

jr_000_3d6c:
	ld l, b
	sub b
	sub b

jr_000_3d6f:
	sub b
	sub b
	sub b
	sub b
	sub b
	sbc b
	and b
	and b
	and b
	and b
	and b
	and b
	and b
	xor b
	nop
	nop
	nop
	nop
	nop
	ld [$0040], sp
	ld b, b
	nop
	ld b, b
	nop
	ld b, b
	nop
	ld b, b
	nop
	ld b, b

jr_000_3d8e:
	nop
	ld b, b
	nop
	ld b, b
	ld [$1010], sp
	db $10
	ld d, b
	db $10
	db $10
	ld d, b
	db $10
	ld d, b
	ld d, b
	ld e, b
	ld d, b
	ld d, b
	ld d, b
	ld b, b
	ld d, b
	ld b, b
	ld b, b
	ld d, b
	ld b, b
	ld b, b
	ld c, b
	ld b, b
	ld b, b
	ld b, b
	ld h, b
	ld b, b
	ld b, b
	ld h, b
	ld b, b
	ld h, b
	ld h, b
	ld l, b
	ld h, b
	ld h, b
	ld h, b
	jr nz, jr_000_3e19

	jr nz, jr_000_3ddb

	ld h, b
	jr nz, jr_000_3dde

	jr z, jr_000_3de0

	jr nz, jr_000_3de2

	and b
	jr nz, jr_000_3de5

	and b
	jr nz, jr_000_3d68

	and b
	xor b
	and b
	and b
	and b
	jr nz, jr_000_3d6f

	add b
	add b
	and b
	add b
	add b
	adc b
	add b
	add b
	add b
	sub b
	add b
	add b

jr_000_3ddb:
	sub b
	add b

jr_000_3ddd:
	sub b

jr_000_3dde:
	sub b
	sbc b

jr_000_3de0:
	sub b
	sub b

jr_000_3de2:
	sub b
	db $10
	sub b

jr_000_3de5:
	db $10
	db $10
	sub b
	db $10
	db $10
	jr jr_000_3e0c

	jr nz, jr_000_3e0e

	ld h, b
	jr nz, jr_000_3e11

	ld h, b
	jr nz, jr_000_3e54

	ld h, b
	ld l, b
	ld h, b
	ld h, b
	ld h, b
	ld b, b
	ld h, b
	ld b, b
	ld b, b
	ld h, b

jr_000_3dfe:
	ld b, b
	ld b, b
	ld c, b
	ld b, b
	ld b, b
	ld b, b
	ld d, b
	ld b, b
	ld b, b
	ld d, b
	ld b, b
	ld d, b
	ld d, b
	ld e, b

jr_000_3e0c:
	ld d, b
	ld d, b

jr_000_3e0e:
	ld d, b
	db $10
	ld d, b

jr_000_3e11:
	db $10
	db $10
	ld d, b
	db $10
	db $10
	jr jr_000_3e28

	db $10

jr_000_3e19:
	db $10
	sub b
	db $10
	db $10
	sub b
	db $10
	sub b
	sub b
	sbc b
	sub b
	sub b
	sub b
	add b
	sub b
	add b

jr_000_3e28:
	add b
	sub b
	add b
	add b
	adc b
	add b
	add b
	add b
	and b
	add b
	add b
	and b
	add b
	and b
	and b
	xor b
	and b

jr_000_3e39:
	and b
	and b
	jr nz, jr_000_3ddd

	jr nz, jr_000_3e5f

	and b
	jr nz, jr_000_3e62

	jr z, jr_000_3e54

	db $10
	ld d, b
	db $10
	ld d, b
	ld d, b
	ld d, b
	ld b, b
	ld d, b
	ld b, b
	ld c, b
	ld b, b
	ld b, b
	ld h, b
	ld b, b
	ld h, b
	ld h, b

jr_000_3e54:
	ld h, b
	jr nz, jr_000_3eb7

	jr nz, jr_000_3e81

	jr nz, jr_000_3e7b

	and b
	jr nz, jr_000_3dfe

	and b

jr_000_3e5f:
	and b
	add b
	and b

jr_000_3e62:
	add b
	adc b
	add b
	add b
	sub b
	add b
	sub b
	sub b
	sub b
	db $10
	sub b
	db $10
	jr jr_000_3e90

	jr nz, jr_000_3ed2

	jr nz, @+$62

	ld h, b
	ld h, b
	ld b, b
	ld h, b
	ld b, b
	ld c, b
	ld b, b

jr_000_3e7b:
	ld b, b
	ld d, b
	ld b, b
	ld d, b
	ld d, b
	ld d, b

jr_000_3e81:
	db $10
	ld d, b
	db $10
	jr jr_000_3e96

	db $10
	sub b
	db $10
	sub b
	sub b
	sub b
	add b
	sub b
	add b
	adc b

jr_000_3e90:
	add b
	add b
	and b
	add b
	and b
	and b

jr_000_3e96:
	and b
	jr nz, jr_000_3e39

	jr nz, jr_000_3ec3

	sbc c
	db $eb
	inc b
	jp nc, $d8dc

	jp nz, Jump_000_089a

	inc c
	ret c

	jp c, $d6b4

	jp c, $b6ff

	call c, $dada
	ret nc

	adc $9a
	ld c, b
	inc bc
	jp c, $d2d0

jr_000_3eb7:
	sbc d
	adc b
	inc c
	db $fc
	and d
	or d
	or b
	or d
	rst $38
	ld [$eceb], a

jr_000_3ec3:
	db $ed
	xor $ef
	nop
	sbc c
	db $eb
	inc b
	jp nc, $d8dc

	jp nz, $079a

	dec c
	ret c

jr_000_3ed2:
	cp h
	jp z, $b8bc

	jp c, $b6bf

	call c, $dada
	ret nc

	adc $9a
	ld c, b
	inc bc
	jp c, $d2d0

	sbc d
	adc b
	inc c
	db $fc
	and d
	or d
	or b
	or d
	rst $38
	ld [$eceb], a
	db $ed
	xor $ef
	nop
	sbc h
	nop
	inc de
	ret c

	cp b
	ret nc

	sub $bc
	nop
	ldh a, [$f0]
	ldh a, [$f0]
	ldh a, [$f0]
	ldh a, [$f0]
	nop
	nop
	ld a, [$f3f0]
	nop
	ldh a, [$f0]
	ldh a, [$f0]
	ldh a, [$f0]
	ldh a, [rP1]
	nop
	ld a, [$f3f0]
	nop
	nop
	nop
	ld d, h
	ld bc, $0000
	nop
	db $10
	stop
	db $10
	inc b
	nop
	nop
	jr nz, jr_000_3f28

jr_000_3f28:
	nop
	nop
	ld b, d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add d
	ld b, b
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	db $10
	ld bc, $0000
	nop
	ld [$0010], sp
	nop
	nop
	nop
	ld c, b
	nop
	ld [bc], a
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
	jr nz, jr_000_3f58

jr_000_3f58:
	nop
	ld b, b
	nop
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	add b
	nop
	ld bc, $4200
	nop
	stop
	jr z, jr_000_3f6e

jr_000_3f6e:
	nop
	nop
	ld b, c
	nop
	nop
	nop
	jr nc, jr_000_3f87

	db $10
	stop
	inc b
	nop
	inc b
	ld b, c
	nop
	nop
	nop
	add d
	nop
	nop
	nop
	ld [bc], a
	nop
	nop

jr_000_3f87:
	nop
	nop
	nop
	stop
	jr nz, jr_000_3f8e

jr_000_3f8e:
	ld bc, $4000
	nop
	inc b
	inc b
	inc hl
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	db $10
	inc d
	ld [hli], a
	nop
	nop
	nop
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	ld b, h
	nop
	inc b
	nop
	inc b
	nop
	nop
	nop
	nop
	inc b
	ld [bc], a
	nop
	add hl, bc
	ld bc, $0008
	nop
	nop
	ld hl, $4401
	nop
	nop
	stop
	nop
	nop
	nop
	nop
	inc b
	ld b, $00
	nop
	nop
	nop
	inc b
	nop
	ld bc, $0004
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
	nop
	nop
	nop
	nop
	ld bc, $8001
	nop
	stop
	nop
	nop
	nop
	stop
	nop
	jr nz, jr_000_3fee

jr_000_3fee:
	stop
	ld b, b
	nop
	nop
	nop
	db $10
	dec b
	and b
	nop
	nop
	nop
	ld b, h
	inc b
	jr nz, jr_000_3ffe

jr_000_3ffe:
	nop
	nop
