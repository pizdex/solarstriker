; Disassembly of "solarstriker.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld b, d
	ld b, e
	ld b, l
	ld b, [hl]
	ld c, l
	ld c, [hl]
	or c
	rst $38
	and l
	db $db
	db $ed
	sub [hl]
	db $ed
	sub a
	rst $28
	sbc [hl]
	or d
	di
	ld b, c
	ld b, c
	ld b, b
	ld b, b
	jp nz, $e6c2

	and $77
	ld [hl], a
	ccf
	jr c, jr_002_4068

	rla
	ccf
	ld h, $7f
	ld b, [hl]
	rst $38
	add $ff
	rst $00
	ld a, a
	ld b, [hl]
	ccf
	ld h, $1f
	ld d, $3f
	jr c, jr_002_40d2

	ld [hl], a
	and $e6
	jp nz, Jump_002_43c2

	ld b, e
	ld h, a
	ld h, a
	xor $ee
	db $fc
	inc e

jr_002_4068:
	ld hl, sp-$18
	db $fc
	inc [hl]
	cp $32
	rst $38
	inc sp
	rst $38
	db $e3
	cp $02
	db $fc
	inc b
	ld hl, sp+$08
	db $fc
	inc e
	xor $ee
	ld h, a
	ld h, a
	ld b, e
	ld b, e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr jr_002_40a2

	inc h
	inc a
	inc h
	inc a
	inc a
	inc h
	inc a
	inc h
	inc h
	inc a
	inc h
	inc a
	jr jr_002_40b0

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_40a2:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr jr_002_40c4

	inc a
	inc l
	ld a, [hl]
	ld b, [hl]

jr_002_40b0:
	ld a, [hl]
	ld l, [hl]
	inc a
	inc a
	jr jr_002_40ce

	nop
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
	ld h, b
	ldh a, [$90]

jr_002_40c4:
	ldh a, [$90]
	ldh a, [$90]
	ldh a, [$90]
	ldh a, [$90]
	ldh a, [$90]

jr_002_40ce:
	ld h, b
	ld h, b
	nop
	nop

jr_002_40d2:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, c
	ld h, c
	di
	sub d
	di
	sub d
	di
	sub d
	di
	sub d
	di
	sub d
	di
	sub d
	ld h, c
	ld h, c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nc, jr_002_410e

	inc c
	inc a
	inc a
	inc a
	inc a
	jr nc, jr_002_4139

	inc c
	inc c
	inc a
	inc a
	inc a

jr_002_410e:
	inc a
	jr nc, @+$32

	inc c
	inc c
	inc a
	inc a
	inc a
	inc a
	jr nc, @+$32

	inc c
	inc c
	inc a
	inc a
	inc a
	inc a
	jr nc, jr_002_40a2

	add c
	db $e3
	db $e3
	db $fd
	rst $38
	or e
	cp h
	add hl, de
	ld e, $07
	ld b, $01
	ld bc, $0303
	inc b
	rlca
	dec b
	ld b, $05
	rlca
	inc bc
	inc bc
	dec b

jr_002_4139:
	ld b, $02
	inc bc
	ld bc, $0101
	ld bc, $1818
	inc h
	inc a
	jr @+$26

	inc h
	nop
	jr @+$1a

	inc h
	inc a
	jr @+$26

	inc h
	nop
	jr @+$1a

	inc h
	inc a
	jr jr_002_417a

	inc h
	nop
	jr @+$1a

	inc h
	inc a
	jr jr_002_4182

	inc h
	nop
	jp nz, $e6c2

	and $77
	ld [hl], a
	jr c, jr_002_41a7

	rla
	jr jr_002_4191

	add hl, sp
	ld b, [hl]
	ld a, c
	add $f9
	rst $00
	ld hl, sp+$46
	ld a, c
	ld h, $39
	ld d, $19
	jr c, @+$41

jr_002_417a:
	ld [hl], a
	ld [hl], a
	and $e6
	jp nz, Jump_002_43c2

	ld b, e

jr_002_4182:
	ld h, a
	ld h, a
	xor $ee
	inc e
	db $fc
	add sp, $18
	inc [hl]
	call z, $ce32
	inc sp
	rst $08
	db $e3

jr_002_4191:
	rra
	ld [bc], a
	cp $04
	db $fc
	ld [$1cf8], sp
	db $fc
	xor $ee
	ld h, a
	ld h, a
	ld b, e
	ld b, e
	rrca
	rrca
	ld [hl], b
	ld a, a
	add b
	rst $38
	nop

jr_002_41a7:
	or c
	nop
	cp $e0
	rra
	db $fc
	inc bc
	ld a, h
	inc bc
	ld c, $01
	ld b, $01
	ld b, $01
	ld [bc], a
	ld bc, $0102
	nop
	ld bc, $0000
	nop
	ld bc, $3030
	jr nc, jr_002_41f4

	ld a, b
	ld a, b
	ld c, b
	ld a, b
	ld c, b
	ld a, b
	add h
	db $fc
	or h
	call z, $ccb4
	or h
	call z, $ccb4
	add h
	db $fc
	ld c, b
	ld a, b
	ld c, b
	ld a, b
	ld a, b
	ld a, b
	jr nc, @+$32

	jr nc, @+$32

	inc c

jr_002_41e1:
	inc c
	inc c

jr_002_41e3:
	inc c
	ld e, $1e
	ld [de], a
	ld e, $12
	ld e, $21
	ccf
	dec l
	inc sp
	dec l
	inc sp
	dec l
	inc sp
	dec l
	inc sp

jr_002_41f4:
	ld hl, $123f
	ld e, $12
	ld e, $1e
	ld e, $0c
	inc c
	inc c
	inc c
	ret nz

	ret nz

	ret nz

	ret nz

	ldh [$e0], a
	jr nz, @-$1e

	jr nz, @-$1e

	db $10
	ldh a, [$d0]
	jr nc, @-$2e

	jr nc, jr_002_41e1

	jr nc, jr_002_41e3

	jr nc, jr_002_4225

	ldh a, [rNR41]
	ldh [rNR41], a
	ldh [$e0], a
	ldh [$c0], a
	ret nz

	ret nz

	ret nz

	nop
	nop
	jr nz, jr_002_4244

	ld [hl], b

jr_002_4225:
	ld [hl], c
	ld e, b
	ld e, e
	ld e, $1f
	ld a, [de]
	rra
	add hl, hl
	ccf
	ld c, b

jr_002_422f:
	ld [hl], a
	ld e, a
	ld h, e
	ld l, c
	ld [hl], a
	ld b, c
	ld a, a
	inc hl
	ccf
	rra
	rra
	rlca
	rlca
	ld b, $06
	inc b
	inc b
	nop
	nop
	nop
	nop

jr_002_4244:
	ld h, b
	ldh [rNR10], a
	ldh a, [rOBP0]
	cp b
	add sp, $18
	add sp, $18
	ld e, h
	cp h
	cp $fe
	adc h
	db $fc
	ret z

	jr c, jr_002_422f

	jr c, jr_002_4259

jr_002_4259:
	ldh a, [$e0]
	ldh [rP1], a
	nop
	nop
	nop
	ld bc, $4301
	ld h, e
	ld [hli], a
	inc hl
	ld bc, $1a06
	dec e
	ld [hl], $35
	ld b, e
	ld a, [hl]
	cp l
	jp $c3bc


	sbc [hl]
	pop hl
	add [hl]
	ld sp, hl
	cp [hl]
	pop bc
	ld h, l
	ld e, e
	ld h, c
	ld a, a
	ld e, $1e
	jr nz, jr_002_42a0

	ld hl, sp-$08
	inc c
	db $fc
	ld h, h
	sbc h
	or $0e
	ld a, [$7e06]
	add [hl]
	sbc $2e
	ld a, c
	rra
	di
	rst $38
	ld l, h
	ld [hl], h
	ld e, [hl]
	ld [c], a
	sbc [hl]
	ld [c], a
	cp [hl]
	add $4c
	ld a, h
	jr c, @+$3a

	nop
	nop

jr_002_42a0:
	add b
	add b
	inc b
	inc b
	nop
	ld [bc], a
	nop
	ld [bc], a
	nop
	db $10
	add b
	and b
	nop
	inc b
	nop
	nop
	inc bc
	inc bc
	add b
	and b
	add b
	and b
	add b
	and b
	add b
	add b
	add b
	adc b
	ld h, c
	ld h, a
	jr nc, jr_002_42f0

	ld hl, sp-$08
	nop
	nop
	ld [bc], a
	ld [hli], a
	ld bc, $0119
	add hl, bc
	ld [bc], a
	ld a, [bc]
	ld [bc], a
	ld [bc], a
	nop
	ld [$5840], sp
	ld bc, $0321
	jp $c800


	ld [bc], a
	ld a, [bc]
	ld [bc], a
	ld [hld], a
	inc b
	inc b
	add b
	add b
	ld bc, $0201
	inc bc
	ld [hld], a
	inc sp
	dec [hl]
	ld [hl], $57
	ld [hl], h
	ld d, a
	ld [hl], h
	rst $10
	or h
	db $d3
	or d

jr_002_42f0:
	jp nc, $cab3

	cp e
	jp hl


	sbc c
	ld l, [hl]
	ld e, a
	ld a, [hld]
	dec hl
	ld [de], a
	inc de
	ld bc, $0101
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc bc
	rra
	ld e, $6b
	ld [hl], h
	xor e
	sub $74
	ld l, e
	rra
	inc e
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr c, jr_002_4362

	ld a, h
	ld h, h
	and $da
	rst $08
	cp l
	rst $08
	cp l
	and $da
	ld a, h
	ld h, h
	jr c, jr_002_4370

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc bc
	rlca
	ld b, $0e
	dec c
	inc c
	dec bc
	dec c
	dec bc
	rlca
	dec b
	inc bc
	ld [bc], a
	ld bc, $0101
	ld bc, $0203
	rlca
	dec b
	dec c
	dec bc
	inc c
	dec bc
	ld c, $0d
	rlca
	ld b, $03
	inc bc
	ld a, b
	ld a, b

jr_002_4362:
	db $fc
	call z, $b6ce
	add [hl]
	ld a, d
	and $7a
	xor $76
	db $fc
	inc c
	ld hl, sp-$08

jr_002_4370:
	ret nz

	ret nz

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
	nop
	nop
	nop
	nop
	inc sp
	inc sp
	ld d, l
	db $76
	db $eb
	sbc h
	db $eb
	sbc h
	jp hl


	sbc [hl]
	add sp, -$61
	push af
	sub a
	di
	sub e
	pop af
	sub c
	ldh a, [$90]
	cp b
	ret z

	ld e, b
	ld l, b
	inc h
	inc a
	inc d
	inc e
	ld a, [bc]
	ld c, $06
	ld b, $01
	ld de, $1101
	rlca
	dec d
	ccf
	dec a
	rra
	db $fd
	rlca
	dec a
	inc de
	dec e
	inc de
	rla
	ld de, $1117
	ld [de], a
	ld bc, $0102
	ld [bc], a
	ld bc, $0101
	ld bc, $0101
	nop
	ld bc, $0000

Jump_002_43c2:
	ld b, b
	nop
	ld h, b
	add b
	cp b
	ret nz

	call c, Call_002_6d60
	ld [hl], c
	ld [hl], $3b
	ld e, $1b
	dec b
	ld c, $35
	ld a, $45
	ld a, [hl]
	adc d
	rst $28
	adc d
	rst $08
	ld de, $105d
	jr jr_002_43df

jr_002_43df:
	ld [$c0c0], sp
	ldh [$e0], a
	ld [hl], b
	ld [hl], b
	add hl, sp
	add hl, sp
	dec de
	ld a, [de]
	ccf
	inc h
	ld a, e
	ld c, l
	ld [hl], e
	ld e, l
	ld [hl], e
	ld e, l
	ld a, e
	ld c, l
	ccf
	inc h
	dec de
	ld a, [de]
	add hl, sp
	add hl, sp
	ld [hl], b
	ld [hl], b
	ldh [$e0], a
	ret nz

	ret nz

	nop
	nop
	nop
	nop
	inc e
	inc e
	ld a, a
	ld l, e
	rst $38
	adc b
	adc a
	db $f4
	ld h, c
	ld a, [hl]
	inc a
	rra
	rlca
	inc hl
	jr nz, jr_002_4438

	jr nz, jr_002_443a

	inc b
	inc b
	inc b
	inc b
	nop
	nop
	nop
	nop
	nop
	nop
	db $10
	db $10
	jr nc, jr_002_4454

	jr z, jr_002_445e

	ld c, c
	ld a, c
	ld d, l
	ld l, l
	push de
	db $ed
	cp d
	rst $00
	or l
	adc $b5
	adc $ba
	rst $00
	push de
	db $ed
	ld d, l
	ld l, l

jr_002_4438:
	ld b, l
	ld a, l

jr_002_443a:
	jr z, jr_002_4474

	jr nc, jr_002_446e

	db $10
	db $10
	jr nz, jr_002_4442

jr_002_4442:
	nop
	ld [hli], a
	adc b
	jr z, jr_002_4468

	and b
	sub c
	add h
	add l
	sub h
	db $10
	dec d
	jr z, jr_002_4489

	jr z, jr_002_448d

	sub l
	dec e

jr_002_4454:
	inc de
	rra
	ld de, $085f
	rrca
	inc c
	rrca
	ld h, $27

jr_002_445e:
	ld [bc], a
	ld [bc], a
	jr nc, jr_002_4492

	ld a, b
	ld c, b
	call z, $c6b4
	cp d

jr_002_4468:
	ld h, [hl]
	ld e, d
	ld a, $32
	rra
	rra

jr_002_446e:
	rlca
	ld b, $03
	ld [bc], a
	ld [bc], a
	inc bc

jr_002_4474:
	ld bc, $1d03
	rra
	ld l, a
	ld [hl], d
	add d
	rst $38
	db $fd
	db $fd
	ld bc, $0c01
	inc c
	inc de
	rra
	inc l
	inc sp
	ld e, a
	ld h, b
	cp e

jr_002_4489:
	rst $00
	or l
	adc $85

jr_002_448d:
	cp $8a
	ei
	pop af
	pop af

jr_002_4492:
	ld bc, $3b01
	ld a, [hld]
	ld a, l
	ld b, [hl]
	ld e, l
	ld a, [hl]
	ld h, $27
	dec h
	dec h
	inc h
	inc h
	ld bc, $0121
	ld bc, $8921
	ld bc, $5021
	ld hl, $7120
	ld d, c
	jr nz, @+$03

	jr nz, jr_002_44d2

	inc bc
	dec c
	dec bc
	ld a, l
	ei
	ld a, l
	ld a, [$fa3d]
	dec e
	ld a, e
	nop
	add hl, sp
	jr nc, jr_002_44f0

	nop
	ld bc, $0201

Call_002_44c4:
	ld b, $01
	add e
	add l
	adc a
	add d
	add a
	adc l
	ld e, a
	ld b, d
	ld c, a
	ld e, l
	ccf
	ld [hli], a

jr_002_44d2:
	rrca
	dec e
	rrca
	ld [hld], a
	inc sp
	dec c
	dec a
	ld [hld], a
	ld a, $3d
	rra
	ld e, $0c
	inc c
	nop
	nop
	nop
	ld a, a
	scf
	ld c, b
	or a
	ld c, b
	xor a
	ld d, b
	xor h
	ld d, e
	xor h
	ld d, e
	xor b
	ld d, a

jr_002_44f0:
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld d, a
	ld l, $53
	ld e, a
	ld h, e
	ld e, a
	ld h, e
	db $dd
	ld h, e
	db $dd
	ld h, e
	rst $28
	ld d, c
	ld c, b
	ld c, b
	inc a
	inc [hl]
	ccf
	inc hl
	ld a, a
	ld b, h
	ccf
	inc l
	rra
	ld [de], a
	rra
	ld de, $101f
	dec e
	inc de
	dec c
	dec bc
	ld h, l
	ld h, a
	pop af
	sub e
	pop af
	sub e
	ld h, c
	ld h, e
	ld bc, $0100
	inc bc
	ldh [$e0], a
	db $10
	ld a, b
	ld bc, $430d
	and $87
	db $f4
	ld c, $15
	ld a, [de]
	ccf
	inc hl
	ld a, a
	add c
	rst $20
	ld b, h
	adc $08
	call z, Call_002_6604
	ld [bc], a
	ld [hl], $34
	inc d
	ld [de], a
	ld [de], a
	jr nz, jr_002_4560

	nop
	nop
	ld h, b
	ld h, d
	sub b
	rst $30
	rst $30
	sbc c
	sub a
	ld a, [$6a67]
	rlca
	ld a, [bc]
	ld [bc], a
	rlca
	ld [bc], a
	rlca
	ld [bc], a
	dec b
	rlca
	ld [$6c67], sp
	sbc e
	push af
	ei
	sub l
	sub b
	di
	ld h, b
	ld h, b

jr_002_4560:
	ld b, c
	ld b, c
	db $e3
	ld [c], a
	di
	ld a, [c]
	ei
	cp [hl]
	ei
	sbc [hl]
	ei
	adc l
	cp e
	adc h
	sbc l
	add [hl]
	adc l
	ld b, $8d
	ld b, $86
	add e
	add [hl]
	add e
	ld [bc], a
	inc bc
	ld bc, $0101
	ld bc, $0101
	add b
	add b
	add b
	ret nz

	ld b, b
	db $ec
	ld l, h
	ld a, $3e
	ld e, a
	rla
	ld l, $0b
	ld c, $02
	rlca
	ld [bc], a
	ld b, $02
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add b
	add h
	ld b, b
	ld h, d
	jr nc, jr_002_4617

	inc a
	add hl, sp
	ld e, $1d
	rra
	adc [hl]
	rrca
	ld b, a
	rlca
	dec sp
	ld [bc], a
	inc e
	nop
	db $10
	ld bc, $0020
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
	jr nz, jr_002_45c7

jr_002_45c7:
	ret nz

	nop
	add b
	nop
	add b
	add h
	nop
	jr nz, jr_002_45d0

jr_002_45d0:
	nop
	nop
	ld [hl], b
	nop
	ld c, b
	nop
	ld c, h
	nop
	inc [hl]
	nop
	ld e, $00
	ld b, $00
	ld bc, $0000
	nop
	ld b, b
	nop
	jr nz, jr_002_45e6

jr_002_45e6:
	stop
	ld [$0000], sp
	nop
	ld [bc], a
	nop
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
	nop
	nop
	nop
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
	jr nz, jr_002_4616

jr_002_4616:
	nop

jr_002_4617:
	nop
	ld [$0000], sp
	nop
	nop
	nop
	ld bc, $e700
	ld e, c
	ldh [$5f], a
	ld a, b
	ld b, a
	ccf
	ccf
	rlca
	nop
	ld a, b
	ld a, a
	ld [hl], a
	ld c, a
	ld a, a
	ld c, b
	ld e, a
	ld [hl], b
	ld e, a
	ld l, b
	rst $00
	ld a, a
	ret nz

	ld a, a
	db $fc
	inc hl
	xor $31
	rst $18
	rra
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, b
	ld h, b
	ld h, b
	sub b
	ldh a, [$f0]
	sbc b
	sub l
	ld sp, hl
	push af
	sbc e
	sub l
	ei
	sub l
	ei
	push af
	sub e
	ld h, c
	ld h, e
	ld bc, $6161
	ld bc, $f1f1
	sub b
	ldh a, [rSB]
	ld bc, $0101
	jp nz, $c2c3

	jp $05c6


	call c, $39db
	rst $20
	di
	ld l, $3f
	db $f4
	rst $28
	inc a
	dec hl
	xor $2b
	rst $20
	and $2b
	ld h, $eb
	xor $29
	rst $08
	jp z, $f090

	sub b
	ldh a, [$90]
	ldh a, [$90]
	ldh a, [$90]
	ldh a, [$90]
	ldh a, [$90]
	ldh a, [$90]
	ldh a, [$90]
	ldh a, [$90]
	ldh a, [$90]
	ldh a, [$f0]
	ld h, b
	ldh a, [$90]
	ldh a, [$f0]
	ld h, b
	ldh a, [rP1]
	ld h, b
	rst $18
	jp c, $bbed

	rst $20
	ld e, [hl]
	rst $20
	call c, Call_002_6cf7
	rst $38
	or [hl]
	db $dd
	rst $10
	rst $08
	call $cdcf
	rst $00
	dec b
	pop bc
	push bc
	ret nz

	pop bc
	ret nz

	ret nz

	nop
	ret nz

	nop
	nop
	nop
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
	rlca
	dec b
	dec b
	rlca
	rlca
	dec b
	rlca
	dec b
	nop
	ld bc, $0100
	nop
	ld bc, $0100
	ld bc, $0103
	inc bc
	ld bc, $0103
	inc bc
	inc bc
	ld b, $03
	inc b
	ld [bc], a
	dec b
	dec b
	dec bc
	inc bc
	rrca
	inc c
	rra
	dec de
	inc a
	ld a, [hld]
	ld a, l
	rla
	dec e
	rst $30
	db $fd
	scf
	dec a
	rlca
	dec c
	rlca
	dec b
	rlca
	dec b
	dec b
	rlca
	rlca
	dec b
	ld [bc], a
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
	nop
	nop
	nop
	nop
	ld a, [hl]
	push hl
	ld h, [hl]
	db $db
	ld e, d
	xor l
	ld e, e
	xor l
	ld e, e
	xor l
	ld e, d
	dec l
	ld e, d
	dec l
	ld a, [de]
	dec l
	jr jr_002_475f

	jr jr_002_4761

	jr jr_002_4762

	nop
	jr jr_002_4739

jr_002_4739:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add b
	add c
	ld b, b
	ld b, e
	jr nz, jr_002_476d

	jr jr_002_4767

	rra
	inc e
	rrca
	ld c, d
	ld c, [hl]
	and l
	cp h
	ld d, e
	cp h
	ld d, e
	ld c, [hl]
	and l
	rrca
	ld c, e
	dec e
	rra
	dec de
	add hl, de
	jr nz, jr_002_477e

	ld b, d
	ld b, d
	add d

jr_002_475f:
	add d
	add b

jr_002_4761:
	ret nz

jr_002_4762:
	ld b, b
	db $e3
	inc hl
	ld a, h
	rra

jr_002_4767:
	jr c, jr_002_4785

	ccf
	dec e
	ld l, $33

jr_002_476d:
	ld c, h
	ld [hl], $49
	ld [hl], $49
	inc sp
	ld c, h
	dec e
	ld l, $1c
	ccf
	rra
	jr c, jr_002_479e

	ld a, h
	ld b, b
	db $e3

jr_002_477e:
	add b
	ret nz

	nop
	inc h
	inc h
	inc h
	inc h

jr_002_4785:
	inc h
	inc h
	ld h, [hl]
	ld a, [hl]
	ld h, [hl]
	ld h, [hl]
	ld e, d
	ld b, d
	ld a, [hl]
	db $db
	rst $20
	and l
	db $db
	jp $dbbd


	rst $20
	ld a, [hl]
	ld b, d
	ld a, [hl]
	ld e, d
	inc h
	inc h
	ld b, d
	ld e, d

jr_002_479e:
	add c
	and l
	nop
	inc bc
	inc bc
	rrca
	rrca
	inc e
	ld e, $30
	jr c, jr_002_480a

	jr nc, jr_002_480c

	ld [hl], b
	ret nz

	ld h, b
	ret nz

	ld h, b
	ret nz

	ld [hl], b
	ret nz

	jr nc, jr_002_4816

	jr c, @+$62

	ld e, $30
	rrca
	inc e
	inc bc
	rrca
	nop
	inc bc
	nop
	nop
	nop
	inc a
	inc a
	ld b, e

jr_002_47c6:
	ld b, e

Call_002_47c7:
	add b
	ld b, a
	add a
	ld e, a
	sbc b
	ld a, b
	and b

jr_002_47ce:
	ld [hl], b
	and b
	jr nz, jr_002_4812

	or b
	ret nz

	call z, $c3b0
	adc h
	ret nz

	add e
	ld h, b
	ld b, c
	ld a, $23
	inc e
	rra
	ld b, $0e
	dec c
	dec e
	ld [$1018], sp
	add sp, -$6a
	ld l, [hl]

jr_002_47ea:
	dec l
	db $dd
	jr z, jr_002_47c6

	db $10
	ld l, b
	ld d, $6e
	dec l
	db $dd
	jr z, jr_002_47ce

	ret nc

	ld l, $4e
	or c
	jr nc, jr_002_47ea

	ld [c], a
	db $dd
	ld b, l
	cp b
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	inc c
	ld [bc], a
	ld [hld], a

jr_002_480a:
	nop
	nop

jr_002_480c:
	ld bc, $0300
	nop
	inc bc
	nop

jr_002_4812:
	ld b, d
	ld b, c
	sbc c
	ld a, [hld]

jr_002_4816:
	ld bc, $0282
	inc bc
	ld [bc], a
	inc bc
	ld bc, $0001
	nop
	ld b, $06
	ld bc, $1008
	db $10
	db $10
	db $10
	cpl
	nop
	ld hl, sp+$37
	adc $39

jr_002_482e:
	cp a
	ld b, h
	ld b, d
	cp a
	sbc l
	ld h, d
	ld hl, $4dde
	or e
	ld d, a
	xor a
	ld e, a
	cp a
	sbc [hl]
	ld a, [hl]
	ld hl, sp-$08
	inc c
	dec bc
	nop
	db $10
	db $10
	db $10
	jr nz, jr_002_4868

	ret nz

	nop
	ldh a, [rP1]
	jr jr_002_482e

	add sp, $18
	inc e
	db $e4
	ld [hl], h
	adc h
	adc h
	ld [hl], h
	add h
	ld a, h
	and h
	ld a, h
	ld hl, sp+$78
	ldh a, [$f0]
	nop
	nop
	jr nc, jr_002_4892

	jr nc, jr_002_4894

	ld a, b
	ld a, b
	ld c, b
	ld a, b

jr_002_4868:
	ld c, b
	ld a, b
	add l
	db $fd
	or l
	call $cdb5
	or l
	call $cdb5
	add l
	db $fd
	ld c, b
	ld a, b
	ld c, b
	ld a, b
	ld a, b
	ld a, b
	jr nc, @+$32

	jr nc, @+$32

	ld h, b

jr_002_4881:
	ld h, b
	ld h, b

jr_002_4883:
	ld h, b
	pop af
	pop af
	sub c
	pop af

jr_002_4888:
	sub c
	pop af

jr_002_488a:
	ld a, [bc]
	ei
	ld l, d
	sbc e
	ld l, d
	sbc e
	ld l, d
	sbc e

jr_002_4892:
	ld l, d
	sbc e

jr_002_4894:
	ld a, [bc]
	ei
	sub c
	pop af
	sub c
	pop af
	pop af
	pop af
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ret nz

	ret nz

	ret nz

	ret nz

	ldh [$e0], a
	jr nz, jr_002_4888

	jr nz, jr_002_488a

	db $10
	ldh a, [$d0]
	jr nc, @-$2e

	jr nc, jr_002_4881

	jr nc, jr_002_4883

	jr nc, jr_002_48c5

	ldh a, [rNR41]
	ldh [rNR41], a
	ldh [$e0], a
	ldh [$c0], a
	ret nz

	ret nz

	ret nz

	inc c
	nop
	sub d
	ld c, h
	ld [hl], d

jr_002_48c5:
	db $ec
	ld h, h
	ld e, [hl]
	inc h
	ld e, $4c
	ld a, $4c
	ld a, $4c
	ld a, $5c
	ld a, $5c
	ld a, $5a
	inc a
	ld e, d
	inc a
	ld e, h
	jr c, jr_002_4913

	jr jr_002_48f5

	nop
	db $10
	inc c
	nop
	nop
	nop
	nop
	adc c
	ld [hl], c
	ld [hl], d
	adc e
	adc [hl]
	ei
	cp $73
	ld [hl], d
	adc e
	adc d
	ei
	ld a, [$7673]
	adc e
	adc [hl]

jr_002_48f5:
	ei
	ld a, [$7273]
	adc e
	dec b
	rlca
	ld a, d
	db $76
	sub l
	db $ec
	ld bc, $031c
	inc e
	ld [bc], a
	inc e
	ld [de], a
	inc c
	ld [de], a
	inc l
	ld [de], a
	inc l
	jr jr_002_4932

	inc e
	jr nc, jr_002_4929

	jr c, jr_002_492b

jr_002_4913:
	jr c, jr_002_492d

	jr c, jr_002_492f

	jr c, jr_002_4951

	nop
	jr jr_002_4954

	nop
	nop
	nop
	nop
	adc e
	ret z

	ei
	cp b
	db $fd
	call nz, $3a3e
	rlca

jr_002_4929:
	dec b
	adc d

jr_002_492b:
	ld [hl], e
	ld [hl], d

jr_002_492d:
	adc e
	adc [hl]

jr_002_492f:
	ei
	cp $73

jr_002_4932:
	ld [hl], d
	adc e
	adc d
	ei
	ld a, [$7673]
	adc e
	adc [hl]
	ei
	ld sp, hl
	ld [hl], c
	ld [hl], b
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_4951:
	nop
	nop
	nop

jr_002_4954:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc a
	inc a
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	inc a
	inc a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr jr_002_4a3c

	jr c, jr_002_4a5e

	jr jr_002_4a40

	jr jr_002_4a42

	jr jr_002_4a44

	inc a
	inc a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_4a3c:
	nop
	nop
	nop
	nop

jr_002_4a40:
	nop
	nop

jr_002_4a42:
	inc a
	inc a

jr_002_4a44:
	ld h, [hl]
	ld h, [hl]
	inc c
	inc c
	jr c, jr_002_4a82

	ld h, b
	ld h, b
	ld a, [hl]
	ld a, [hl]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_4a5e:
	nop
	nop
	nop
	nop
	ld a, [hl]
	ld a, [hl]
	ld [$3c08], sp
	inc a
	ld b, $06
	ld h, [hl]
	ld h, [hl]
	inc a
	inc a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_4a82:
	inc e
	inc e
	inc l
	inc l
	ld c, h
	ld c, h
	ld a, [hl]
	ld a, [hl]
	inc c
	inc c
	inc c
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
	nop
	nop
	ld a, h
	ld a, h
	ld b, b
	ld b, b
	ld a, h
	ld a, h
	ld b, $06
	ld h, [hl]
	ld h, [hl]
	inc a
	inc a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc a
	inc a
	ld h, b
	ld h, b
	ld a, h
	ld a, h
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	inc a
	inc a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a, [hl]
	ld a, [hl]
	ld h, [hl]
	ld h, [hl]
	inc c
	inc c
	jr jr_002_4b02

	jr jr_002_4b04

	jr jr_002_4b06

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_4b02:
	inc a
	inc a

jr_002_4b04:
	ld h, [hl]
	ld h, [hl]

jr_002_4b06:
	inc a
	inc a
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	inc a
	inc a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc a
	inc a
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld a, $3e
	ld b, $06
	inc a
	inc a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr jr_002_4b5c

	inc a
	inc a
	ld h, [hl]
	ld h, [hl]
	ld a, [hl]
	ld a, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_4b5c:
	nop
	nop
	nop
	nop
	nop
	nop
	ld a, h
	ld a, h
	ld h, [hl]
	ld h, [hl]
	ld a, h
	ld a, h
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld a, [hl]
	ld a, [hl]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc a
	inc a
	ld h, [hl]
	ld h, [hl]
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld h, [hl]
	ld h, [hl]
	inc a
	inc a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a, h
	ld a, h
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld a, h
	ld a, h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a, [hl]
	ld a, [hl]
	ld h, b
	ld h, b
	ld a, h
	ld a, h
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld a, [hl]
	ld a, [hl]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a, [hl]
	ld a, [hl]
	ld h, b
	ld h, b
	ld a, h
	ld a, h
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc a
	inc a
	ld h, [hl]
	ld h, [hl]
	ld h, b
	ld h, b
	ld l, [hl]
	ld l, [hl]
	ld h, [hl]
	ld h, [hl]
	ld a, $3e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld a, [hl]
	ld a, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc a
	inc a
	jr jr_002_4c5e

	jr jr_002_4c60

	jr jr_002_4c62

	jr jr_002_4c64

	inc a
	inc a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_4c5e:
	nop
	nop

jr_002_4c60:
	nop
	nop

jr_002_4c62:
	ld e, $1e

jr_002_4c64:
	inc c
	inc c
	inc c
	inc c
	inc c
	inc c
	ld l, h
	ld l, h
	jr c, jr_002_4ca6

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld h, [hl]
	ld l, h
	ld l, h
	ld a, b
	ld a, b
	ld a, h
	ld a, h
	ld l, [hl]
	ld l, [hl]
	ld h, [hl]
	ld h, [hl]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld h, b
	ld h, b
	ld h, b

jr_002_4ca6:
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	ld a, [hl]
	ld a, [hl]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld h, d
	db $76
	db $76
	ld a, [hl]
	ld a, [hl]
	ld l, d
	ld l, d
	ld h, d
	ld h, d
	ld h, d
	ld h, d
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld h, [hl]
	db $76
	db $76
	ld a, [hl]
	ld a, [hl]
	ld l, [hl]
	ld l, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc a
	inc a
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	inc a
	inc a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a, h
	ld a, h
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld a, h
	ld a, h
	ld h, b
	ld h, b
	ld h, b
	ld h, b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc a
	inc a
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld a, [hl]
	ld a, [hl]
	ld h, h
	ld h, h
	ld a, [hld]
	ld a, [hld]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a, h
	ld a, h
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld a, h
	ld a, h
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc a
	inc a
	ld h, [hl]
	ld h, [hl]
	jr c, jr_002_4dc0

	inc c
	inc c
	ld h, [hl]
	ld h, [hl]
	inc a
	inc a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a, [hl]
	ld a, [hl]
	jr jr_002_4dbe

	jr jr_002_4dc0

	jr jr_002_4dc2

	jr jr_002_4dc4

	jr jr_002_4dc6

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_4dbe:
	nop
	nop

jr_002_4dc0:
	nop
	nop

jr_002_4dc2:
	ld h, [hl]
	ld h, [hl]

jr_002_4dc4:
	ld h, [hl]
	ld h, [hl]

jr_002_4dc6:
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	inc a
	inc a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld h, d
	ld h, d
	ld h, d
	ld h, d
	ld h, d
	ld h, d
	ld h, d
	inc [hl]
	inc [hl]
	jr jr_002_4e06

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld h, d
	ld l, d
	ld l, d

jr_002_4e06:
	ld l, d
	ld l, d
	ld l, d
	ld l, d
	ld a, [hl]
	ld a, [hl]
	inc [hl]
	inc [hl]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld h, d
	ld [hl], h
	ld [hl], h
	jr c, jr_002_4e60

	inc e
	inc e
	ld l, $2e
	ld b, [hl]
	ld b, [hl]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld h, d
	db $76
	db $76
	inc a
	inc a
	jr jr_002_4e62

	jr jr_002_4e64

	jr jr_002_4e66

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_4e60:
	nop
	nop

jr_002_4e62:
	ld a, [hl]
	ld a, [hl]

jr_002_4e64:
	inc c
	inc c

jr_002_4e66:
	jr jr_002_4e80

	jr nc, jr_002_4e9a

	ld h, b
	ld h, b
	ld a, [hl]
	ld a, [hl]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_4e80:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr jr_002_4ea4

	jr jr_002_4ea6

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc a
	inc a
	inc a
	inc a

jr_002_4e9a:
	nop
	nop
	nop
	nop
	nop
	nop
	add $c6
	and $e6

jr_002_4ea4:
	and $e6

jr_002_4ea6:
	sub $d6
	sub $d6
	adc $ce
	adc $ce
	add $c6
	ret nz

	ret nz

	ret nz

	ret nz

	nop
	nop
	db $db
	db $db
	db $dd
	db $dd
	reti


	reti


	reti


	reti


	reti


	reti


	nop
	nop
	jr nc, jr_002_4ef4

	ld a, b
	ld a, b
	inc sp
	inc sp
	or [hl]
	or [hl]
	or a
	or a
	or [hl]
	or [hl]
	or e
	or e
	nop
	nop
	nop
	nop
	nop
	nop
	call Call_002_6ecd
	ld l, [hl]
	db $ec
	db $ec
	inc c
	inc c
	call z, $00cc
	nop
	ld bc, $0101
	ld bc, $8f8f
	reti


	reti


	reti


	reti


	reti


	reti


	rst $08
	rst $08
	nop
	nop
	add b
	add b

jr_002_4ef4:
	add b
	add b
	sbc [hl]
	sbc [hl]
	or e
	or e
	or e
	or e
	or e
	or e
	sbc [hl]
	sbc [hl]
	nop
	nop
	inc a
	inc a
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	inc a
	inc a
	nop
	nop
	nop
	nop
	jr jr_002_4f2c

	jr c, jr_002_4f4e

	jr jr_002_4f30

	jr jr_002_4f32

	jr jr_002_4f34

	inc a
	inc a
	nop
	nop
	nop
	nop
	inc a
	inc a
	ld h, [hl]
	ld h, [hl]
	inc c
	inc c
	jr c, jr_002_4f62

	ld h, b
	ld h, b

jr_002_4f2c:
	ld a, [hl]
	ld a, [hl]
	nop
	nop

jr_002_4f30:
	nop
	nop

jr_002_4f32:
	ld a, [hl]
	ld a, [hl]

jr_002_4f34:
	ld [$3c08], sp
	inc a
	ld b, $06
	ld h, [hl]
	ld h, [hl]
	inc a
	inc a
	nop
	nop
	nop
	nop
	inc e
	inc e
	inc l
	inc l
	ld c, h
	ld c, h
	ld a, [hl]
	ld a, [hl]
	inc c
	inc c
	inc c
	inc c

jr_002_4f4e:
	nop
	nop
	nop
	nop
	ld a, h
	ld a, h
	ld b, b
	ld b, b
	ld a, h
	ld a, h
	ld b, $06
	ld h, [hl]
	ld h, [hl]
	inc a
	inc a
	nop
	nop
	nop
	nop

jr_002_4f62:
	inc a
	inc a
	ld h, b
	ld h, b
	ld a, h
	ld a, h
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	inc a
	inc a
	nop
	nop
	nop
	nop
	ld a, [hl]
	ld a, [hl]
	ld h, [hl]
	ld h, [hl]
	inc c
	inc c
	jr jr_002_4f92

	jr jr_002_4f94

	jr jr_002_4f96

	nop
	nop
	nop
	nop
	inc a
	inc a
	ld h, [hl]
	ld h, [hl]
	inc a
	inc a
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	ld h, [hl]
	inc a
	inc a
	nop
	nop
	nop
	nop

jr_002_4f92:
	inc a
	inc a

jr_002_4f94:
	ld h, [hl]
	ld h, [hl]

jr_002_4f96:
	ld h, [hl]
	ld h, [hl]
	ld a, $3e
	ld b, $06
	inc a
	inc a
	nop
	nop
	ld [$0808], sp
	ld [$0808], sp
	inc e
	inc e
	ld d, l
	ld d, l
	ld [hl], a
	ld [hl], a
	ld a, a
	ld a, a
	ld c, c
	ld c, c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr c, jr_002_4ffc

	ld b, h
	ld b, h
	cp d
	cp d
	and d
	and d
	cp d
	cp d
	ld b, h
	ld b, h
	jr c, jr_002_5008

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_4ffc:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_5008:
	nop
	nop
	nop
	nop
	nop
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
	db $10
	db $10
	stop
	nop
	nop
	nop
	nop
	nop
	jr jr_002_503a

	jr jr_002_503c

	inc a
	inc h
	ld a, [hl]
	ld a, [hl]
	ld l, [hl]
	ld b, d
	ld l, [hl]
	ld b, d
	ld l, [hl]
	ld b, d
	ld l, [hl]
	ld b, d
	nop
	nop
	db $10
	db $10
	db $10
	db $10
	ld a, h
	ld a, h
	db $10
	db $10

jr_002_503a:
	db $10
	db $10

jr_002_503c:
	db $10
	stop
	nop
	ld l, [hl]
	ld b, d
	ld l, [hl]
	ld b, d
	ld l, [hl]
	ld b, d
	ld a, [hl]
	ld a, [hl]
	ld l, [hl]
	ld b, d
	ld l, [hl]
	ld b, d
	ld a, [hl]
	ld a, [hl]
	nop
	inc a
	ld a, [hl]
	ld a, [hl]
	rst $10
	add c
	rst $10
	add c
	rst $38
	rst $38
	nop
	inc a
	ld a, [hl]
	ld a, [hl]
	add c
	add c
	ld a, [hl]
	nop
	ld a, [hl]
	ld a, [hl]
	rst $10
	add c
	sub a
	add c
	rst $38
	rst $38
	nop
	inc a
	ld a, [hl]
	ld a, [hl]
	add c
	add c
	ld a, [hl]
	nop
	ld bc, $0301
	inc bc
	inc bc
	inc bc
	inc bc
	inc bc
	inc bc
	inc bc
	ld bc, $0701
	rlca
	rlca
	dec b
	ld a, a
	nop
	ld a, a
	nop
	ld a, a
	nop
	ld a, a
	nop
	ld a, a
	nop
	ld a, a
	nop
	ld a, a
	nop
	ld a, a
	nop
	cp $00
	cp $00
	cp $00
	cp $00
	cp $00
	cp $00
	cp $00
	cp $00
	add b
	add b
	ret nz

	ret nz

	ret nz

	ret nz

	ret nz

	ret nz

	ret nz

	ret nz

	add b
	add b
	ldh [$e0], a
	ldh [$a0], a
	rlca
	dec b
	rlca
	rlca
	rlca
	dec b
	rlca
	dec b
	rlca
	dec b
	rlca
	dec b
	rlca
	dec b
	rlca
	rlca
	ccf
	nop
	rst $18
	ret nz

	ld a, e
	jr nz, jr_002_5146

	inc h
	ld h, h
	inc h
	ld a, a
	dec sp
	ccf
	jr nz, @+$01

	ldh [$fc], a
	nop
	ei
	inc bc
	sbc $04
	cp $24
	ld h, $24
	cp $dc
	db $fc
	inc b
	rst $38
	rlca
	ldh [$a0], a
	ldh [$e0], a
	ldh [$a0], a
	ldh [$a0], a
	ldh [$a0], a
	ldh [$a0], a
	ldh [$a0], a
	ldh [$e0], a
	nop
	inc bc
	nop
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
	add b
	nop
	add b
	nop
	ret nz

	nop
	ld [hl], b
	nop
	jr c, jr_002_5107

jr_002_5107:
	inc e
	nop
	ld l, $00
	ld d, $00
	rrca
	nop
	daa
	nop
	add b
	nop
	pop bc
	nop
	ld l, b
	nop
	ld a, l
	nop
	ld a, [hld]
	nop
	dec e
	nop
	rrca
	nop
	inc bc
	nop
	rla
	nop
	cpl
	nop
	ld d, [hl]
	nop
	ld a, $00
	ld l, h
	nop
	ld a, b
	nop
	ldh a, [rP1]
	ret nz

	inc a
	inc a
	ld l, [hl]
	ld b, d
	ld l, [hl]
	ld b, d
	ld l, [hl]
	ld b, d
	ld l, [hl]
	ld b, d
	ld b, d
	ld a, [hl]
	ld l, [hl]
	ld b, d
	inc a
	inc a
	ld h, [hl]
	ld a, [hl]
	rst $00
	sbc c
	rst $00
	sbc c

jr_002_5146:
	rst $00
	sbc c
	rst $10
	add c
	rst $10
	add c
	rst $10
	add c
	rst $10
	add c
	ld a, a
	ld a, a
	adc h
	adc h
	sbc a
	adc h
	cp a
	adc h
	cp a
	adc h
	cp a
	adc h
	cp a
	adc h
	cp a
	adc h
	cp $fe
	ld sp, $f931
	ld sp, $31fd
	db $fd
	ld sp, $31fd
	db $fd
	ld sp, $31fd
	rlca
	rlca
	add hl, bc
	add hl, bc
	dec d
	ld de, $212d
	ld e, l
	ld b, c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	ldh [$e0], a
	sub b
	sub b
	xor b
	adc b
	or h
	add h
	cp d
	add d
	cp l
	add c
	cp l
	add c
	cp l
	add c
	db $db
	db $db
	db $db
	db $db
	db $db
	db $db
	rst $38
	db $db
	rst $38
	db $db
	rst $38
	db $db
	rst $38
	db $db
	rst $38
	rst $38
	cp l
	add c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	cp l
	add c
	ld [hl], l
	ld b, h
	ld [hl], h
	ld b, h
	rst $28
	rst $28
	db $ec
	rst $08
	call c, $dcd7
	sub a
	cp h
	or a
	ld e, a
	ld d, e
	xor [hl]
	ld [hli], a
	ld l, $22
	rst $30
	rst $30
	scf
	di
	dec sp
	db $eb
	dec sp
	jp hl


	dec a
	db $ed
	ld a, [$bfca]
	add b
	cp a
	sbc b
	cp a
	and h
	rst $28
	jp nz, $c2c7

	rst $00
	add c
	rst $08
	add c
	rst $38
	rst $38
	db $fd
	ld bc, $19fd
	db $fd
	dec h
	rst $28
	ld b, e
	rst $00
	ld b, e
	rst $00
	add c
	rst $08
	add c
	rst $38
	rst $38
	cp a
	add b
	cp a
	add b
	cp a
	add b
	cp a
	add b
	cp a
	add b
	cp a
	add b
	cp a
	add b
	cp a
	add b
	db $fd
	ld bc, $01fd
	db $fd
	ld bc, $01fd
	db $fd
	ld bc, $01fd
	db $fd
	ld bc, $01fd
	sbc a
	or b
	sbc a
	or b
	sbc a
	or d
	sbc a
	or d
	sub a
	or d
	ld l, d
	ld l, d
	rla
	rlca
	ld a, b
	nop
	ld sp, hl
	dec c
	ld sp, hl
	dec c
	ld sp, hl
	ld c, l
	ld sp, hl
	ld c, l
	jp hl


	ld c, l
	ld d, [hl]
	ld d, [hl]
	add sp, -$20
	ld e, $00
	ld e, a
	ld b, b
	rst $18
	call z, $d2df
	rst $30
	pop hl
	db $e3
	pop hl
	db $e3
	ret nz

	rst $20
	ret nz

	rst $38
	rst $38
	ld e, $1e
	or a
	and c
	scf
	ld hl, $2137
	scf
	ld hl, $3f21
	scf
	ld hl, $9e9e
	rst $10
	add c
	rst $10
	add c
	rst $38
	rst $38
	rst $10
	add c
	rst $10
	add c
	ld a, [hl]
	ld a, [hl]
	nop
	inc a
	ld a, [hl]
	ld a, [hl]
	nop
	nop
	inc e
	nop
	cp a
	nop
	ld a, a
	nop
	jr c, jr_002_526a

jr_002_526a:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc c
	nop
	sbc a
	nop
	ld h, b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc a
	nop
	adc $00
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0700
	nop
	inc b
	nop
	inc e
	nop
	stop
	jr nz, jr_002_529f

jr_002_529f:
	jr nz, jr_002_52a1

jr_002_52a1:
	db $fc
	nop
	add [hl]
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	inc b
	nop
	inc b
	nop
	nop
	nop
	nop
	nop
	add b
	nop
	cp b
	nop
	xor $00
	add e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	add b
	nop
	inc bc
	nop
	ld a, $00
	ld h, b
	nop
	ld h, b
	rra
	ld h, b
	ld [bc], a
	dec a
	nop
	ld b, $00
	nop
	nop
	ldh [rP1], a
	inc e
	ld [$1806], sp
	ld b, $d0
	inc c
	ld [hl], b
	adc b
	nop
	ldh a, [rP1]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc e
	nop
	cp a
	nop
	ld a, a
	nop
	jr c, jr_002_52fe

jr_002_52fe:
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_5305:
	nop
	nop
	nop
	inc c
	nop
	sbc a
	nop
	ld h, b
	nop
	nop
	nop
	nop
	jr nz, jr_002_531f

	jr nc, jr_002_5321

	jr nc, jr_002_5326

	db $10
	rrca
	db $10
	inc bc
	inc e
	nop
	rlca
	nop

jr_002_531f:
	nop
	nop

jr_002_5321:
	nop
	nop
	nop
	nop
	nop

jr_002_5326:
	nop
	nop
	ret nz

	ld bc, $03fc
	ret nz

	ccf
	nop
	cp $00
	ld bc, $0000
	nop
	nop
	nop
	add b
	ld b, c
	add b
	ld a, a
	add b
	jr c, jr_002_5305

	nop
	ccf
	nop
	ldh a, [rP1]
	jr jr_002_535d

	inc b
	sbc b
	inc b
	or b
	ld c, h
	nop
	ldh a, [rP1]
	add b
	nop
	nop
	ld a, [$abfe]
	db $db
	adc d
	rst $30
	pop hl
	ld a, l
	cp e
	ei
	ld [$6aff], a

jr_002_535d:
	ei
	xor [hl]
	rst $38
	ld a, [$2cdb]
	cp a
	cp a
	rst $38
	ld a, $c7
	rst $08
	rst $38
	xor a
	cp a
	ei
	db $db
	dec hl
	rst $38
	cp e
	cp $fb
	rst $38
	sbc e
	ld a, a
	or b
	rst $28
	or d
	rst $38
	ld a, [hli]
	ld a, [$bbcf]
	cp e
	rst $38
	ld [hli], a
	ei
	db $fd
	sbc a
	ld [$aefb], a
	rst $18
	xor [hl]
	db $fd
	rst $30
	ei
	ld [$ee7b], a
	rst $38
	cp a
	ld a, a
	xor $cf
	ld l, [hl]
	rst $38
	and b
	rst $38
	or [hl]
	db $fd
	ld a, [$ba5f]
	rst $38
	xor d
	rst $38
	call c, $eeba
	rst $10
	xor [hl]
	rst $30
	xor e
	rst $30
	cp [hl]
	rst $28
	di
	ei
	adc d
	cp $ff
	rst $28
	call $07cf
	rst $38
	rst $28
	rst $18
	or h
	cp a
	ld h, e
	ei
	cp a
	rst $30
	cp [hl]
	ei
	xor b
	push af
	xor d
	rst $38
	rst $28
	rst $38
	ld a, [$bef7]
	rst $30
	rst $28
	db $fd
	ld [c], a
	ld a, [c]
	ei
	cp $be
	rst $38
	ld l, $bf
	ld [$2fff], a
	rst $38
	sbc a
	or a
	ld a, h
	and $ea
	ld l, a
	xor a
	rst $38
	or [hl]
	ei
	cp b
	ld a, [$fbef]
	ld a, a
	rst $38
	call $bc7b
	ei
	xor [hl]
	ld h, d
	xor [hl]
	rst $28
	ld a, [$eeff]
	rra
	rst $18
	db $f4
	jp c, $eeef

	rst $28
	ld a, [$fbff]
	db $fd
	ld e, e
	db $fc
	and $bf
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	ret nz

	nop
	ld h, b
	nop
	ld d, b
	nop
	ld c, b
	nop
	ld b, h
	nop
	ld d, d
	nop
	ld e, c
	nop
	ld c, c
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	ld b, c
	nop
	ld d, c
	nop
	ld e, c
	nop
	ld c, c
	nop
	ld b, c
	nop
	ld d, c
	nop
	ld e, c
	nop
	ld c, c
	add b
	nop
	add c
	nop
	add c
	nop
	add c
	nop
	add c
	nop
	add c
	nop
	add c
	nop
	add b
	nop
	ld bc, $8100
	nop
	add c
	nop
	add c
	nop
	add c
	nop
	add c
	nop
	add c
	nop
	ld bc, $0100
	nop
	rlca
	nop
	inc a
	nop
	scf
	nop
	ld e, $40
	ld e, l
	nop
	and $11
	ld a, l
	add b
	nop
	nop
	ldh [rP1], a
	jr c, jr_002_5486

jr_002_5486:
	ld e, $00
	ld [$cf04], a
	nop
	inc e
	ld [bc], a
	ei
	nop
	nop
	add d
	nop
	adc d
	nop
	sbc d
	nop
	sub d
	nop
	add d
	nop
	adc d
	nop
	sbc d
	nop
	sub d
	nop
	ld bc, $0100
	nop
	ld bc, $0100
	nop
	ld bc, $0100
	nop
	ld bc, $0100
	nop
	inc bc
	nop
	ld b, $00
	ld a, [bc]
	nop
	ld [de], a
	nop
	ld [hli], a
	nop
	ld c, d
	nop
	sbc d
	nop
	sub d
	nop
	rst $38
	nop
	ld bc, $0100
	nop
	ld bc, $0100
	nop
	ld bc, $0100
	nop
	ld bc, $8000
	nop
	rst $38
	nop
	ld b, b
	nop
	jr nz, jr_002_54d9

jr_002_54d9:
	stop
	ld [$0400], sp
	nop
	inc bc
	nop
	ld b, c
	nop
	pop bc
	nop
	ld hl, $1100
	nop
	add hl, bc
	nop
	dec b
	nop
	inc bc
	nop
	rst $38
	rst $28
	db $10
	inc sp
	call z, Call_002_720d
	nop
	rra
	nop
	dec bc
	nop
	ld bc, $0100
	jr nz, jr_002_550b

	ld l, h
	inc de
	jp hl


	ld d, $98
	ld b, [hl]
	ld b, b
	cp h
	nop
	ldh a, [rP1]

jr_002_550b:
	add b
	nop
	add b
	add hl, hl
	ret nz

	nop
	add d
	nop
	add e
	nop
	add h
	nop
	adc b
	nop
	sub b
	nop
	and b
	nop
	ret nz

	nop
	rst $38
	nop
	ld bc, $ff00
	nop
	ld [bc], a
	nop
	inc b
	nop
	ld [$1000], sp
	nop
	jr nz, jr_002_552f

jr_002_552f:
	ret nz

	ld bc, $0200
	nop
	inc b
	ld [bc], a
	inc b
	inc bc

jr_002_5538:
	inc b
	inc bc
	ld [$0807], sp
	rlca
	ld [$0004], sp
	ld bc, $0200
	nop
	inc b
	nop
	adc h
	nop
	db $fc
	nop
	ld hl, sp+$00
	ld [$0800], sp
	nop
	nop
	nop
	nop
	nop
	jr c, jr_002_556f

	inc h
	inc e
	ld [hli], a
	inc c
	ld [de], a
	nop
	ld c, $00
	nop
	nop
	add b
	nop
	add b
	nop
	rst $00
	nop
	ccf
	nop
	rra
	nop
	rra
	nop
	stop

jr_002_556f:
	db $10
	add b
	nop
	add b
	nop
	ret nz

	nop

jr_002_5576:
	jr nz, jr_002_5538

jr_002_5578:
	db $10
	ldh [rNR10], a
	ldh [rNR10], a
	ldh [rNR10], a
	nop
	ld [$0800], sp
	nop
	ld [$0406], sp
	inc bc
	inc b
	inc bc
	ld [bc], a
	ld bc, $0001
	ld bc, $0000
	ld [$0800], sp
	nop
	ld [$8400], sp
	nop
	db $ec
	nop
	cp $00
	rst $38
	nop
	pop bc
	nop
	stop
	jr nz, jr_002_55a5

jr_002_55a5:
	inc hl
	nop
	ccf
	nop
	ld a, a
	nop
	ld c, a
	nop
	add e
	nop
	add b
	stop
	jr nz, jr_002_55b4

jr_002_55b4:
	jr nz, jr_002_5576

	jr nz, jr_002_5578

	ld b, b
	add b
	ld b, b
	add b
	add b
	nop
	add b
	nop
	add b
	ld a, a
	ld h, b
	rlca
	stop
	ld [$0400], sp
	nop
	inc bc
	nop
	ld bc, $0100
	nop
	nop
	add b
	nop
	ldh [rP1], a
	stop
	ld [$0400], sp
	nop
	rrca
	nop
	ld sp, $c100
	nop
	ld bc, $0200
	nop
	inc b
	nop
	inc b
	nop
	ld [$1700], sp
	nop
	stop
	ld h, b
	ld bc, $02fe
	inc c
	inc b
	nop
	inc b
	nop
	ld [$1000], sp
	nop
	db $10

Call_002_55fd:
	ldh [$60], a
	nop
	ret nz

	nop
	jr nz, jr_002_5604

jr_002_5604:
	jr nz, jr_002_5622

	db $10
	inc bc
	ld [$0800], sp
	nop
	inc b
	nop
	inc bc
	nop
	nop
	ret nz

	nop
	jr nz, jr_002_5615

jr_002_5615:
	jr nz, jr_002_5617

jr_002_5617:
	ldh a, [rP1]
	ld [$0800], sp
	nop
	inc b
	nop
	inc bc
	nop
	nop

jr_002_5622:
	nop
	db $10
	db $10
	inc l
	inc a
	ld b, d
	ld a, $41
	ld a, $41
	inc e
	ld [hli], a
	nop
	inc e
	nop
	nop
	nop
	nop
	nop
	ld bc, $0700
	nop
	ld [$0800], sp
	nop
	ld [hl], b
	nop

jr_002_563f:
	add a
	nop
	add b
	nop
	add b
	ld bc, $063e
	ret nz

	ld [$0800], sp
	nop
	ld [hl], b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	nop
	nop
	nop
	nop
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
	ld b, e
	nop
	jr nz, jr_002_5667

jr_002_5667:
	inc e
	nop
	rra
	nop
	rlca
	nop
	inc bc
	nop
	ld bc, $0080
	ld b, b
	add b
	jr nz, jr_002_5676

jr_002_5676:
	db $10
	jr nz, jr_002_5691

	ld h, b
	inc b
	ld hl, sp+$02
	db $fc
	ld bc, $01ce
	nop
	ld [bc], a
	ld bc, $0304
	inc b
	nop
	ld [$1004], sp
	ld c, $20
	rra
	ldh [rSB], a
	nop

jr_002_5691:
	ret nz

	nop
	jr nz, jr_002_5695

jr_002_5695:
	ld de, $1700
	nop
	rra
	nop
	ld de, $0e00
	nop
	ld bc, $00c0
	jr nz, jr_002_56e4

	db $10
	ldh [rNR10], a
	ldh [rNR10], a
	ldh [rNR10], a
	ldh [$0e], a
	ld [hl], b
	ld bc, $010e
	nop
	ld bc, $0100
	nop
	ld b, $01
	ld [$3007], sp
	rrca
	ld b, b
	jr c, jr_002_563f

	nop
	nop
	ld bc, $8100
	nop
	add c
	nop
	sbc [hl]
	nop
	ld hl, sp+$00
	ldh a, [rP1]
	ret nz

	nop
	add b
	nop
	rst $38
	nop
	ld a, [c]
	nop
	inc b
	nop
	inc b
	nop
	ld [$7000], sp
	nop
	ldh [rP1], a
	ldh [rP1], a
	add e
	nop
	adc a

jr_002_56e4:
	nop
	ld a, a
	nop
	rra
	nop
	rlca
	nop
	ld bc, $0000
	nop
	nop
	nop
	pop bc
	nop
	ld [c], a
	nop
	cp $00
	ld hl, sp+$00
	ldh a, [rP1]
	add b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0700
	nop
	rra
	nop
	ld [hl], e
	nop
	pop bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add b
	nop
	ldh [rP1], a
	db $fc
	nop
	ld [c], a
	nop
	add c
	cp l
	add c
	ld h, [hl]
	ld e, d
	db $db
	inc h
	and l
	ld b, d
	and l
	ld b, d
	db $db
	inc h
	ld h, [hl]
	ld e, d
	cp l
	add c
	nop
	add b
	nop
	ld b, b
	nop
	jr nz, jr_002_5737

jr_002_5737:
	db $10
	inc b
	ld [$050b], sp
	dec b
	ld [bc], a
	ld b, $05
	nop
	nop
	nop
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
	add b
	add b
	add b
	nop
	nop
	nop
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
	ld bc, $0100
	nop
	ld [bc], a
	nop
	inc b
	nop
	ld [$1020], sp
	ret nc

	and b
	and b
	ld b, b
	ld h, b
	and b
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
	nop
	nop
	nop
	nop
	nop
	ldh [$28], a
	ret c

	ld a, [hl]
	adc [hl]
	daa
	ld e, c
	ld h, a
	ld e, l
	ccf
	dec l
	ccf
	inc hl
	ld e, $1f
	ld [bc], a
	nop
	rlca
	dec b
	rrca
	dec b
	dec de
	dec d
	ld a, [de]
	dec d
	ld a, [hli]
	dec d
	ld l, [hl]
	ld d, c
	cp a
	ld b, b
	ld b, b
	nop
	ldh [$a0], a
	ldh a, [$a0]
	ret c

	xor b
	ld e, b
	xor b
	ld d, h
	xor b
	db $76
	adc d
	db $fd
	ld [bc], a
	nop
	rlca
	inc d
	dec de
	ld a, [hl]
	ld [hl], c
	db $e4
	sbc d
	and $ba
	db $fc
	or h
	db $fc
	call nz, $f878
	ret nz

	ret nz

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	nop
	ld a, a
	nop
	ldh a, [rIF]
	add b
	ld [hl], b
	add b
	ld c, a
	nop
	nop
	nop
	nop
	rrca
	nop
	rst $38
	nop
	ldh a, [rIF]
	nop
	ldh a, [rP1]

jr_002_57ed:
	rrca
	rrca
	rst $38
	nop
	nop
	rrca
	nop
	rst $38
	nop
	ldh a, [rIF]
	nop
	ldh a, [rP1]
	rrca
	rrca
	rst $38
	ldh a, [$f0]
	rrca
	nop
	rst $38
	nop
	pop af
	ld c, $00
	di
	nop
	dec c
	inc c
	cp $f2
	di
	ld bc, $8001
	nop
	ret nz

	nop
	ldh [rP1], a
	ldh a, [rP1]
	ld a, b
	add b

jr_002_581a:
	inc a
	ret nz

	rra
	ld h, e
	ld c, $b7
	ld bc, $0103
	inc bc
	nop
	inc bc
	ld [bc], a
	rlca
	ld bc, $7e1f
	ld bc, $fe81
	ld a, l
	cp $c0
	jr c, jr_002_581a

	ld b, $5f
	sbc [hl]
	inc a
	xor h
	jr nc, jr_002_57ed

	ld [hl], b
	ld [hl], h
	ld h, b
	ld l, b
	ld h, b
	add hl, bc
	inc bc
	inc e
	rst $20
	ld h, b
	ld a, [$3c79]
	dec [hl]
	inc c
	call Call_002_6e0e
	ld b, $76
	ld b, $f0
	add b
	ret nz

	add b
	ret nz

	nop
	ret nz

	ld b, b
	ldh [$80], a
	ld hl, sp+$7e
	add b
	add c
	ld a, a
	cp [hl]
	ld a, a
	ld bc, $0300
	nop
	rlca
	nop
	rrca
	nop
	ld e, $01
	inc a
	inc bc
	ld hl, sp-$3a
	ld [hl], b
	db $ed
	ldh a, [rP1]
	rst $38
	nop
	adc a
	ld [hl], b
	nop
	rst $08
	nop
	or b
	jr nc, @+$81

	ld c, a
	rst $08
	add b
	add b
	nop
	nop
	ldh a, [rP1]
	rst $38
	nop
	rrca
	ldh a, [rP1]
	rrca
	nop
	ldh a, [$f0]
	rst $38
	rrca
	rrca
	nop
	nop
	nop
	nop
	ldh a, [rP1]
	rst $38
	nop
	rrca
	ldh a, [rP1]
	rrca
	nop
	ldh a, [$f0]
	rst $38
	nop
	nop
	nop
	nop
	nop
	nop
	ldh a, [rP1]
	cp $00
	rrca
	ldh a, [rSB]
	ld c, $01
	ld a, [c]
	add b
	ld c, a
	add b
	ld [hl], b
	ldh a, [rIF]
	ld a, a
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	rst $38
	nop
	rrca
	nop
	ldh a, [$f0]
	rrca
	rst $38
	nop
	rrca

jr_002_58cb:
	nop
	nop
	nop
	nop
	nop
	ldh a, [$f0]
	rrca
	rst $38
	nop
	rrca
	nop
	ldh a, [$f0]
	rrca
	rst $38
	nop
	rrca
	nop
	nop
	nop
	ld bc, $f201
	di
	inc c
	cp $00
	dec c
	nop
	di
	pop af
	ld c, $ff
	nop
	rrca
	nop
	ld c, $b7
	rra
	ld h, e
	inc a
	ret nz

	ld a, b
	add b
	ldh a, [rP1]
	ldh [rP1], a
	ret nz

	nop
	add b
	nop
	ld a, l
	cp $81
	cp $7e
	ld bc, $1f01
	ld [bc], a
	rlca
	nop
	inc bc
	ld bc, $0103
	inc bc
	ld h, b
	rrca
	ld h, b
	ld l, c
	ld [hl], b
	ld [hl], a
	jr nc, jr_002_58cb

	inc a
	xor h
	ld e, a
	sbc [hl]
	rst $20
	ld b, $c0
	jr c, jr_002_5927

	ldh a, [rTMA]
	or $0e
	xor $0c

jr_002_5927:
	call $353c
	ld a, [$e779]
	ld h, b
	inc bc
	inc e
	cp [hl]
	ld a, a
	add c
	ld a, a
	ld a, [hl]
	add b
	add b
	ld hl, sp+$40
	ldh [rP1], a
	ret nz

	add b
	ret nz

	add b
	ret nz

	ld [hl], b
	db $ed
	ld hl, sp-$3a
	inc a
	inc bc
	ld e, $01
	rrca
	nop
	rlca
	nop
	inc bc
	nop
	ld bc, $8000
	add b
	ld c, a
	rst $08
	jr nc, @+$81

	nop
	or b
	nop
	rst $08
	adc a
	ld [hl], b
	rst $38
	nop
	ldh a, [rP1]
	rrca
	rrca
	ldh a, [rIE]
	nop
	ldh a, [rP1]
	rrca
	rrca
	ldh a, [rIE]
	nop
	ldh a, [rP1]
	nop
	nop
	ldh a, [rIE]
	nop
	ldh a, [rP1]
	rrca
	rrca
	ldh a, [rIE]
	nop
	ldh a, [rP1]
	nop
	nop
	nop
	nop
	ld bc, $01f2
	ld c, $0f
	ldh a, [$fe]
	nop
	ldh a, [rP1]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	inc bc
	ld e, $1f
	ccf
	inc hl
	ccf
	dec l
	ld h, a
	ld e, l
	daa
	ld e, c
	ld a, [hl]
	adc [hl]
	jr z, @-$26

	nop
	ldh [$c6], a
	ld a, [$fac6]
	add $7a
	add $7a
	ld a, [hl]
	jr @+$68

	ld a, [hl]
	ld b, d
	inc a
	ld b, d
	inc a
	ld h, e
	ld e, a
	ld h, e
	ld e, a
	ld h, e
	ld e, [hl]
	ld h, e
	ld e, [hl]
	ld a, d
	inc e
	ld h, [hl]
	ld a, [hl]
	ld b, d
	inc a
	ld b, d
	inc a
	ld a, b
	ld hl, sp-$04
	call nz, $b4fc
	and $ba
	db $e4
	sbc d
	ld a, [hl]
	ld [hl], c
	inc d
	dec de
	nop
	rlca
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_59e6:
	nop
	nop
	nop
	nop

jr_002_59ea:
	nop
	nop
	nop
	nop
	ret nz

	ret nz

jr_002_59f0:
	ld b, $05
	dec b
	ld [bc], a
	dec bc
	dec b
	inc b
	ld [$1000], sp
	nop
	jr nz, jr_002_59fd

jr_002_59fd:
	ld b, b
	nop
	add b
	add b
	add b
	add b
	add b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc a
	jr @+$26

	inc a
	inc h
	jr @+$26

	jr jr_002_5a3d

	jr jr_002_5a3f

	jr jr_002_5a59

	jr jr_002_5a43

	inc a
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
	ld h, b
	and b
	and b
	ld b, b
	ret nc

	and b
	jr nz, jr_002_5a48

	nop
	ld [$0400], sp
	nop

jr_002_5a3d:
	ld [bc], a
	nop

jr_002_5a3f:
	ld bc, $0000
	nop

jr_002_5a43:
	nop
	nop
	nop
	nop
	nop

jr_002_5a48:
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
	add c
	nop
	cp l
	nop
	and l
	nop
	and l

jr_002_5a59:
	nop
	cp l
	nop
	add c
	nop
	rst $38
	nop
	inc a
	add c
	jr c, jr_002_59e6

	jr nc, jr_002_59ea

	jr nz, jr_002_59f0

	nop
	sub b
	nop
	and b
	nop
	ret nz

	nop
	rst $38
	nop
	rst $38
	nop
	nop
	nop
	nop
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
	rst $38
	nop
	inc bc
	nop
	dec b
	nop
	add hl, bc
	inc b
	ld de, $210c
	inc e
	ld b, c
	inc a
	add c
	add hl, bc
	nop
	add hl, bc
	nop
	add hl, bc
	nop
	add hl, bc
	nop
	add hl, bc
	nop
	add hl, bc
	nop
	add hl, bc
	nop
	add hl, bc
	nop
	ld [hl], b
	nop
	ld [hl], b
	nop
	ld [hl], b
	nop
	ld [hl], b
	nop
	ld [hl], b
	nop
	ld [hl], b
	nop
	ld [hl], b
	nop
	ld [hl], b
	nop
	inc a
	add c
	inc a
	add c
	inc a
	add c
	inc a
	add c
	inc a
	add c
	inc a
	add c
	inc a
	add c
	inc a
	add c
	nop
	nop
	nop
	nop
	rst $38
	nop
	nop
	nop
	rst $38
	nop
	rst $38
	nop
	nop
	nop
	nop
	nop
	add hl, bc
	nop
	add hl, bc
	nop
	jp hl


	nop
	add hl, bc
	nop
	jp hl


jr_002_5ad9:
	nop
	jp hl


	nop
	add hl, bc
	nop

jr_002_5ade:
	add hl, bc
	nop
	ld [hl], b
	nop
	ld [hl], b

jr_002_5ae3:
	nop
	ld [hl], a
	nop
	ld [hl], b
	nop
	ld [hl], a
	nop
	ld [hl], a
	nop
	ld [hl], b
	nop
	ld [hl], b
	nop
	nop
	rst $38
	nop
	ret nz

	rrca
	and b
	rlca
	sub b
	inc hl
	adc b
	ld sp, $3884
	add d
	inc a
	add c
	nop
	rst $38
	nop
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	nop
	nop
	nop
	rst $38
	nop
	rst $38
	nop
	inc bc
	ldh a, [rTIMA]
	ldh [$09], a
	ret nz

	ld de, $2180
	nop
	ld b, c
	nop
	add c
	nop
	add c
	nop
	add c
	nop
	add c
	nop
	add c
	nop

jr_002_5b29:
	add c
	nop

jr_002_5b2b:
	add c
	nop
	add c
	nop
	add c
	nop
	add c
	nop
	add d
	ld bc, $0384
	adc b
	rlca
	sub b
	rrca
	and b
	nop
	ret nz

	nop
	rst $38
	inc l
	nop
	inc l
	nop
	inc l
	nop
	inc l
	nop
	inc l
	nop
	inc l
	nop
	inc l
	nop
	inc l
	nop
	rst $38
	nop
	add b
	nop
	add b
	ccf
	add b
	jr nc, jr_002_5ad9

	jr z, jr_002_5ade

	inc h
	add h
	jr nz, jr_002_5ae3

	ld hl, $00ff
	ld bc, $0100
	db $fc
	ld bc, $010c
	inc d
	pop bc
	inc h
	ld hl, $2104
	add h
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
	nop
	nop
	nop
	nop
	rst $38
	nop
	inc l
	nop
	inc l
	nop
	inc l
	nop
	nop
	nop
	rst $38
	nop
	nop
	nop
	nop
	nop
	rst $38
	nop
	inc a
	add c
	inc e
	ld b, c
	adc h
	ld hl, $11c4
	ldh [$09], a
	ldh a, [rTIMA]
	nop
	inc bc
	nop
	rst $38
	add h
	ld hl, $2084
	add e
	inc h
	add b
	jr z, jr_002_5b29

	jr nc, jr_002_5b2b

	ccf
	add b
	nop
	rst $38
	nop
	ld hl, $2184
	inc b
	pop bc
	inc h
	ld bc, $0114
	inc c
	ld bc, $01fc
	nop
	rst $38
	nop
	nop
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	nop
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
	rst $38
	nop
	rst $38
	nop
	nop
	nop
	inc l
	nop
	inc l
	nop
	inc l
	nop
	nop
	rst $38
	nop
	ret nz

	nop
	and b
	nop
	sub b
	nop
	adc b
	nop
	add h
	nop
	add d
	nop
	add c
	nop
	add c
	nop
	ld b, c
	nop
	ld hl, $1100
	nop
	add hl, bc
	nop
	dec b
	nop
	inc bc
	nop
	rst $38
	nop
	nop
	nop
	nop
	nop
	rst $38
	nop
	nop
	rst $38
	nop
	rst $38
	nop
	nop
	nop
	nop
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	add b
	nop
	rst $38
	nop
	rst $38
	nop
	add b
	nop
	rst $38
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
	rst $38
	nop
	nop
	nop
	rst $38
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
	add b
	nop
	nop
	nop
	add b
	nop
	add c
	add c
	add c
	rst $38
	add c
	rst $38
	rst $38
	rst $38
	add c
	add c
	add c
	rst $38
	add c
	rst $38
	rst $38
	rst $38
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	ld sp, hl
	ld bc, $01f9

jr_002_5c74:
	ld sp, hl
	ld bc, $01f9
	ld sp, hl
	ld bc, $01f9
	ld sp, hl
	ld bc, $01f9
	rst $20
	rst $20
	cp l
	sbc c
	cp l
	sbc c
	cp l
	sbc c
	cp l
	sbc c
	cp l
	sbc c
	db $fd
	sbc c
	rst $20
	rst $20
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b
	sbc a
	add b

jr_002_5ca0:
	ld c, a
	ld a, b
	ld c, a
	ld a, e
	ld c, a
	ld a, e
	ld c, a
	ld a, b
	ld c, a
	ld a, b
	ld c, a
	ld a, e
	ld c, a
	ld a, e
	ld c, a
	ld a, b
	ld a, [c]
	ld e, $f2
	sbc $f2
	sbc $f2
	ld e, $f2
	ld e, $f2
	sbc $f2
	sbc $f2
	ld e, $e7
	nop
	db $db
	jr jr_002_5ca0

	jr jr_002_5c74

	inc h
	xor l
	inc h
	ld c, [hl]
	ld b, d
	ld c, [hl]
	ld b, d
	rst $08
	jp $00c7


	rst $18
	jr @-$1f

	jr @-$1f

	jr @-$1f

	jr @-$1f

	jr jr_002_5cf5

	jr @+$01

	rst $38
	ld c, a
	ld a, b
	rst $38
	ldh a, [$9f]
	add b
	sbc a
	add b
	rst $38
	rst $38
	adc a
	add b
	ld b, b
	ld b, b
	ccf
	ccf
	ld a, [c]
	ld e, $ff
	rrca
	ld sp, hl

jr_002_5cf5:
	ld bc, $01f9
	rst $38
	rst $38
	pop af
	ld bc, $0202
	db $fc
	db $fc
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	cp $00
	db $fc
	nop
	ld hl, sp+$00
	pop af
	ld bc, $02e2
	call nz, $8804
	ld [$1010], sp
	jr nz, jr_002_5d3c

	ld b, b
	ld b, b
	add b
	add b
	inc a
	inc a
	ld a, [hl]
	ld a, [hl]
	ld c, [hl]
	ld b, d
	ld c, [hl]
	ld b, d
	ld a, [hl]
	ld a, [hl]
	ld c, [hl]
	ld b, d
	ld a, [hl]
	ld a, [hl]
	ld c, [hl]
	ld b, d
	rrca
	rrca
	rra
	rra
	ld h, $20
	ld h, $20
	ld h, $20
	ccf
	ccf

jr_002_5d3c:
	ld h, $20
	ld h, $20
	ldh a, [$f0]
	ld hl, sp-$08
	call z, $cc34
	inc [hl]
	call z, $fc34
	db $fc
	call z, $cc34
	inc [hl]
	rst $38
	ld a, [hl]
	rst $38
	ld a, [hl]
	rst $38
	nop
	rst $38
	nop
	rst $38
	ld a, [hl]
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rrca
	di
	inc e
	db $ec
	inc sp
	db $d3
	ld l, b
	xor a
	ret nc

	ld e, b
	ret nz

	ld d, b
	and b
	or b
	and b
	or b
	ldh a, [$cf]
	jr c, jr_002_5dab

	call z, Call_002_76cb
	push af
	dec de
	ld a, d
	dec bc
	ld a, [hld]
	dec c
	dec a
	dec c
	dec a
	rst $38
	ld a, [hl]
	rst $38
	ld a, [hl]
	rst $38
	nop
	rst $38
	ld a, [hl]
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	adc a
	add b
	ld b, a
	ld b, b
	inc hl
	jr nz, jr_002_5da8

	db $10
	ld [$0408], sp
	inc b
	ld [bc], a
	ld [bc], a
	ld bc, $ff01
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop

jr_002_5da8:
	rst $38
	nop
	ld a, a

jr_002_5dab:
	nop

jr_002_5dac:
	ccf
	nop
	rra
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	nop
	nop
	nop
	nop
	rst $38
	rst $38
	ld c, [hl]
	ld b, d
	ld c, [hl]
	ld b, d
	ld c, [hl]
	ld b, d
	ld c, [hl]
	ld b, d
	ld c, [hl]
	ld b, d
	inc a
	inc a
	inc l
	inc h
	jr @+$1a

jr_002_5dd0:
	ccf
	ccf
	ld h, $22
	ld h, $22
	ld h, $22
	ld h, $22
	ld h, $22
	ld h, $22
	ld h, $22
	db $fc
	db $fc
	call z, $cc74
	ld [hl], h
	call z, $cc74
	ld [hl], h
	call z, $cc74
	ld [hl], h
	call z, $e774
	nop
	db $db
	jr jr_002_5dd0

	jr jr_002_5dac

	inc h
	or l
	inc h
	ld [hl], d
	ld b, d
	ld [hl], d
	ld b, d
	di
	jp $b0a0


	and b
	cp b
	ret nc

	ld e, a
	ret c

	ld e, a
	rst $28
	cpl
	di
	inc de
	db $fc
	inc c
	rst $38
	inc bc
	dec c
	dec a
	dec c
	ld a, l
	dec de
	ld a, [$fa3b]
	rst $30
	db $f4
	rst $08
	ret z

	ccf
	jr nc, @+$01

	ret nz

	ld h, $20
	ld h, $20
	ld h, $20
	ld h, $20
	ld h, $20
	ld h, $20
	ld h, $20
	ld h, $20
	call z, $cc34
	inc [hl]
	call z, $cc34
	inc [hl]
	call z, $cc34
	inc [hl]
	call z, $cc34
	inc [hl]
	rst $00
	add b
	rst $18
	sbc b
	rst $18
	sbc b
	rst $18
	sbc b
	rst $18
	sbc b
	rst $18
	sbc b
	sbc b
	sbc b
	ld a, a
	ld a, a
	rst $00
	ld bc, $19df
	rst $18
	add hl, de
	rst $18
	add hl, de
	rst $18
	add hl, de
	rst $18
	add hl, de
	add hl, de
	add hl, de
	cp $fe
	rst $20
	rst $20
	cp l
	sbc c
	cp l
	sbc c
	cp l
	sbc c
	cp l
	sbc c
	cp l
	sbc c
	cp a
	sbc c
	rst $20
	rst $20
	ccf
	ccf
	ld b, b
	ld b, b
	adc a
	add b
	rst $38
	rst $38
	sbc a
	add b
	sbc a
	add b
	rst $38
	ldh a, [rVBK]
	ld a, b
	db $fc
	db $fc
	ld [bc], a
	ld [bc], a
	pop af
	ld bc, $ffff
	ld sp, hl
	ld bc, $01f9
	rst $38
	rrca
	ld a, [c]

jr_002_5e8f:
	ld e, $1f
	rra
	rlca
	rlca
	rrca
	rrca
	add hl, bc
	ld [$0809], sp
	add hl, bc
	ld [$0809], sp
	rlca
	rlca
	ld hl, sp-$08
	ldh [$e0], a
	ldh a, [$f0]
	ld d, b
	jr nc, jr_002_5ef9

	jr nc, @+$52

	jr nc, jr_002_5efd

	jr nc, jr_002_5e8f

	ldh [$3c], a
	inc a
	ld a, [hl]
	ld a, [hl]
	ld [hl], d
	ld b, d
	ld [hl], d
	ld b, d
	ld a, [hl]
	ld a, [hl]
	ld [hl], d
	ld b, d
	ld a, [hl]
	ld a, [hl]
	ld [hl], d
	ld b, d
	ld [hl], d
	ld b, d
	ld [hl], d
	ld b, d
	ld [hl], d
	ld b, d
	ld [hl], d
	ld b, d
	ld [hl], d
	ld b, d
	inc a
	inc a
	inc [hl]
	inc h
	jr jr_002_5ee8

	nop
	jr nc, jr_002_5ed3

jr_002_5ed3:
	inc d
	nop
	jr c, jr_002_5ed7

jr_002_5ed7:
	db $ed
	nop
	ld b, $00
	adc h
	nop
	ld c, d
	nop
	db $10
	ld hl, $9200
	nop
	inc h
	nop
	jr nz, jr_002_5ee8

jr_002_5ee8:
	add h
	nop
	ld [$3000], sp
	nop
	add b
	nop
	nop
	ldh [$d0], a
	jr nz, jr_002_5ef5

jr_002_5ef5:
	jr nc, jr_002_5ef7

jr_002_5ef7:
	ld h, b
	db $10

jr_002_5ef9:
	ld b, b
	ld [$0160], sp

jr_002_5efd:
	ld a, $08
	inc bc
	nop
	rlca
	dec bc
	inc b
	nop
	inc c
	nop
	ld b, $08
	ld [bc], a
	db $10
	ld b, $80
	ld a, h
	db $10
	ret nz

	add h
	nop
	ld c, c
	nop
	inc h
	nop
	inc b
	nop
	ld hl, $1000
	nop
	inc c
	nop
	ld bc, $0000
	jr nc, jr_002_5f23

jr_002_5f23:
	inc d
	nop
	jr c, jr_002_5f27

jr_002_5f27:
	db $ed
	nop
	ld b, $00
	adc h
	ld b, b
	ld a, [bc]
	stop
	inc c
	nop
	ld [de], a
	nop
	ld [hld], a
	nop
	ld b, b
	ld [bc], a
	ld b, b
	inc hl
	inc c
	ld [de], a
	nop
	add b
	ret z

	nop
	ldh [rP1], a
	jr nc, jr_002_5f50

	jr z, jr_002_5f4a

	ld h, [hl]
	nop
	sub h
	ld b, d

jr_002_5f4a:
	ld a, l
	ld [bc], a
	ld sp, $2104
	db $10

jr_002_5f50:
	sub b
	nop
	ld b, b
	nop
	dec b
	nop
	ld [hli], a

jr_002_5f57:
	nop
	inc h
	nop
	ld d, h
	nop
	ld [bc], a
	nop
	adc b
	nop
	ld [hl], b
	ld [$7884], sp
	add c
	ld [bc], a
	call nz, Call_002_6803
	nop
	daa
	ld b, b
	jr c, jr_002_5fb2

	nop
	jr c, jr_002_5f91

	sub d
	ld b, [hl]
	jr nc, jr_002_5f57

	ld bc, $c10a
	ld [bc], a
	add hl, de
	inc b
	ld [bc], a
	inc a
	ret nz

	nop
	jr c, jr_002_5f82

	nop

jr_002_5f82:
	inc c
	nop
	stop
	ld hl, $0400
	nop
	inc h
	nop
	ld c, c
	nop
	add h
	nop
	add hl, bc

jr_002_5f91:
	nop

jr_002_5f92:
	ld [bc], a
	nop
	and b
	nop
	ld b, h
	nop
	inc h
	nop
	ld a, [hli]
	nop

jr_002_5f9c:
	ld b, b
	nop
	ld de, $8000
	nop
	jr nc, jr_002_5fa4

jr_002_5fa4:
	ld [$8400], sp
	nop
	jr nz, jr_002_5faa

jr_002_5faa:
	inc h
	nop
	sub d
	nop
	ld hl, $1c00
	nop

jr_002_5fb2:
	ld [bc], a
	nop
	ld b, d
	nop
	ld b, b
	ld [bc], a
	nop
	inc bc
	ld c, h
	ld [bc], a
	add b
	nop
	ret z

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0600
	nop
	add hl, bc
	nop
	ld d, $01
	add hl, hl
	ld b, $00
	nop
	inc c
	nop
	ld [hl], d
	nop
	adc l
	nop
	ld [hl], d
	inc c
	adc l
	ld [hl], b
	ld a, h
	add b
	ld a, [c]
	inc c
	nop
	nop
	jr nc, jr_002_5fe4

jr_002_5fe4:
	ld c, [hl]
	nop
	or c
	nop
	ld c, [hl]
	jr nc, jr_002_5f9c

	ld c, $3e
	ld bc, $304f
	nop
	nop
	nop
	nop
	nop
	nop
	add b
	nop
	ld h, b
	nop
	sub b
	nop
	ld l, b
	add b
	sub h
	ld h, b
	ld d, a
	ld [$112e], sp
	ret c

	daa
	ld sp, $e64e
	add hl, de
	ld e, b
	and a
	and b
	ld e, a
	rst $08
	jr nc, jr_002_5f92

	ld a, [hl]
	inc c
	ld a, [c]
	ld [hl], e
	adc h
	add c
	ld a, [hl]
	ld bc, $02fe
	db $fc
	ld a, h
	add d
	add e
	ld a, [hl]
	add c
	ld a, [hl]
	jr nc, @+$51

	adc $31
	add c
	ld a, [hl]
	add b
	ld a, a
	ld b, b
	ccf
	ld a, $41
	pop bc
	ld a, [hl]
	ld [$7410], a
	adc b
	dec de
	db $e4
	adc h
	ld [hl], d
	ld h, a
	sbc b
	ld a, [de]
	push hl
	dec b
	ld a, [$0cf3]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0000
	rlca
	inc b
	jr @+$62

	db $10
	or b
	rst $08
	ld b, b
	rst $38
	or b
	rst $38
	ld c, a
	ld a, a
	ld [hl], b
	ld a, a
	ccf
	ccf
	rrca
	rrca
	nop
	nop
	inc bc
	cp $04
	db $fc
	dec de
	ld hl, sp-$4a
	pop af
	ld [hl], l
	jp $c3e1


	ret nz

	stop
	db $10
	ret nz

	ld a, a
	jr nz, jr_002_60b3

	ret c

	rra
	ld l, l
	adc a
	xor [hl]
	jp $c387


	inc bc
	ld [$0800], sp
	dec c
	di
	ld [bc], a
	rst $38
	dec c
	rst $38
	ld a, [c]
	cp $0e
	cp $fc
	db $fc
	ldh a, [$f0]
	nop
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
	ldh [rNR41], a
	jr jr_002_60a5

	ld [$6000], sp
	add b
	ld b, b
	nop

jr_002_60a5:
	add b
	ld b, b
	add b
	ld b, b
	jr nz, jr_002_60cb

	nop
	stop
	stop
	nop
	ld b, $00

jr_002_60b3:
	inc c
	nop
	jr @+$12

	jr nz, jr_002_60b9

jr_002_60b9:
	jr nz, jr_002_60db

	ld b, b
	nop
	ld h, b
	jr nz, jr_002_6100

	nop
	ld b, $01
	ld [bc], a
	nop
	ld bc, $0102
	ld [bc], a
	inc b
	inc b

jr_002_60cb:
	nop
	ld [$0800], sp
	nop
	nop
	ld h, b
	nop
	jr nc, jr_002_60d5

jr_002_60d5:
	jr jr_002_60df

	inc b
	nop
	inc b
	inc b

jr_002_60db:
	ld [bc], a
	nop
	ld b, $04

jr_002_60df:
	ld [bc], a
	ld a, [hld]
	rst $38
	ld [$dafb], a
	rst $38
	ld [$9efd], a
	rst $38
	db $ec
	ei
	xor a
	di
	xor a
	push af
	xor a
	rst $08
	ld l, a
	or a
	rst $38
	rst $18
	cp c
	or a
	rst $38
	sbc a
	di
	rst $38
	ld sp, hl
	or l
	or a
	rst $38

jr_002_6100:
	or $77
	cp [hl]
	ld l, a
	db $eb
	rst $38
	xor [hl]
	rst $30
	xor $f7
	ld [$bbef], a
	cp a
	xor $ff
	ld a, [$7a7c]
	ld a, a
	cp $df
	xor $df
	add sp, -$02
	ld l, d
	rst $38
	xor l
	rst $38
	xor [hl]
	rst $28
	ld a, [$bbff]
	db $fc
	db $fd
	db $fd
	ld sp, hl
	rst $38
	and [hl]
	rst $38
	xor d
	rst $30
	or l
	ei
	ld [hld], a
	rst $18
	cp d
	ld l, a
	jp c, $a96f

	rst $38
	cp $bf
	ld a, [$a28f]
	rst $28
	rst $38
	rst $38
	cp d
	rst $38
	rst $38
	rst $38
	xor e
	rst $38
	cp $fb
	jr c, @+$01

	cp [hl]
	rst $38
	cp [hl]
	rst $38
	ld [$9bff], a
	db $fd
	and h
	ei
	xor $ff
	cpl
	cp $ee
	rst $38
	db $eb
	rst $38
	xor c
	di
	or e
	cp a
	rst $38
	cp $e8
	rst $28
	cp e
	cp a
	sbc d
	rst $28
	xor d
	rst $38
	xor a
	rst $20
	cp e
	cp $f7
	cp $ae
	db $fd
	xor d
	rst $38
	ld a, [c]
	cp a
	xor $ff
	cp d
	rst $38
	ld l, $f9
	add sp, -$01
	cp a
	cp a
	cp e
	rst $38
	cp d
	ei
	ld hl, sp+$7d
	xor [hl]
	ei
	ccf
	rst $38
	add a
	rst $38
	ld sp, hl
	rst $38
	ld a, [$bafd]
	rst $38
	ld a, [hl]
	di
	xor c
	rst $38
	cp a
	rst $38
	cp e
	rst $38
	db $eb
	rst $38
	cp [hl]
	rst $38
	jp c, $2af5

	rst $28
	adc a
	rst $38
	ld l, [hl]
	ei
	cp d
	rst $28
	ei
	rst $38
	jp z, $effd

	db $dd
	xor e
	rst $30
	adc $ff
	adc d
	cp a
	db $fc
	cp c
	jp z, $cab7

	rst $38
	cp $bf
	inc [hl]
	rst $38
	db $db
	rst $38
	xor $ff
	ld l, [hl]
	db $eb
	db $db

jr_002_61c3:
	rst $18
	cp l
	ld a, $ab
	db $fc
	ld a, [$fa7e]
	sbc a
	xor d
	rst $18
	ei
	ld a, a
	ld l, d
	rst $28
	ld [$9a7f], a
	db $ed
	ld l, $bf
	cp e
	rst $38
	ldh a, [rIE]
	ei
	rst $18
	xor d
	ld a, a
	db $fc
	rst $18
	cp $dd
	ld a, [$fdbb]
	db $76
	db $eb
	or $ef
	rst $38
	db $eb
	db $db
	db $e4
	rst $38
	sbc d
	ld a, a
	xor d
	ld [hl], l
	rst $08
	rst $28
	ld [$cfff], a
	rst $38
	cpl
	db $fd
	cp e
	cp l
	cp $ff
	cp d
	rst $38
	and l
	db $fd
	ld l, e
	rst $18
	ld e, a
	rst $38
	cp $fb
	xor $cf
	adc [hl]
	rst $18
	jr c, jr_002_61c3

	sbc [hl]
	ei
	xor $d7
	cp d
	rst $38
	db $eb
	rst $38
	cp d
	or $eb
	rst $18
	db $eb
	rst $38
	xor [hl]
	cp a
	sbc [hl]
	rst $28
	xor c
	db $fd
	rst $28
	rst $38
	xor e
	sbc a
	rst $28
	cp $be
	xor $eb
	rst $38
	xor $ff
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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

jr_002_6244:
	nop
	nop
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	inc c
	nop
	jr nz, jr_002_6290

	nop
	nop
	nop
	nop
	rra
	nop
	jr nc, jr_002_6258

jr_002_6258:
	jr nz, jr_002_629a

	ret nz

	nop
	ret nz

	nop
	ld b, b
	add b
	nop
	nop
	nop
	ld bc, $0001
	ld h, b
	ld bc, $01c2
	ld b, $00
	inc c
	ld [bc], a
	add hl, bc
	ld [bc], a
	add b
	nop
	add b
	nop
	nop
	nop
	nop
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
	add b
	jr nz, jr_002_6244

	db $10
	ld h, b
	ld [$0510], sp
	ld a, [bc]
	nop
	nop
	jr nz, jr_002_628e

jr_002_628e:
	jr nc, jr_002_6290

jr_002_6290:
	nop
	nop
	nop
	nop
	nop
	ld bc, $0022
	nop
	ld [bc], a

jr_002_629a:
	inc b
	nop
	inc d
	nop
	ld [bc], a
	inc h
	jr nz, jr_002_62e5

	add b
	ld bc, $0100
	nop
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
	ld h, d
	add b
	inc e
	ld [c], a
	nop
	inc a
	inc b
	nop
	inc b
	nop
	ld [$0800], sp
	nop
	db $10
	jr nz, jr_002_62cb

	db $10
	inc b
	jr jr_002_62ca

	inc c
	nop
	rlca

jr_002_62ca:
	nop

jr_002_62cb:
	ld bc, $0000
	nop
	nop
	inc hl
	inc b
	ld h, c
	ld [bc], a
	ld b, b
	ld bc, $8040
	ret nz

	nop
	ld h, b
	add b
	jr nc, jr_002_631e

	add hl, de
	jr nz, jr_002_6321

	nop
	ret nz

	nop
	pop hl

jr_002_62e5:
	nop
	ld e, $e1
	nop
	ld a, h
	nop
	nop
	ld b, b
	nop
	ret nz

	nop
	ld [$8400], sp
	nop
	ld [bc], a
	inc b
	ld bc, $0002
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
	add c
	nop
	rst $38
	nop
	inc c
	di
	nop
	ld a, $00
	nop
	rlca
	jr c, jr_002_6313

jr_002_6313:
	rra
	jr nz, jr_002_6316

jr_002_6316:
	ld b, b
	nop
	ld b, b
	nop
	nop
	ld b, b
	ld [hld], a
	ld b, b

jr_002_631e:
	inc e
	ld [hli], a
	nop

jr_002_6321:
	add b
	nop
	nop
	ld b, b
	nop
	ld b, b
	nop
	add b
	nop
	ret nz

	nop
	ld h, b
	add b
	jr c, jr_002_6370

	nop
	db $10
	jr nz, jr_002_6334

jr_002_6334:
	nop
	jr nz, jr_002_6339

	db $10
	inc b

jr_002_6339:
	jr jr_002_633b

jr_002_633b:
	db $10
	ld c, h
	db $10
	ld b, c
	ld c, $00
	nop
	nop
	nop

jr_002_6344:
	ld [$0400], sp
	ld [$0205], sp
	inc c
	inc bc
	jr c, jr_002_6352

	ret nz

	jr c, jr_002_6371

	inc e

jr_002_6352:
	jr nz, jr_002_6394

	ld b, b
	nop
	ld c, b
	nop
	ld [$2c40], sp
	nop
	jr @+$26

	ld bc, $0f1c
	jr nc, jr_002_6363

jr_002_6363:
	rrca
	nop
	nop
	inc b
	nop
	inc b
	nop
	ld [bc], a
	nop
	nop
	ld bc, $0002

jr_002_6370:
	nop

jr_002_6371:
	add e
	nop
	nop
	inc bc
	nop
	ld bc, $0002
	ld bc, $0003
	adc $00
	jr c, jr_002_6344

	db $10
	ldh [rTMA], a
	nop
	inc de
	nop
	ldh [rP1], a
	nop
	ret nz

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_6394:
	jr jr_002_6396

jr_002_6396:
	jr nz, jr_002_63b0

	nop
	jr c, jr_002_63cb

jr_002_639b:
	ld [hl], b
	ld b, b
	ret nz

	cp h
	add e
	ld bc, $1008
	nop
	nop
	db $10
	db $10
	ld [$1008], sp
	jr nz, jr_002_63ac

jr_002_63ac:
	ld bc, $0320
	inc b

jr_002_63b0:
	adc a
	nop
	ld a, h
	add d
	add hl, de
	db $e4
	nop
	jr c, jr_002_6339

	nop
	ld h, b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_63cb:
	inc bc
	nop
	rlca
	nop
	ld c, $01
	ld bc, $0001
	ld bc, $0103
	ld b, $00
	rst $08
	jr nc, jr_002_639b

	ld e, h
	ld c, a
	sbc [hl]
	add e
	ld b, a
	inc a
	sbc [hl]
	ld [hl], e
	ld [hld], a
	call z, $fda1
	jp $0c3c


	ldh a, [$30]
	jp $804f


	db $10
	call c, $3030
	ret nz

	ldh [rP1], a
	ldh a, [$c0]

jr_002_63f9:
	jr nc, @+$32

	nop
	nop
	ret nz

	nop
	ldh a, [rP1]
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	rrca
	inc bc
	inc b
	inc c
	nop
	nop
	nop
	nop
	ld c, $10
	dec a
	dec c
	ld a, [c]
	ld a, [hld]
	rst $00
	jp $030c


	jr jr_002_6423

	inc hl
	rra
	ld b, [hl]
	dec a
	sbc [hl]
	add e
	ccf

jr_002_6423:
	ld [bc], a
	ld a, a
	inc c
	db $fc
	sub d
	ld [hl], b
	db $ec
	ldh [$90], a
	add b
	ld h, b
	nop
	add b
	add b
	ccf
	nop
	ld a, a
	jr nc, jr_002_63f9

	ld h, d
	add c
	ccf
	jp $760f


	inc e
	rrca
	jr c, jr_002_6458

	ret nz

	jr c, jr_002_6473

	call z, $f408
	ld [$00f0], sp
	ld [hl], b
	add b
	ld h, b
	nop
	ret nz

	nop
	nop
	nop
	nop
	nop
	ld bc, $0000
	nop
	nop

jr_002_6458:
	nop
	nop
	nop
	nop

jr_002_645c:
	nop
	nop
	nop
	nop

jr_002_6460:
	jr jr_002_6460

	jr nz, jr_002_645c

	ret nz

jr_002_6465:
	ldh [rP1], a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_6473:
	nop
	nop
	nop
	ld bc, $0200
	ld bc, $0101
	nop
	nop
	nop
	nop
	jr nc, jr_002_6492

	ld [hl], b
	jr nc, jr_002_6465

	ld h, b
	ret nz

	ret nz

	add b
	add b
	nop
	nop
	nop
	nop
	nop
	nop
	ret nz

	nop

jr_002_6492:
	stop
	nop
	nop
	ld e, d
	nop
	nop
	nop
	rst $38
	nop
	pop hl
	ld [bc], a
	rra
	nop
	inc bc
	nop
	inc b
	nop
	add b
	nop
	nop
	nop
	ccf
	nop
	sbc $20
	ldh [rP1], a
	nop
	nop
	ld b, b
	nop
	stop
	nop
	nop
	ld hl, sp+$00
	xor $00
	inc bc
	nop
	nop
	nop
	ld hl, sp+$04
	nop
	nop
	nop
	nop
	ld b, d
	nop

jr_002_64c6:
	jr c, jr_002_64c8

jr_002_64c8:
	ld bc, $ff00
	nop
	ld a, h
	nop
	nop
	nop
	ld d, $00
	jr nz, jr_002_64d4

jr_002_64d4:
	nop
	nop
	rrca
	nop
	ld hl, sp+$04
	db $fc
	inc bc
	inc bc
	nop
	nop
	nop
	ld bc, $0000
	nop
	ld [$8300], sp
	nop
	ld d, b
	nop
	ccf
	nop
	ldh [rP1], a
	nop
	nop
	nop
	nop
	nop
	ldh a, [$c0]
	ccf
	ld a, a
	nop
	ld b, $00
	add hl, de
	ldh [$e0], a
	nop
	nop
	nop
	rlca
	ld [$f00c], sp
	jr nc, jr_002_64c6

	ldh [rP1], a
	nop
	nop
	add b
	ld a, a
	ld h, b
	rra
	ld a, $01
	adc a
	nop
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
	nop
	rst $38
	ld bc, $00fe
	add b
	add b
	ld a, c
	ld [hl], b
	rrca
	rrca
	nop
	nop
	nop
	rlca
	add sp, $78
	add b
	ret nz

	nop
	ld bc, $0e06
	ldh a, [$f8]
	nop
	add b
	nop
	nop
	cp $e0
	rra
	ld e, $01
	inc bc
	nop
	cp $01
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	pop hl
	nop
	rst $38
	di
	inc c
	rst $38
	sub h
	and e
	ld [hl], l
	ei
	ld d, l
	db $eb
	ld d, c
	db $fc
	ld bc, $05f7
	ld d, $51
	daa
	ld h, $ed
	ld d, h
	ld a, a
	pop de
	ld l, d
	db $f4
	ld a, c
	ld d, [hl]
	ld h, e
	ld de, $4c7f
	ld l, l
	ld d, a
	push hl
	inc c
	sub h
	ld [hl], l
	or a
	push bc
	ld hl, sp+$45
	ld l, a
	ld d, c
	rst $08
	ld e, l
	rst $00

jr_002_657b:
	call z, Call_002_55fd
	ei
	ld b, e
	ld a, a
	ld d, l
	sbc a
	rra
	rst $08
	add hl, bc
	rst $38
	inc d
	db $f4
	push de
	rst $18
	rst $00
	dec a
	ld [hl], l
	db $ed
	cp a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	rst $38

jr_002_65a3:
	nop
	rst $38
	nop
	rst $38
	nop
	nop
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	nop
	nop
	nop
	nop
	rst $38
	nop
	rst $38
	nop
	nop
	nop
	nop
	nop
	rst $38
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rst $38
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
	nop
	nop
	nop
	ld [bc], a
	nop
	nop
	nop
	ld hl, $0800
	ld bc, $0483
	inc b
	jr nz, jr_002_6606

	nop
	ld [bc], a
	ld [$0058], sp
	inc b
	ld hl, $0429
	ld h, h
	ld [de], a
	ld [hld], a
	nop
	inc b
	ld d, b
	ld d, d
	nop
	ld b, b
	db $10
	ld a, [de]
	nop
	jr nz, jr_002_657b

	sub h
	jr nz, @+$28

	ld c, b
	ld c, h
	nop
	jr nz, jr_002_6609

	ld c, d
	nop
	nop
	nop
	ld b, b

Call_002_6604:
	nop
	nop

jr_002_6606:
	nop
	add h
	nop

jr_002_6609:
	db $10
	add b
	pop bc
	jr nz, jr_002_662e

	inc b
	ld h, h
	nop
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	dec b
	dec l
	nop
	inc b
	ld [bc], a
	ld [bc], a
	nop
	jr nz, jr_002_65a3

	jp nz, $6505

	ld d, c
	reti


	ld b, $26
	inc h
	inc h
	ld c, b
	ld c, b
	or b
	or b

jr_002_662e:
	jr nz, jr_002_6650

	adc a
	adc a
	ld [hl], b
	ld [hl], b
	add b
	add b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_6640:
	pop af
	pop af
	ld c, $0e
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

jr_002_6650:
	ld b, c
	ld b, e
	and b
	and [hl]
	adc d
	sbc e
	ld h, b
	ld h, h
	inc h
	inc h
	ld [de], a
	ld [de], a
	dec c
	dec c
	inc b
	inc b
	nop
	ld b, b
	nop
	nop
	nop
	nop
	nop
	ld b, b
	and b
	or h
	nop
	jr nz, jr_002_66ad

	ld b, b
	nop
	inc b

jr_002_6670:
	ld [$010a], sp
	inc de
	nop
	ld b, b
	ld bc, $0a29
	ld a, [bc]
	nop
	jr jr_002_6640

	jp $9505


	and b
	and b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	ld b, b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	add b
	dec b
	dec b
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld bc, $0101
	ld bc, $0101
	ld bc, $1001
	ld d, b
	add b
	ret z

	nop
	ld [bc], a
	add b
	sub h
	ld d, b
	ld d, b
	nop
	jr jr_002_6670

jr_002_66ad:
	jp $a9a0


	ld bc, $0601
	ld b, $8c
	adc [hl]
	ld e, b
	ld e, h
	ldh a, [$f8]
	ld [hl], b
	ld a, l
	db $10
	rra
	ld [$c00f], sp

jr_002_66c1:
	ret nz

	ld a, $3e
	inc bc
	rrca
	nop
	rrca
	rlca
	rrca
	inc b
	inc a
	inc e
	db $fc
	jr nc, jr_002_66c1

	nop
	nop
	rlca
	rlca
	adc b
	adc b
	ldh a, [$f7]
	ld [bc], a
	inc bc
	inc bc
	rlca
	inc bc
	rrca
	dec d
	cp a
	ld a, h
	ld a, h
	ld a, [c]
	ld a, [c]
	ld bc, $0009
	rrca
	rlca
	ccf
	rrca
	rst $38
	ret nc

	ldh a, [$e0]
	ldh [rDIV], a
	rra
	inc b
	call $df00
	nop
	rst $38
	sbc l
	rst $38
	cp $fe
	ret nz

	ldh [rIE], a
	rst $38
	db $10
	rst $38
	ld e, b
	rst $38
	daa
	rst $38
	ld c, d
	ld a, [$f090]
	add sp, -$06
	add b
	ei
	rst $38
	rst $38
	nop
	ld b, a
	nop
	db $e3
	nop
	sub c
	add b
	pop hl
	ld b, b
	ld a, a
	ld h, b
	ld a, a
	ccf
	ccf
	rst $38
	rst $38
	add b
	add e
	nop
	pop bc
	nop
	jp $f741


	ld b, c
	rst $38
	pop bc
	rst $38
	or $fe
	rst $38
	rst $38
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	rst $38
	nop
	rst $38
	nop
	db $fd
	nop
	rst $38
	nop
	rst $38
	nop
	cp a
	nop
	rst $38
	nop
	cp $00
	rst $38
	nop
	rst $18
	nop
	rst $38
	nop
	rst $38
	nop
	push af
	nop
	rst $38
	nop
	rst $38
	nop
	nop
	nop
	rst $38
	nop
	rst $38
	nop
	nop
	nop
	rst $38
	nop
	nop
	nop
	rst $38
	nop
	nop
	nop
	ld bc, $0301
	inc bc
	dec b
	dec b
	add hl, bc
	add hl, bc
	ld de, $2111
	ld hl, $4141
	add c
	add c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	stop
	jr nc, jr_002_678b

jr_002_678b:
	ld [hl], b
	nop
	ldh a, [rP1]
	ldh a, [rP1]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a, h
	ld a, h
	nop
	nop
	nop
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
	db $10
	db $10
	jr z, jr_002_67e0

	ld b, h
	ld b, h
	add d
	add d
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
	add b
	add b
	nop
	nop
	nop
	nop
	ld bc, $0201
	ld [bc], a
	inc b
	inc b
	ld [$1008], sp
	db $10
	jr nz, @+$22

jr_002_67e0:
	ld b, b
	ld b, b
	ret nz

	ret nz

	ld b, b
	ld b, b
	ld b, b
	ld c, b
	ld b, b
	ld e, b
	ld b, c
	ld a, c
	ld b, d
	ld a, d
	ld b, d
	ld a, d
	nop
	nop
	nop
	nop
	jr nz, jr_002_6816

	ld d, b
	ld d, b
	adc b
	adc b
	inc b
	inc b
	ld [bc], a
	ld [bc], a
	ld bc, $0701
	rlca
	inc b

Call_002_6803:
	inc b
	inc b
	inc b
	inc b
	inc b
	inc b
	inc b
	inc b
	inc b
	inc b
	inc b
	inc b
	inc b
	ret nz

	ret nz

	ld b, b
	ld b, b
	ld b, b
	ld b, b

jr_002_6816:
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
	nop
	nop
	ld bc, $0301
	inc bc
	dec b
	dec b
	add hl, bc
	add hl, bc
	ld de, $2111
	ld hl, $4141
	nop
	nop
	nop
	nop
	ld [$1408], sp
	inc d
	ld [hli], a
	ld [hli], a
	ld b, c
	ld b, c
	add b
	add b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rra
	rra
	inc b
	inc b
	inc b
	inc b
	add h
	add h
	ld b, h
	ld b, h
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, h
	ld b, h
	ld l, h
	ld l, h
	ld d, h
	ld d, h
	ld b, h
	ld b, h
	ld b, h
	ld b, h
	ld bc, $0201
	ld [bc], a
	inc b
	inc b
	ld [$1008], sp
	db $10
	jr nz, @+$22

	ld b, b
	ld b, b
	add b
	add b
	ld bc, $0101
	ld bc, $0101
	ld [bc], a
	inc bc
	inc b
	rlca
	ld [$100f], sp
	rra
	jr nz, @+$41

	nop
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rP1]
	ldh a, [rLY]
	ld b, h
	ld b, h
	ld b, h
	ld b, h
	ld b, a
	ld b, h
	ld b, a
	ld b, h
	ld b, a
	ld b, h
	ld b, a
	ld b, h
	ld b, a
	ld b, h
	ld b, a
	ld bc, $0101
	ld bc, $c505
	dec bc
	rl c
	pop de
	jr nz, @-$1e

	ld b, b
	ret nz

	add b
	add b
	db $10
	db $10
	jr jr_002_68cc

	inc d
	inc e
	ld [de], a
	ld e, $12
	ld e, $94
	sbc h
	ld e, b
	ld e, b
	jr nc, jr_002_68f0

	ld b, b
	ld b, b
	jr nz, jr_002_68e4

	ld hl, $2221
	ld [hld], a
	inc h
	inc a
	jr z, jr_002_6904

jr_002_68cc:
	jr nc, jr_002_68fe

	jr nz, jr_002_68f0

	ld b, b
	ld b, b
	add b
	add b
	nop
	nop
	inc bc
	inc bc
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld b, $06
	ld a, [bc]
	ld c, $42
	ld a, d
	ld b, d
	ld a, d

jr_002_68e4:
	ld b, d
	ld a, d
	cp $fe
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a

jr_002_68f0:
	jr nz, jr_002_6912

	jr nc, jr_002_6924

	jr z, jr_002_692e

	inc h
	inc a
	inc h
	inc a
	jr z, jr_002_6934

	jr nc, jr_002_692e

jr_002_68fe:
	jr nz, jr_002_6920

	add h
	add h
	ld b, h
	ld b, h

jr_002_6904:
	ld a, h
	ld a, h
	ld b, h
	ld b, h
	ld b, h
	ld b, h
	ld b, h
	ld b, h
	ld b, h
	ld b, h
	ld b, h
	ld b, h
	ld b, b
	ld b, b

jr_002_6912:
	ld b, c
	ld b, c
	ld b, e
	ld b, e
	ld b, l
	ld b, l
	ld c, c
	ld c, c
	ld d, c
	ld d, c
	ld h, c
	ld h, c
	ld b, c
	ld b, c

jr_002_6920:
	add e
	add e
	rlca
	rlca

jr_002_6924:
	dec c
	dec c
	add hl, de
	add hl, de
	ld sp, $2131
	ld hl, $0101

jr_002_692e:
	inc bc
	inc bc
	db $10
	db $10
	jr jr_002_694c

jr_002_6934:
	inc d
	inc e
	ld [de], a
	ld e, $12
	ld e, $14
	inc e
	jr jr_002_6956

	db $10
	db $10
	inc h
	inc h
	jr nz, jr_002_6974

	jr nz, jr_002_697e

	jr nz, @+$3e

	jr nz, @+$40

	jr nz, @+$41

jr_002_694c:
	jr nz, jr_002_698d

	jr nz, @+$41

	ld b, h
	ld b, h
	nop
	nop
	nop
	nop

jr_002_6956:
	nop
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
	ld b, b
	jr nz, @+$22

	db $10
	db $10
	ld [$0408], sp
	inc b
	ld [bc], a
	ld [bc], a
	ld bc, $0201
	ld [bc], a
	ld b, b
	ld a, a
	add b
	rst $38

jr_002_6974:
	ld b, b
	ld a, a
	jr nz, jr_002_69b7

	db $10
	rra
	add hl, bc
	rrca
	dec b
	rlca

jr_002_697e:
	inc bc
	inc bc
	nop
	ldh a, [rNR10]
	ldh a, [$28]
	add sp, $44
	call nz, $8282
	ld bc, $0001

jr_002_698d:
	nop
	jr nz, jr_002_69b0

	ld b, h
	ld b, a
	ld b, h
	ld b, a
	ld b, h
	ld b, a
	ld b, h
	ld b, a
	ld b, h
	ld b, a
	ld b, h
	ld b, a
	call nz, Call_002_47c7
	ld b, a
	add b
	add b
	adc b
	adc b
	adc h
	adc h
	adc h
	adc h
	adc h
	adc h
	adc h
	adc h
	adc h
	adc h
	add h
	add h

jr_002_69b0:
	db $10
	db $10
	db $10
	db $10
	ld de, $1211

jr_002_69b7:
	inc de
	inc d
	rla
	ld [de], a
	inc de
	ld de, $1011
	db $10
	ld d, b
	ld [hl], b
	adc b
	ld hl, sp+$04
	db $fc
	ld [bc], a
	cp $01
	rst $38
	nop
	cp $00
	cp $80
	cp $12
	ld e, $23
	ccf
	db $10
	rra
	ld [$040f], sp
	rlca
	add d
	add e
	ld b, c
	ld b, c
	add b
	add b
	ld [bc], a
	ld [bc], a
	add $c6
	ld b, [hl]
	add $46
	add $46
	add $46
	add $46
	add $c6
	add $00
	nop
	ld bc, $0201
	inc bc
	inc b
	rlca
	ld [$040f], sp
	rlca
	ld [bc], a
	inc bc
	ld bc, $c401
	call nz, $c444
	ld b, h
	call nz, $c444
	ld b, h
	call nz, $c444
	ld b, h
	call nz, $c444
	ld bc, $0101
	ld bc, $0101
	ld bc, $0301
	inc bc
	dec b
	rlca
	add hl, bc
	rrca
	ld de, $071f
	rlca
	dec c
	dec c
	add hl, de
	add hl, de
	ld sp, $2131
	ld hl, $0101
	inc bc
	inc bc
	dec b
	rlca
	nop
	nop
	nop
	nop
	ld bc, $0201
	inc bc
	inc b
	rlca
	ld [bc], a
	inc bc
	ld bc, $0001
	nop
	ld b, b
	ld a, a
	add b
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	cp $80
	db $fc
	inc b
	inc b
	ld [$1008], sp
	db $10
	jr nz, jr_002_6a78

	ld b, b
	ld b, b
	add b
	add b
	add b
	add b
	add b
	add b
	ld bc, $0301
	inc bc
	dec b
	rlca
	add hl, bc
	rrca
	ld de, $211f
	ccf
	ld b, b
	ld a, a
	add b
	rst $38
	jr nc, jr_002_6aa2

	jr c, @+$3a

	inc e
	inc e
	ld c, $0e

jr_002_6a78:
	ld b, $06
	ld [bc], a
	ld [bc], a
	add b
	add b
	ld b, b
	ret nz

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
	ld a, a
	ld a, a
	add b
	add b
	add b
	add b
	adc b
	adc b
	adc h
	adc h
	adc h
	adc h
	adc h
	adc h
	adc h
	adc h
	adc d
	adc [hl]
	db $10
	db $10

jr_002_6aa2:
	db $10
	db $10
	db $10
	db $10
	jr @+$1a

	inc d
	inc e
	ld [de], a
	ld e, $11
	rra
	db $10
	rra
	ld b, c
	ld a, a
	ld [hli], a
	ld a, $14
	inc e
	jr z, jr_002_6af0

	ld d, b
	ld [hl], b
	and b
	ldh [rNR41], a
	ldh [rNR41], a
	ldh [rP1], a
	nop
	nop
	nop
	ld bc, $0201
	inc bc
	inc b
	rlca
	ld [$100f], sp
	rra
	jr nz, @+$41

	ld b, [hl]
	ld b, [hl]
	add $c6
	ld b, [hl]
	add $46
	add $46
	add $46
	add $46
	add $47
	rst $00
	nop
	nop
	nop
	nop
	jr nz, jr_002_6b06

	jr nc, jr_002_6b18

	jr z, jr_002_6b22

	dec h
	dec a
	ld [hli], a
	ccf
	ldh [rIE], a

jr_002_6af0:
	call nz, Call_002_44c4
	ld b, h
	ld b, h
	ld b, h
	ld b, h
	ld b, h
	call nz, Call_002_44c4
	call nz, $c444
	ld a, a
	rst $38
	add hl, bc
	rrca
	dec b
	rlca
	inc bc
	inc bc

jr_002_6b06:
	ld b, c
	ld b, c
	ld h, b
	ld h, b
	ld d, b
	ld [hl], b
	ld c, b
	ld a, b
	call nz, $09fc
	rrca

jr_002_6b12:
	ld de, $211f
	ccf
	ld b, c
	ld a, l

jr_002_6b18:
	add c
	ld sp, hl
	ld b, c
	ld [hl], c
	ld hl, $1131
	add hl, de
	db $10
	db $10

jr_002_6b22:
	jr jr_002_6b3c

	inc d
	inc e
	ld [de], a
	ld e, $11
	rra
	db $10
	ld e, $10
	ld e, $f0
	cp $40
	ld a, b
	jr nz, jr_002_6b64

	db $10
	jr @+$0a

	inc c
	inc b
	ld b, $82
	add e

jr_002_6b3c:
	ld b, c
	ld b, c
	jr nz, jr_002_6b60

	nop
	nop
	nop
	nop
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
	add b
	ret nz

	add c
	add c
	add d
	add e
	add h
	add a
	adc b
	adc a
	sub b
	sbc a
	and b
	xor a
	ret nz

	rst $08
	add b
	adc a

jr_002_6b60:
	nop
	rst $38
	nop
	rst $38

jr_002_6b64:
	nop
	cp $00
	db $fc
	nop
	ld hl, sp+$00
	ldh a, [rP1]
	ldh [rP1], a
	ret nz

	jr nz, jr_002_6b12

	ld de, $0a11
	dec bc
	inc b
	rlca
	nop
	inc bc
	nop
	ld bc, $0000
	nop
	nop
	add b
	rst $38
	nop

jr_002_6b83:
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	ld hl, sp+$00
	ld [hl], b
	ld c, c
	rst $08

jr_002_6b92:
	jr z, jr_002_6b83

jr_002_6b94:
	jr @+$01

	ld [$00ff], sp
	rst $38
	nop
	rst $38
	nop
	inc bc
	nop
	ld bc, $1f10
	sub b
	sbc a
	ld d, b

jr_002_6ba5:
	rst $18
	jr nc, jr_002_6ba5

	db $10
	db $fc
	nop
	db $fc
	nop
	db $fc
	nop
	cp h
	jr nz, jr_002_6b92

	jr nz, jr_002_6b94

	ld hl, $22e1
	db $e3
	inc h
	and a
	jr z, jr_002_6be7

	jr nc, jr_002_6bf1

	jr nz, jr_002_6be3

	ld b, b
	ld a, a
	add b
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	cp $00
	db $fc
	nop
	ld hl, sp+$00
	ldh a, [rLY]
	rst $00
	ld b, h
	rst $00
	ld b, h
	rst $00
	ld a, h
	ld a, a
	nop
	rrca
	nop
	rrca
	nop
	rrca
	nop
	rrca
	nop
	rst $38
	nop

jr_002_6be3:
	rst $38
	nop
	db $fd
	nop

jr_002_6be7:
	db $fc
	nop
	db $fc
	nop
	ret nz

	nop
	ret nz

	nop
	ret nz

	nop

jr_002_6bf1:
	rst $38
	nop
	ei
	nop
	di
	nop
	db $e3
	nop
	ld b, e
	nop
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	cp $01
	rst $38
	nop
	cp $00
	cp $00
	cp $00
	nop
	nop
	nop
	nop
	nop
	ld [$040c], sp
	ld b, $82
	add e
	ld a, a
	ld a, a
	nop
	ccf
	nop
	rra
	nop
	rrca
	nop
	rlca
	nop
	ld a, $00
	ld a, $00
	ld a, $00
	add b
	nop
	ret nz

	nop
	ldh [rP1], a
	ldh a, [rP1]
	ld hl, sp+$10
	db $10
	ld [$0508], sp
	dec b
	ld [bc], a
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, b
	ld h, b
	add b
	ldh a, [rP1]
	ld hl, sp+$00
	db $fc
	nop
	cp $00
	ld a, h
	nop
	jr c, jr_002_6c4f

jr_002_6c4f:
	stop
	rrca
	nop
	rrca
	nop
	ld c, $00
	inc c
	nop
	ld [$0000], sp
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz, jr_002_6c73

jr_002_6c73:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	sbc h
	nop
	inc c
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
	inc bc
	nop
	inc bc
	nop
	inc bc
	nop
	inc bc
	nop
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ldh [rP1], a
	ret nz

	nop
	add b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
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
	nop
	nop
	nop
	nop
	nop
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	db $fc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

Call_002_6cf7:
	nop
	nop
	nop
	ccf
	nop
	rst $38
	nop
	rst $38
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rra
	nop
	rst $38
	nop
	jr nz, jr_002_6d12

jr_002_6d12:
	jr nz, jr_002_6d14

jr_002_6d14:
	jr z, jr_002_6d16

jr_002_6d16:
	ld l, b
	nop
	ld a, b
	nop
	ld a, e
	nop
	rst $38
	nop
	rst $38
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc e
	nop
	ld e, $00
	rra
	nop
	cp a
	nop
	rst $38
	nop
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	dec b
	dec b
	ld [hl], l
	ld [hl], l
	ccf
	ld [bc], a
	rst $38
	ld [bc], a
	rst $38
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a, a
	ld a, a
	nop
	nop
	rra
	nop
	rst $38
	nop
	nop
	rst $38
	nop
	nop
	nop
	rst $38
	nop
	nop
	nop
	rst $38
	nop
	nop
	nop
	rst $38
	nop
	rst $38

Call_002_6d60:
	nop
	nop
	inc b
	nop
	ld b, b
	db $10
	ld b, b
	nop
	stop
	nop
	nop
	nop
	nop
	ld bc, $0040
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld c, $00
	adc [hl]
	ld [hl], b
	inc [hl]
	rlc b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	and l
	nop
	sub d
	ld h, h
	ld l, b
	add b
	nop
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	nop
	jr z, jr_002_6dca

	jr nz, jr_002_6dfc

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc hl
	nop

jr_002_6dca:
	dec c
	ld [bc], a
	jr nc, jr_002_6dce

jr_002_6dce:
	add b
	nop
	nop
	nop
	nop
	nop
	rlca
	nop
	ld a, h
	inc bc
	ret nz

	inc a
	nop
	nop
	nop
	nop
	nop
	nop
	inc e
	inc bc
	ld c, b
	scf
	ld [bc], a
	call c, RST_00
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ldh [$e0], a
	nop
	nop
	nop
	nop
	nop

jr_002_6df8:
	nop

jr_002_6df9:
	nop
	nop
	nop

jr_002_6dfc:
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0200
	nop
	dec b
	nop
	dec bc
	nop
	ld d, $00
	dec l
	nop

Call_002_6e0e:
	dec hl
	nop
	nop
	nop
	nop
	nop
	ld bc, $0200
	nop
	ld [bc], a
	nop
	dec c
	nop
	inc de
	nop
	ld l, $00
	ld d, [hl]
	ld bc, $02b4
	ld l, c
	inc b
	jp nc, $b209

	add hl, bc
	ld h, l
	ld [de], a
	ld c, d
	dec h
	sub h
	ld c, e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0600
	nop
	nop
	nop
	ld bc, $0600
	nop
	add hl, bc
	nop

jr_002_6e48:
	rla
	nop
	ld l, [hl]
	nop
	sbc c
	nop
	ld [hl], a
	nop
	ld e, c
	nop
	or a
	nop
	ld l, [hl]
	ld bc, $06d8
	or c
	ld [$1166], sp
	ret


	ld h, $96
	ld c, c
	jr z, jr_002_6df8

	jr z, jr_002_6df9

	ld d, c
	ld a, [hli]
	and d
	ld d, l
	ld b, h
	xor e
	adc b
	ld d, a
	db $10
	xor [hl]
	jr nz, jr_002_6ecd

	nop
	nop
	nop
	nop
	ld [$0000], sp
	nop
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
	add b
	ld [bc], a
	nop
	ld [$0000], sp
	ld [bc], a
	ld [bc], a
	nop
	jr nz, jr_002_6e90

	dec b

jr_002_6e90:
	add hl, bc
	nop
	ld [hl], a
	nop
	adc [hl]
	nop
	ld a, c
	nop
	rst $30
	nop
	adc [hl]
	ld bc, $0678
	pop af
	ld [$01ee], sp
	sbc b
	ld b, $71
	ld [$11e6], sp
	adc c
	ld h, [hl]
	ld d, $89
	ld l, b
	ld d, $90
	ld l, c
	jr z, jr_002_6e48

	ld d, b
	add hl, hl
	and c
	ld d, [hl]
	ld b, [hl]
	xor c
	adc b
	ld d, a
	db $10
	xor a
	jr nz, jr_002_6f1c

	ld b, b
	cp c
	ld b, b
	cp e
	add b
	ld [hl], a
	nop
	rst $28
	nop
	rst $18
	nop
	cp a
	nop
	ld a, [hl]
	nop

Call_002_6ecd:
jr_002_6ecd:
	db $fd
	ld bc, $00fb
	nop
	nop
	nop
	nop
	ld bc, $0000
	ld bc, $0c01
	nop
	ld [hl], e
	nop
	adc [hl]
	nop
	add b
	ld [bc], a
	db $10
	stop
	nop
	nop
	ld a, [bc]
	nop
	ld b, b
	ld de, $c035
	ld e, d
	ld a, h
	rrca
	ld b, c
	nop
	db $10
	ld [de], a
	dec b
	dec b
	nop
	dec bc
	ld [hli], a
	ld [hl], a
	dec b
	ld d, $1a
	db $dd
	db $ec
	ld a, [c]
	add [hl]
	ld [hl], c
	add hl, bc
	add [hl]
	db $76
	add hl, bc
	adc b
	db $76
	ld [hl], b
	adc c
	add c
	db $76
	ld b, $89
	ld [$6177], sp
	sub [hl]
	add [hl]
	ld l, c
	ld [$1097], sp
	ld l, a
	ld h, b
	sbc [hl]
	add b
	ld a, c

jr_002_6f1c:
	nop
	rst $30
	nop
	rst $28
	add b
	ld [hl], a
	nop
	rst $28
	nop
	rst $18
	nop
	cp a
	nop
	ld a, a
	nop
	cp $00
	ld sp, hl
	ld bc, $02f7
	rst $30
	inc b
	rst $28
	add hl, bc
	rst $18
	ld [de], a
	cp a
	dec h
	ld a, a
	ld c, d
	cp $94
	db $fd
	add hl, hl
	ei
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	nop
	nop
	nop
	nop
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
	nop
	ld hl, sp+$00
	nop
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
	nop
	db $fc
	nop
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $1e00
	nop
	pop hl
	nop
	rra
	nop
	cp $00
	nop
	nop
	rlca
	nop
	ld a, b
	nop
	add a
	nop
	ld a, a
	nop
	ld hl, sp+$00
	add a
	nop
	ld a, a
	nop
	ld hl, sp+$00
	rlca
	nop
	rst $38
	nop
	ld hl, sp+$00
	rlca
	nop
	rst $38
	nop
	ld hl, sp+$07
	nop
	ld hl, sp+$7d
	nop
	di
	nop
	adc [hl]
	ld bc, $027c
	pop af
	inc c
	add d
	ld [hl], c
	dec c
	add d
	ld [hl], d
	dec c
	di
	rrca
	add e
	ld [hl], b
	inc c
	add e
	ld [hl], e
	inc c
	adc h
	ld [hl], e
	ld [hl], b
	adc h
	add b
	ld [hl], e
	inc bc
	adc h
	or b
	ld c, l
	ld b, c
	or d
	add d
	ld c, l
	inc c
	or e
	jr nc, jr_002_7019

	ld b, b
	cp [hl]
	add b
	ld a, l
	nop
	di
	ld [hl], b
	adc a
	add b
	ld a, [hl]
	nop
	ld sp, hl
	nop
	rst $30
	nop
	adc a
	nop
	ld a, a
	nop
	rst $38
	nop
	rst $38
	nop
	sbc a
	nop
	ld a, a
	nop
	rst $38
	nop
	cp $00
	ld sp, hl
	ld bc, $06f7
	rst $28
	ld [$069f], sp
	rst $28
	ld [$11df], sp
	cp a
	ld h, $7f
	ld c, c
	rst $38
	sub [hl]
	cp $28
	ld sp, hl
	ld d, c
	rst $30
	ld d, e
	rst $30
	and [hl]
	rst $28
	ld c, l
	rst $18
	sbc e
	cp a
	scf
	ld a, a
	ld l, a
	rst $38
	sbc $fe
	cp l
	db $fd
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_7019:
	nop
	nop
	nop
	nop
	nop
	ld a, a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a, a
	nop
	add b
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
	nop
	ld hl, sp+$00
	rlca
	nop
	rst $38
	nop
	nop
	nop
	nop
	nop
	rlca
	nop
	ld a, b
	nop
	add a
	nop
	ld a, a
	nop
	ld hl, sp+$00
	add a
	nop
	nop
	nop
	rrca
	nop
	ldh a, [rP1]
	rrca
	nop
	rst $38
	nop
	ldh a, [rP1]
	rrca
	nop
	rst $38
	nop
	rlca
	nop
	ld hl, sp+$00
	rlca
	nop
	rst $38
	nop
	ld hl, sp+$00
	rlca
	nop
	rst $38
	nop
	ld hl, sp+$07
	ldh a, [rP1]
	rrca
	nop
	rst $38
	nop
	ldh a, [rP1]
	rrca
	nop
	rst $38
	nop
	ldh a, [rIF]
	nop
	ldh a, [rTAC]
	nop
	rst $38
	nop
	ld hl, sp+$00
	rlca
	nop
	rst $38
	nop
	ld hl, sp+$07
	nop
	ld hl, sp+$07
	nop
	rst $38
	nop
	db $fc
	nop
	inc bc
	nop
	rst $38
	nop
	db $fc
	inc bc
	nop
	db $fc
	inc bc
	nop
	db $fc
	inc bc
	pop hl
	nop
	rra
	nop
	cp $01
	ldh [rNR34], a
	ld bc, $1ee0
	ld bc, $1ee1
	ld e, $e1
	ld hl, sp+$07
	add b
	ld a, b
	rlca
	add b
	ld a, b
	rlca
	add a
	ld a, b
	ld a, b
	add a
	add b
	ld a, b
	nop
	add a
	rlca
	nop
	ld hl, sp+$07
	rlca
	ld hl, sp-$08
	rlca
	nop
	ld hl, sp+$00
	rlca
	rlca
	ld hl, sp-$08
	rlca
	adc h
	ld [hl], d
	ld [hl], b
	adc l
	add c
	ld [hl], d
	ld [bc], a
	adc l
	inc c
	ld [hl], e
	ld [hl], b
	adc a
	add b
	ld a, [hl]
	nop
	db $fd
	inc c
	ld [hl], e
	ld [hl], b
	adc a
	add b
	ld a, a
	nop
	db $fc
	nop
	di
	nop
	adc a
	nop
	ld a, a
	nop
	rst $38
	nop
	rst $08
	nop
	cp a
	nop
	ld a, a
	nop
	rst $38
	nop
	cp $00
	db $fd
	ld bc, $02f3
	rst $08
	nop
	cp $00
	ld sp, hl
	ld bc, $06f7
	adc a
	ld [$717f], sp
	rst $38
	add [hl]
	rst $38
	add hl, bc
	rst $38
	ld de, $667f
	rst $38
	adc c
	rst $38
	ld d, $fe
	ld l, b
	ld sp, hl
	sub c
	rst $30
	ld h, a
	rst $28
	adc [hl]
	sbc a
	and a
	rst $28
	ld c, [hl]
	rst $18
	sbc c
	cp a
	scf
	ld a, a
	ld l, a
	rst $38
	rst $18
	rst $38
	cp [hl]
	cp $79
	ld sp, hl
	ld a, e
	ei
	rst $30
	rst $30
	rst $28
	rst $28
	rst $18
	rst $18
	cp a
	cp a
	ld a, a
	ld a, a
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	nop
	nop
	nop
	rst $38
	nop
	rst $38
	nop
	nop
	nop
	rst $38
	nop
	rst $38
	nop
	nop
	rst $38
	add b
	nop
	ld a, a
	nop
	rst $38
	nop
	add b
	nop
	ld a, a
	nop
	rst $38
	nop
	add b
	ld a, a
	nop
	add b
	ld a, a
	nop
	rst $38
	nop
	add b
	nop
	ld a, a
	nop
	rst $38
	nop
	add b
	ld a, a
	nop
	add b
	ld a, a
	nop
	ld hl, sp+$00
	rlca
	nop
	rst $38
	nop
	ld hl, sp+$07
	nop
	ld hl, sp+$07
	nop
	ld hl, sp+$07
	rlca
	ld hl, sp+$7f
	nop
	ld hl, sp+$07
	add b
	ld a, b
	rlca
	add b
	ld a, b
	rlca
	add a
	ld a, b
	ld a, b
	add a
	add b
	ld a, b
	ldh a, [rIF]
	nop
	ldh a, [rIF]
	nop
	ldh a, [rIF]
	rrca
	ldh a, [$f0]
	rrca
	nop
	ldh a, [rP1]
	rrca
	nop
	ld hl, sp+$07
	nop
	ld hl, sp+$07
	rlca
	ld hl, sp-$08
	rlca
	nop
	ld hl, sp+$00
	rlca
	rlca
	ld hl, sp+$0f
	nop
	ldh a, [rIF]
	rrca
	ldh a, [$f0]
	rrca
	nop
	ldh a, [rP1]
	rrca
	rrca
	ldh a, [$f0]
	rrca
	ld hl, sp+$07
	rlca
	ld hl, sp-$08
	rlca
	nop
	ld hl, sp+$00
	rlca
	rlca
	ld hl, sp-$08
	rlca
	nop
	rst $38
	inc bc
	db $fc
	db $fc
	inc bc
	nop
	db $fc
	nop
	inc bc
	inc bc
	db $fc
	db $fc
	inc bc
	nop
	rst $38
	nop
	rst $38
	ldh [rNR34], a
	nop
	pop hl
	ld bc, $1e1e
	pop hl
	ldh [$1f], a
	nop
	rst $38
	nop
	cp $00
	pop hl
	rlca
	ld a, b
	ld a, b
	add a
	add b
	ld a, a
	nop
	rst $38
	nop
	ld hl, sp+$00
	add a
	nop
	ld a, a
	nop
	rst $38
	nop
	rst $38
	nop
	rst $38
	nop
	ld hl, sp+$00
	rlca
	nop
	rst $38
	nop
	rst $38
	nop

Call_002_720d:
	rst $38
	nop
	rst $38
	nop
	di
	nop
	adc a
	nop
	ld a, a
	nop
	rst $38
	nop
	rst $38
	nop
	cp $00
	db $fd
	ld bc, $00f3
	rst $38
	nop
	rst $38
	nop
	db $fc
	nop
	di
	inc bc
	adc a
	inc c
	ld a, a
	ld [hl], b
	rst $38
	add e
	rst $38
	inc c
	cp a
	ld sp, $427f
	rst $38
	adc l
	rst $38
	ld [hld], a
	cp $4c
	db $fd
	or c
	di
	ld b, e
	rst $08
	db $76
	cp $88
	ld sp, hl
	ld [hl], c
	rst $30
	add a
	adc a
	ld c, $7f
	ld a, c
	rst $38
	rst $30
	rst $38
	adc a
	rst $38
	add hl, de
	ld a, a
	ld [hl], a
	rst $38
	rst $28
	rst $38
	sbc a
	rst $38
	ld a, [hl]
	cp $f9
	ld sp, hl
	rst $30
	rst $30
	rst $28
	rst $28
	rst $30
	rst $30
	rst $28
	rst $28
	rst $18
	rst $18
	cp a
	cp a
	ld a, a
	ld a, a
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	cp $fe
	db $fd
	db $fd
	ei
	ei
	rst $30
	rst $30
	rst $28
	rst $28
	rst $18
	rst $18
	cp a
	cp a
	ld a, a
	ld a, a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a, b
	nop
	inc c
	jr nc, jr_002_7297

jr_002_7297:
	ld [$0000], sp
	nop
	ld bc, $0100
	inc bc
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc d
	ld b, b
	add h
	ld [bc], a
	add b
	ld [bc], a
	inc bc
	nop
	ld b, $00
	ld [$0004], sp
	ld [$0000], sp
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ldh [rP1], a
	nop
	nop
	nop
	ld b, $00
	dec e
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
	inc bc
	ld bc, $0102
	ld bc, $c101
	nop
	jr nc, jr_002_72eb

	jr jr_002_72e1

	inc b
	nop
	rlca
	add e

jr_002_72e1:
	ld bc, $00c3

jr_002_72e4:
	ld e, h
	and d
	adc d
	cp $7c
	ld a, h
	nop

jr_002_72eb:
	nop
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
	nop
	add hl, hl
	inc b
	nop
	add b
	nop
	nop
	nop
	nop
	jr jr_002_7302

jr_002_7302:
	ld b, $08

jr_002_7304:
	nop
	ld [bc], a
	ld bc, $0102
	nop
	add b
	ld b, b
	ld h, b
	nop
	jr nz, jr_002_7320

	inc c
	ld bc, $0810
	stop
	nop
	db $10
	stop
	nop
	nop
	nop
	nop
	ld [bc], a
	add hl, bc

jr_002_7320:
	sub b
	ld [hl], b
	ld b, b
	jr c, jr_002_735f

	ld [$180b], sp
	ld a, [de]
	add hl, bc
	ld sp, $2108
	db $10
	db $10
	ld [hl], b
	add b
	nop
	nop
	add b
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz, jr_002_733c

jr_002_733c:
	ld bc, $0008
	add c
	ld a, [bc]
	inc bc
	ld [bc], a
	ld [bc], a
	ld [bc], a
	rlca
	ld de, $0303
	rlca
	inc bc
	rla
	ld b, e
	rra
	rrca
	ld a, b
	nop
	inc b
	nop
	nop
	nop
	adc c
	ld [bc], a
	adc b
	nop
	ld [bc], a
	inc c
	ld [bc], a
	add b
	add h
	ld h, b

jr_002_735f:
	db $e4
	dec d
	ld [bc], a
	jr nz, jr_002_72e4

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz, @+$12

	jr nz, jr_002_7304

	ld d, b
	jr nz, jr_002_7397

	jr jr_002_7399

	jr jr_002_737b

jr_002_737b:
	jr c, jr_002_73a5

	ld b, b
	nop
	ld [hl], b
	ld bc, $0000
	nop
	nop
	inc bc
	nop
	rlca
	nop
	inc e
	ld bc, $1e20
	ld b, b
	nop
	nop
	nop
	add b
	nop
	ld a, $00
	rst $38
	nop

jr_002_7397:
	db $fc
	inc bc

jr_002_7399:
	ld a, b
	add e
	jr nc, jr_002_73e9

	nop
	jr jr_002_73a0

jr_002_73a0:
	nop
	ld a, [c]
	ld b, l
	ld l, a
	dec d

jr_002_73a5:
	dec e
	ld h, a
	rlca
	ei
	inc bc
	db $fc
	ld bc, $01f5
	ld a, l
	ld bc, $f110
	ldh [$e0], a
	ldh [$c0], a
	ldh [$c0], a
	ret nz

	ldh [rNR41], a
	ret nc

	ld [$0510], sp
	rlca
	pop hl
	ld [hli], a
	jr nz, jr_002_7407

	ld hl, $2010
	jr nc, jr_002_73e9

	jr nc, jr_002_742b

	ld [hl], b
	ret nz

	rst $20
	nop
	rrca
	nop
	nop
	nop
	add h
	nop
	rst $30
	ld b, b
	ccf
	nop
	nop
	nop
	nop
	ld b, $08
	ld bc, $00c6
	ldh a, [rP1]
	ldh [rP1], a
	ret nz

	ld [bc], a
	add c
	inc bc

jr_002_73e9:
	inc c
	inc e
	nop
	jr z, @+$12

	nop
	jr nc, jr_002_73f1

jr_002_73f1:
	nop

jr_002_73f2:
	nop
	nop
	nop
	nop
	ret nz

	nop
	jr nz, jr_002_740a

	stop
	nop
	ld [$0008], sp
	nop
	nop
	nop
	nop
	rrca
	nop
	ld [hl], b

jr_002_7407:
	rrca
	rrca
	rst $38

jr_002_740a:
	ld [hl], b
	ld [hl], b
	nop
	nop
	nop
	nop
	nop
	nop
	ccf
	nop
	ret nz

	ccf
	ccf
	rst $38
	ret nz

	ret nz

	nop
	nop
	nop
	nop
	nop
	nop
	ld sp, hl
	inc b
	ld [bc], a
	ld hl, sp-$10
	ldh a, [rP1]
	ld b, $00
	nop
	inc bc

jr_002_742b:
	nop
	rra
	nop
	ccf
	nop
	ld [hld], a
	nop
	ld [hl], c
	nop
	ld l, e
	nop
	rra
	nop
	nop
	ldh [$c0], a
	ccf
	rst $00
	nop
	ld c, $01
	ld a, [$e002]
	dec b
	ret nz

	ld e, $08
	ld [hl], $00
	cp $40
	cp a
	ret nz

	ld a, $80
	ld a, h

jr_002_7450:
	inc b
	inc b
	sbc b
	sbc e
	ldh [$e4], a
	inc bc
	ret c

	ld b, $30
	inc c
	ld hl, $200e
	rlca
	stop
	rst $38
	nop
	nop
	rst $38
	nop
	ret nz

	nop
	nop
	ld a, $00
	ret nz

	inc bc
	jr c, jr_002_73f2

	nop
	nop
	pop hl
	nop
	ld hl, sp+$00
	inc e
	ldh [$0c], a
	jr nc, @+$08

	db $10
	add [hl]
	ld d, b
	add $00
	jp nz, $3000

	ld [$0830], sp
	jr nc, jr_002_7487

jr_002_7487:
	jr jr_002_7494

	inc b
	inc bc
	nop
	ret nz

	nop
	jr c, jr_002_7450

	nop
	nop
	nop
	nop

jr_002_7494:
	ld [$1000], sp
	nop
	ld h, b
	stop
	ret nz

	nop
	nop
	nop
	nop
	ld bc, $0700
	nop
	rra
	nop
	cp $00
	ld hl, sp+$00
	inc a
	inc bc
	nop
	nop
	nop
	nop
	cp $00
	ldh a, [rP1]
	pop bc
	nop
	ld c, $01
	nop
	ccf
	nop
	rst $38
	nop
	nop
	nop
	nop
	ld l, $11
	ld [hl], b
	rrca
	add b
	ld a, a
	nop
	db $fc
	nop
	ldh [rP1], a
	nop
	nop
	nop
	inc b
	nop
	nop
	ldh a, [rP1]
	pop hl
	nop
	add e
	add hl, bc

jr_002_74d7:
	nop
	add hl, bc
	ld d, $06
	jr c, jr_002_7509

	db $10
	ld [$0130], sp

jr_002_74e1:
	jr jr_002_74e3

jr_002_74e3:
	ld c, $00
	pop bc
	ldh [rNR23], a
	ld d, h
	xor b
	inc c
	ld [de], a
	ld a, [bc]
	inc b
	inc b
	ld [bc], a
	ld sp, hl
	ld [bc], a
	add hl, bc
	ld [bc], a
	ld bc, $02f2
	dec de
	ld [bc], a
	inc bc
	nop
	ld bc, $0100
	ld bc, $a001
	ld h, c
	sub c
	ld [hl], c
	sub b
	ld [hl], b
	ret c

	jr c, jr_002_74e1

jr_002_7509:
	jr c, jr_002_74d7

	inc a
	adc $3e
	ld l, [hl]
	sbc [hl]
	rlca
	ld hl, sp-$40
	rst $38
	inc a
	inc a
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	ld [bc], a
	nop
	ld [bc], a
	inc b
	nop
	ld [bc], a
	ld [bc], a
	nop
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
	jr @+$22

	jr jr_002_7534

jr_002_7534:
	inc d
	add b
	nop
	ld [$000c], sp
	nop
	ld bc, $0000
	nop
	nop
	ld b, $00
	ld b, $00
	nop
	ld [bc], a
	inc b
	nop
	stop
	add b
	nop
	nop
	nop
	nop
	nop
	ld bc, $0101
	ld bc, $0101
	nop
	jr nz, jr_002_757d

	db $10
	jr jr_002_755c

jr_002_755c:
	nop
	nop
	nop
	nop
	ld l, a
	sbc a
	ld h, a
	sbc a
	ld a, a
	add c
	cp a
	sbc $f3
	or c
	rst $20
	and c
	ld a, a
	inc hl
	ld a, $1e
	inc b
	ld [$0018], sp
	add b
	add b
	add b
	add b
	add b
	nop
	add b
	nop
	nop

jr_002_757d:
	nop
	nop
	nop
	ret nz

	nop
	stop
	nop
	nop
	ld e, d
	nop
	nop
	nop
	rst $38
	nop
	pop hl
	ld [bc], a
	rra
	nop
	inc bc
	nop
	inc b
	nop
	add b
	nop
	nop
	nop
	ccf
	nop
	sbc $20
	ldh [rP1], a
	nop
	nop
	ld b, b
	nop
	stop
	nop
	nop
	ld hl, sp+$00
	xor $00
	inc bc
	nop
	nop
	nop
	ld hl, sp+$04
	nop
	nop
	nop
	nop
	ld b, d
	nop

jr_002_75b6:
	jr c, jr_002_75b8

jr_002_75b8:
	ld bc, $ff00
	nop
	ld a, h
	nop
	nop
	nop
	ld d, $00
	jr nz, jr_002_75c4

jr_002_75c4:
	nop
	nop
	rrca
	nop
	ld hl, sp+$04
	db $fc
	inc bc
	inc bc
	nop
	nop
	nop
	ld bc, $0000
	nop
	ld [$8300], sp
	nop
	ld d, b
	nop
	ccf
	nop
	ldh [rP1], a
	nop
	nop
	nop
	nop
	nop
	ldh a, [$c0]
	ccf
	ld a, a
	nop
	ld b, $00
	add hl, de
	ldh [$e0], a
	nop
	nop
	nop
	rlca
	ld [$f00c], sp
	jr nc, jr_002_75b6

	ldh [rP1], a
	nop
	nop
	add b
	ld a, a
	ld h, b
	rra
	ld a, $01
	adc a
	nop
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
	nop
	rst $38
	ld bc, $00fe
	add b
	add b
	ld a, c
	ld [hl], b
	rrca
	rrca
	nop
	nop
	nop
	rlca
	add sp, $78
	add b
	ret nz

	nop
	ld bc, $0e06
	ldh a, [$f8]
	nop
	add b
	nop
	nop
	cp $e0
	rra
	ld e, $01
	inc bc
	nop
	cp $01
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	nop
	pop hl
	nop
	rst $38
	di
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
	nop
	nop
	nop
	nop
	rlca
	nop
	jr nc, jr_002_7666

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rrca
	nop

jr_002_7666:
	and b
	rrca
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	db $fc
	nop
	dec de
	ret nz

	ld a, $01
	inc a
	nop
	nop
	ld [$0000], sp
	nop
	nop
	nop
	nop
	nop
	nop
	rst $28
	nop
	ret nz

	inc l
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, $00
	add b
	ld b, l
	nop

jr_002_769f:
	nop
	nop
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
	ld c, $c0
	nop
	inc b
	nop
	nop
	nop
	nop
	ld bc, $0701
	rlca
	inc c
	rrca
	add hl, bc
	ld c, $09
	ld c, $0a
	inc c
	nop
	nop
	nop
	nop
	db $fc
	db $fc
	inc bc
	rst $38
	ld hl, sp+$07
	inc c

Call_002_76cb:
	inc bc
	ld b, $01
	ld a, [de]
	jr jr_002_76d1

jr_002_76d1:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret nz

	ret nz

	ld h, b
	ldh [rNR10], a
	ldh a, [rNR23]
	ld hl, sp+$1a
	inc e
	ld a, [de]
	inc e
	ld a, [de]
	inc e
	rra
	ld e, $1e
	rra
	rrca
	rrca
	rlca
	rlca
	rlca
	rlca
	inc hl
	jr nz, jr_002_773a

	ld b, b
	ld b, l
	ld b, b
	adc l
	nop
	ld sp, hl
	ld [bc], a
	nop
	cp $c0
	cp $e0
	rst $38
	ld [$04f8], sp
	ld a, h
	inc b

jr_002_7705:
	ld a, h
	ld [bc], a
	ld a, [hl]
	inc bc
	ccf
	add c
	ccf
	ld h, c
	rra
	jr nc, jr_002_769f

	nop
	nop
	nop
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
	add b
	add b
	add b
	inc bc
	inc bc
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
	ldh a, [rIE]
	db $fc
	rst $38
	ld a, a
	ld a, a
	ccf
	ccf
	inc bc
	inc bc

jr_002_773a:
	ld bc, $0101
	ld bc, $0101
	jr jr_002_7705

	ld [$88e3], sp
	di
	ret z

	pop af
	call z, $c7f0
	ld hl, sp-$3f
	db $fc
	ldh [rIE], a
	ld b, b
	ret nz

	ld b, b
	ret nz

	ld h, b
	ldh [rNR41], a
	ldh [rNR10], a
	ld [hl], b
	ld [$c438], sp
	inc e
	ld h, h
	inc e
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
	ldh a, [rIE]
	ld hl, sp-$01
	ld a, [hl]
	ld a, a
	rrca
	rrca
	rlca
	rlca
	inc bc
	inc bc
	inc bc
	inc bc
	inc bc
	inc bc
	ld [hld], a
	adc [hl]
	ld [de], a
	adc $12
	xor $12
	and $11
	rst $20
	sub c
	rst $20
	adc c
	rst $20
	adc h
	di
	nop
	nop
	ld bc, $1e00
	nop
	ld h, c
	nop
	ld e, $00
	ld h, b
	nop
	nop
	rlca
	add b
	sbc a
	nop
	nop
	rst $38
	nop
	nop
	nop
	rst $38
	nop
	nop
	nop
	nop
	rst $38
	nop
	rst $38
	nop
	add b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	rrca
	nop
	rra
	nop
	dec a
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	nop
	ld h, b
	nop
	ld hl, sp+$00
	ld hl, sp+$00
	inc e
	ldh [$0e], a
	stop
	nop
	nop
	nop
	inc b
	nop
	inc e
	nop
	jr jr_002_77da

jr_002_77da:
	ld a, b
	nop
	ld a, d
	nop
	cp $1e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz, jr_002_77ea

jr_002_77ea:
	jr nc, jr_002_77ec

jr_002_77ec:
	ld [hl], d
	nop
	or $00
	inc bc
	inc bc
	inc bc
	inc bc
	inc bc
	inc bc
	ld bc, $0101
	ld bc, $0004
	dec b
	nop
	dec b
	nop
	add h
	ld sp, hl
	jp nz, $e1f8

	cp $e0
	db $fd
	ld hl, sp-$01
	ld hl, sp-$01
	ld a, b
	ld a, a
	ccf
	ccf
	ld b, b
	ret z

	ld h, b
	ldh [$f3], a
	inc sp
	dec sp
	dec de
	add hl, de
	jp hl


	inc d
	db $ec
	ld a, [bc]
	or $05
	ei
	rlca
	rlca
	rst $38
	rst $38
	rst $38
	rst $38
	db $fc
	db $fc
	ldh [$e0], a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	nop
	ccf
	nop
	rst $38
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ldh [rP1], a
	ldh a, [rP1]
	cp $00
	rst $38
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld e, $00
	rst $38
	nop
	db $10
	jr z, jr_002_7863

jr_002_7863:
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
	nop
	nop
	rlca
	ld [$0201], sp
	ld bc, $0002
	ld bc, $0002
	ld b, $00
	rlca
	ld [$1e01], sp
	nop
	nop
	db $fc
	nop
	ldh [rSB], a
	nop
	ld e, $00
	pop hl
	nop
	sbc a
	nop
	ld h, b
	nop
	sbc a
	nop
	inc bc
	nop
	inc e
	nop
	db $e3
	nop
	rra
	nop
	rst $38
	nop

jr_002_789b:
	ldh [rP1], a
	rra
	rra
	rst $38
	ld hl, $00e1
	ld e, $00
	rst $38
	nop
	rst $38
	nop
	ret nz

	nop
	ccf
	ccf
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	nop
	nop
	nop
	rst $38
	nop
	ret nz

	nop
	ccf
	ccf
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	push bc
	nop
	jp z, $0ac0

	nop
	ld a, [bc]
	nop
	ld a, [bc]
	nop
	ld a, [bc]
	nop
	push bc
	ret nz

	push bc
	ret nz

	rrca
	ld c, a
	inc bc
	db $e3
	ld [$0fe8], sp
	rst $28
	rrca
	rst $28
	rlca
	rst $20
	rlca
	ld [hl], a
	rlca
	ld [hl], a
	add l
	ei
	add [hl]
	ld sp, hl
	ld h, d
	ld a, l
	ld sp, $113e
	ld e, $18
	rra
	inc c
	inc c
	add c
	add c
	add c
	add c
	add c
	add c
	ld b, d
	jp $c746


	db $ec
	ld l, a
	jr jr_002_789b

	ld [hl], b
	ld a, a
	ret nz

	rst $38
	rst $38
	nop
	nop
	nop
	rst $38
	nop
	nop
	nop
	nop
	nop
	nop
	rst $38
	nop
	nop
	nop
	nop
	nop
	rst $38
	nop
	rst $38
	nop
	nop
	nop
	nop
	nop
	nop
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	add b
	add b
	add d
	nop
	nop
	nop
	nop
	stop
	ld bc, $0080
	nop
	add b
	ld [bc], a
	nop
	inc b
	ld [de], a
	and b
	ld hl, $0008
	ld [$0000], sp
	ld b, $02
	ld [bc], a
	nop
	inc bc
	ld [bc], a
	jr nc, jr_002_7961

	nop
	jr z, jr_002_7944

jr_002_7944:
	nop
	inc d
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

jr_002_7961:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	inc bc
	ld c, $0f
	ldh a, [rIE]
	rrca
	ld c, $01
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
	rra
	rra
	ld [bc], a
	ld [bc], a
	sbc [hl]
	sbc [hl]
	ld a, [hl]
	ld [c], a
	db $fc
	inc e
	rst $38
	inc hl
	rst $38
	db $ed
	rra
	inc de
	db $ec
	db $ec
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	inc bc
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ld [bc], a
	inc bc
	ld [bc], a
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
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc bc
	inc bc
	ld [bc], a
	rlca
	rlca
	rlca
	rlca
	add a
	add h
	jp nz, $e143

	ld hl, $9273
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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

	ret nz

	ldh [rNR41], a
	ld hl, sp-$08
	cp $0e
	ccf
	jp $ef1f


	ldh a, [$f0]
	or b
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
	nop
	nop
	nop
	nop
	nop
	nop
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
	add b
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc bc
	ldh [$f1], a
	ld de, $1919
	dec e
	inc bc
	ld [bc], a
	cp a
	cp a
	xor b
	rst $38
	cp a
	add sp, -$58
	rst $38
	xor b
	rst $38
	cp a
	cp a
	inc bc
	ld [bc], a
	dec e
	rra
	db $10
	inc e
	ldh [$f0], a
	nop
	nop
	di
	ld a, [c]
	inc bc
	and $c3
	cp $ff
	rst $38
	rst $38
	nop
	rst $38
	add b
	ld [hl], b
	rst $08
	ei
	ld [hl], h
	ld [hl], a
	db $eb
	ld l, a
	call c, $a0df
	rst $38
	rra
	rst $38
	add sp, $28
	ccf
	ccf
	jr z, jr_002_7a8e

	rra
	cp b
	ld c, b
	cp [hl]
	ld b, [hl]
	sbc a
	ld h, c
	rst $20
	ld hl, sp-$10
	rrca
	rst $38
	jr jr_002_7a9c

	rst $20
	rst $38
	nop
	rst $38
	rst $38
	rst $38
	nop
	rst $38
	ld a, a
	rst $38
	ld b, a
	rst $38
	db $fc
	ret nz

	rst $38
	rst $38
	ret nz

jr_002_7a8e:
	rst $38
	ld a, a
	nop
	nop
	nop
	nop
	ret nz

	ret nz

	pop hl
	jr nz, jr_002_7b09

	sbc a
	ei
	rrca

jr_002_7a9c:
	rst $38
	db $fc
	db $fc
	rlca
	cp $fd
	rst $38
	ld [bc], a
	rst $38
	rst $18
	rst $38
	and [hl]
	rst $38
	add hl, de
	add hl, de
	rst $38
	rst $38
	ld d, $ef
	rst $28
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0201
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
	nop
	nop
	nop
	nop
	nop
	nop
	rra
	inc e
	ccf
	inc a
	scf
	inc [hl]
	ld h, a
	ld h, h
	rst $00
	rst $00
	add b
	add e
	rlca
	rlca
	inc b
	rlca
	inc b
	rlca
	dec b
	ld b, $07
	inc b
	rlca
	dec b
	ld b, $06
	nop
	nop
	nop
	nop
	nop
	nop
	rlca
	ld hl, sp+$0f
	ldh a, [rIE]
	ld d, c
	cp $52
	db $fc
	db $fc
	nop
	ldh [$f0], a
	ldh a, [$60]
	and b
	ldh [rNR41], a
	ret nz

	ld b, b
	add b
	add b
	nop
	nop
	nop

jr_002_7b09:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret nz

	ld b, b
	add b
	add b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	ld a, e
	ld a, e
	adc $ff
	adc $ff
	ld sp, $ce31
	nop
	rst $38
	rst $38
	nop
	rst $38
	db $e3
	db $fc
	rla
	db $fc
	sbc h
	sbc b
	ld hl, sp-$10
	db $10
	ldh a, [$f0]
	nop
	nop
	nop
	nop
	nop
	nop
	rst $38
	sbc $de
	ld [hl], e
	rst $38
	ld [hl], e
	rst $38
	adc h
	adc h
	ld [hl], e
	nop
	rst $38
	rst $38
	nop
	rst $38
	ldh a, [rIF]
	rst $38
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rra
	rra
	rst $38
	ld [hl], h
	ccf
	db $f4
	rst $38
	rst $38
	rlca
	ld sp, hl
	ld a, [hl]
	add d
	db $fc
	inc b
	rst $38
	ld a, [hl]
	rst $38
	jp nz, Jump_002_7e7f

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	call c, $fddc
	daa
	db $fd
	daa
	call c, $00dc
	nop
	nop
	nop
	nop
	nop
	add b
	add b
	ret nz

	ret nz

	add b
	add b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz, jr_002_7bb4

jr_002_7bb4:
	ld [$1400], sp
	nop
	nop
	db $10
	ld hl, $0404
	ld bc, $1100
	db $10
	dec b
	ld bc, $2208
	nop
	ld [$1004], sp
	jr nz, jr_002_7bcb

jr_002_7bcb:
	nop
	nop
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
	jr nz, jr_002_7be1

	inc b
	ld [hli], a
	nop
	ld bc, $1008
	dec b
	nop

jr_002_7be1:
	ld de, HeaderLogo
	ld hl, $0004
	db $10
	inc d
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
	inc bc
	nop
	dec b
	ld [bc], a
	inc b
	inc bc
	inc b
	inc bc
	dec b
	ld [bc], a
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc c
	nop
	ld e, $00
	inc sp
	inc c
	ld h, c
	ld e, $60
	rra
	ld h, b
	rra
	ld h, c
	ld e, $33
	inc c
	ld e, $00
	inc c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0300
	nop
	ld b, $01

jr_002_7c36:
	inc c
	inc bc
	jr jr_002_7c41

	add hl, de
	rlca
	inc sp
	rrca
	inc sp
	rrca
	inc sp

jr_002_7c41:
	rrca
	inc sp
	rrca
	add hl, de
	rlca
	jr @+$09

	inc c
	inc bc
	ld b, $01
	inc bc
	nop
	ld bc, $c000
	nop
	ldh a, [rP1]
	jr jr_002_7c36

	inc c
	ldh a, [$e6]
	ld hl, sp-$0d
	db $fc
	ld sp, hl
	cp $fc
	rst $38
	db $fc
	rst $38
	ld sp, hl
	cp $f3
	db $fc
	and $f8
	inc c
	ldh a, [rNR23]
	ldh [$f0], a
	nop
	ret nz

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc bc
	nop
	rra
	nop
	inc a
	inc bc
	ld a, b
	ld b, $e0
	inc e
	ldh [rNR32], a
	ld a, b
	ld b, $1c
	inc bc
	rrca
	nop
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
	nop
	nop
	nop
	ldh [rP1], a
	db $10
	ldh [$08], a
	ld [hl], b
	inc b
	jr c, jr_002_7c9f

jr_002_7c9f:
	ld e, $00
	ld e, $04
	jr c, jr_002_7cad

	ld [hl], b
	db $10
	ldh [$e0], a
	nop
	nop
	nop
	nop

jr_002_7cad:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0700
	nop
	ld e, $01
	db $fc
	ld [bc], a
	ld e, $01
	rlca
	nop
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
	ldh a, [rP1]
	add b
	ld a, h
	ld c, $8e
	inc bc
	inc bc
	ld c, $8e
	add b
	ld a, h
	ldh a, [rP1]
	nop
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
	nop
	nop
	nop
	nop
	nop
	nop
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
	nop
	ld bc, $0000
	nop
	nop
	nop
	inc b
	ld b, b
	nop
	ld b, b
	nop
	nop
	nop
	nop
	inc c
	ld bc, $0000
	ld bc, $8300
	inc b
	add b
	db $10
	ld bc, $0000
	nop
	nop
	nop
	ld [$4050], sp
	nop
	nop
	nop
	nop
	ld bc, $0042
	nop
	nop
	ld bc, $0000
	nop
	nop
	nop
	nop
	ld bc, $0020
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
	inc b
	nop
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
	nop
	ld [$0000], sp
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
	nop
	inc b
	nop
	stop
	ld b, b
	jr nz, jr_002_7d6a

jr_002_7d6a:
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
	ld bc, $0008
	nop
	nop
	nop
	nop
	add b
	inc b
	nop
	ld bc, $0000
	inc c
	nop
	nop
	nop
	nop
	nop
	add b
	inc b
	ld [bc], a
	nop
	inc b
	nop
	nop
	nop
	nop
	db $10
	ld [bc], a
	nop
	ld [bc], a
	nop
	nop
	stop
	nop
	jr nc, jr_002_7da0

jr_002_7da0:
	nop
	nop
	dec b
	ld bc, $0000
	ld a, [hli]
	ld bc, $0000
	ld [$0000], sp
	nop
	jr nz, jr_002_7db0

jr_002_7db0:
	jr z, jr_002_7db2

jr_002_7db2:
	nop
	nop
	nop
	ld bc, $000b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc d
	stop
	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	nop
	nop
	stop
	nop
	ld bc, $0000
	nop
	nop
	nop
	nop
	jr nz, jr_002_7de8

	ld [bc], a
	nop
	nop
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

jr_002_7de8:
	nop
	stop
	nop
	ld bc, $0000
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
	inc b
	stop
	nop
	nop
	add d
	nop
	nop
	nop
	ld bc, $0000
	nop
	nop
	nop
	jr nz, jr_002_7e1c

	nop
	nop
	nop
	ld b, b
	ld [$0000], sp
	nop
	nop
	inc b
	nop
	nop
	ld [bc], a
	nop
	nop
	nop

jr_002_7e1c:
	nop
	nop
	nop
	nop
	nop
	nop
	add b
	db $10
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, c
	nop
	nop
	nop
	ld b, b
	nop
	ld [$1000], sp
	nop
	nop
	nop
	nop
	stop
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	ld [bc], a
	nop
	nop
	ld bc, $8002
	ld bc, $0000
	ld b, b
	nop
	ld b, b
	nop
	nop
	ld b, b
	db $10
	jr nz, jr_002_7e54

jr_002_7e54:
	nop
	nop
	nop
	nop
	stop
	nop
	nop
	ld bc, $4000
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	db $10
	ld b, b
	nop
	nop
	ld b, b
	nop
	nop
	nop
	ld [bc], a
	ld bc, $1000
	ld b, b
	nop
	nop
	nop
	jr nz, jr_002_7e78

jr_002_7e78:
	nop
	nop
	nop
	nop
	nop
	nop
	nop

Jump_002_7e7f:
	nop
	nop
	nop
	nop
	ld b, b
	jr jr_002_7e86

jr_002_7e86:
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
	ld e, b
	nop
	add b
	ld b, b
	stop
	nop
	nop
	ld b, d
	nop
	ld b, b
	nop
	nop
	ld b, b
	ld bc, $2014
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	jr nz, jr_002_7eaa

jr_002_7eaa:
	ld b, $00
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
	nop
	nop
	ld b, b
	nop
	stop
	nop
	nop
	nop
	ld bc, $0040
	add b
	stop
	nop
	ld [$0000], sp
	nop
	nop
	nop
	ret nz

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld [$0000], sp
	nop
	ld b, h
	nop
	nop
	nop
	inc b
	nop
	inc b
	nop
	nop
	nop
	nop
	nop
	ld b, b
	nop
	ld bc, $0000
	stop
	nop
	ld b, b
	inc b
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
	ld bc, $0003
	ld b, b
	nop
	ld [$0000], sp
	nop
	ld [$0000], sp
	nop
	nop
	nop
	stop
	nop
	nop
	nop
	nop
	ld bc, $1100
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	nop
	nop
	stop
	nop
	nop
	nop
	nop
	nop
	nop
	db $10
	add b
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
	ld b, b
	ld [bc], a
	nop
	nop
	nop
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	ld [$0000], sp
	nop
	ret nz

	db $10
	ld b, $00
	nop
	nop
	nop
	nop
	nop
	inc b
	stop
	nop
	nop
	nop
	ld de, $0000
	nop
	nop
	stop
	ld bc, $0800
	nop
	ld bc, $0000
	ld bc, $0000
	add b
	nop
	inc b
	nop
	sub h
	nop
	ld a, [bc]
	nop
	stop
	ld b, c
	nop
	jr nz, jr_002_7f74

jr_002_7f74:
	nop
	nop
	ld bc, $0500
	ld b, b
	nop
	nop
	nop
	nop
	ld [$0000], sp
	nop
	ld [hli], a
	nop
	ld b, b
	nop
	nop
	nop
	add h
	nop
	stop
	ld [$0000], sp
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
	stop
	nop
	nop
	nop
	ld [$0000], sp
	nop
	nop
	nop
	nop
	nop
	ld [$0010], sp
	nop
	nop
	nop
	nop
	nop
	ret nz

	stop
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
	add b
	ld bc, $0000
	ld bc, $0000
	nop
	nop
	nop
	nop
	db $10
	ld [$0000], sp
	nop
	jr z, jr_002_7fce

jr_002_7fce:
	jr nz, @+$03

	stop
	ld b, c
	inc b
	nop
	nop
	nop
	ld b, b
	ld [hli], a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld [$1000], sp
	dec b
	nop
	nop
	nop
	inc d
	nop
	nop
	ld a, [bc]
	nop
	inc h
	nop
	nop
	nop
	ld [$0004], sp
	nop
	nop
	nop
	inc b
	nop
	jr nz, jr_002_7ffa

jr_002_7ffa:
	nop
	nop
	ld [bc], a
	nop
	nop
	add h
