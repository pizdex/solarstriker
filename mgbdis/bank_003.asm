; Disassembly of "solarstriker.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

Jump_003_4000:
	nop
	nop
	nop
	nop
	ld bc, $0000
	nop
	nop
	nop
	nop
	ld [bc], a
	nop
	nop
	ld [bc], a
	nop
	nop
	inc bc
	nop
	nop
	nop
	inc b
	nop
	dec b
	inc b
	nop
	ld b, $00
	rlca
	ld [$0c0b], sp
	add hl, bc
	ld a, [bc]
	dec c
	ld c, $0f
	db $10
	ld de, $0012
	nop
	nop
	inc de
	inc b
	nop
	inc d
	nop
	nop
	inc b
	nop
	inc d
	nop
	nop
	inc de
	nop
	rlca
	dec d
	dec bc
	inc c
	ld d, $00
	dec c
	add hl, de
	rla
	dec d
	ld a, [de]
	dec de
	ld d, $18
	inc e
	ld a, [de]
	nop
	dec d
	add hl, de
	inc c
	ld d, $0a
	dec c
	ld c, $00
	dec e
	nop
	inc de
	ld e, $1f
	inc de
	dec e
	jr nz, jr_003_407b

	ld e, $0c
	ld [hli], a
	rra
	dec c
	dec e
	jr nz, jr_003_4085

	ld e, $24
	ld e, $00
	inc de
	nop
	nop
	inc d
	nop
	dec h
	inc d
	inc de
	dec h
	nop
	inc de
	inc d
	nop
	dec h
	inc d
	nop
	dec h
	nop
	ld h, $27
	nop

jr_003_407b:
	nop
	nop
	nop
	jr z, jr_003_4080

jr_003_4080:
	add hl, hl
	ld a, [hli]
	ld sp, $2b32

jr_003_4085:
	inc l
	inc sp
	inc [hl]
	dec l
	ld l, $00
	nop
	cpl
	jr nc, jr_003_408f

jr_003_408f:
	nop
	cp a
	rst $30
	ld e, d
	rst $38
	cp $fd
	or [hl]
	ld a, d
	cp h
	cp $9e
	cp [hl]
	and [hl]
	ei
	ld h, d
	rst $38
	xor d
	db $dd
	xor e
	rst $18
	xor e
	rst $38
	xor $ee
	ld a, a
	jp hl


	cp e
	rst $28
	ld a, [hli]
	cp $ab
	di
	and e
	ld sp, hl
	cp e
	rst $38
	xor d
	rst $38
	db $eb
	rst $38
	ld [$aeff], a
	rst $30
	xor d
	rst $38
	and e
	rst $38
	db $fc
	di
	cp a
	rst $38
	ccf
	rst $38
	xor h
	rst $38
	or $7f
	ld [$effa], a
	rst $38
	db $ec
	rst $28
	ld [hld], a
	rst $38
	ld a, [hli]
	rst $38
	xor d
	db $fd
	db $ec
	db $db
	db $eb
	rst $38
	ld a, [$96fb]
	cp a
	xor $ff
	xor d
	rst $38
	rst $20
	cp a
	rst $30
	rst $28
	ld [$eeff], a
	ld e, e
	ld a, [$abff]
	cp a
	ld l, $ff
	adc e
	rst $38
	adc $fb
	ld l, e
	rst $28
	cp [hl]
	rst $38
	or e
	ld a, a
	cpl
	rst $38
	pop hl
	rst $28
	ld hl, sp+$6f
	ld a, [hli]
	di
	cp d
	rst $38
	ei
	rst $18
	ld [$6afb], a
	ld a, a
	ei
	cp [hl]
	adc [hl]
	rst $30
	xor $f7
	dec hl
	ld d, a
	ld sp, hl
	rst $38
	xor e
	ld l, a
	xor $ed
	db $eb
	di
	cp e
	adc l
	srl a
	ei
	ei
	sbc $ff
	ld [$abff], a
	di
	xor [hl]
	rst $18
	and $df
	ei
	and $ea
	ld a, a
	adc $ff
	cp a
	rst $38
	xor [hl]
	ei
	ei
	cp a
	cp d
	ld a, a
	ei
	rst $38
	cp $7f
	db $eb
	rst $38
	ld a, [hli]
	rst $18
	ld a, [hli]
	ld a, c
	cp [hl]
	cp $eb
	ei
	adc e
	ei
	cp [hl]
	rst $38
	cp d
	rst $38
	ld a, [c]
	cp a
	add [hl]
	ld a, a
	rst $28
	rst $18
	cp $f9
	jp hl


	cp a
	db $eb
	or $bf
	ei
	and b
	rst $38
	cp e
	cp a
	xor [hl]
	rst $38
	ld hl, sp-$01
	rst $38
	rst $38
	rst $38
	cp a
	and a
	cp a
	or [hl]
	rst $38
	ld a, [hl]
	xor a
	rst $18
	cp e
	ld a, e
	db $fc
	db $eb
	cp $ee
	rst $38
	jp hl


	cp [hl]
	rst $20
	cp e
	cp e
	rst $38
	ld [$36ff], a
	cp $ea
	ld a, [hl]
	ld a, [$e4dd]
	cp a
	cp a
	db $fd
	cp [hl]
	sbc $fb
	rst $38
	or a
	db $fd
	cp e
	rst $38
	db $eb
	db $eb
	sbc a
	rst $38
	cp h
	rst $38
	dec e
	db $fc
	sbc a
	rst $30
	cp [hl]
	db $eb
	cp a
	ei
	cp [hl]
	rst $18
	cp $ff
	cp d
	cp e
	ld [$3ff7], a
	rst $30
	or d
	rla
	xor [hl]
	push af
	cp a
	rst $38
	cp $bb
	rst $00
	halt
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0100
	nop
	ld bc, $0901
	nop
	nop
	nop
	ld bc, $0000
	ld bc, $0000
	nop
	ld bc, $0000
	nop
	ld bc, $0000
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
	nop
	ld bc, $0100
	nop
	nop
	ld bc, $0100
	nop
	nop
	ld bc, $0001
	nop
	ld bc, $0000
	ld bc, $0000
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0100
	nop
	ld bc, $0901
	nop
	nop
	nop
	ld bc, $0000
	ld bc, $0000
	nop
	ld bc, $0000
	nop
	ld bc, $0000
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
	nop
	ld bc, $0100
	nop
	nop
	ld bc, $0100
	nop
	nop
	ld bc, $0001
	nop
	ld bc, $0000
	ld bc, $0000
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
	ld bc, $0000
	ld bc, $0100
	nop
	ld bc, $0000
	nop
	ld bc, $0000
	nop
	nop
	nop
	nop
	ld bc, $0000
	nop
	nop
	add hl, bc
	nop
	nop
	nop
	nop
	ld bc, $0000
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
	nop
	nop
	nop
	nop
	ld bc, $0000
	nop
	nop
	ld bc, $0900
	nop
	nop
	nop
	nop
	ld bc, $0000
	nop
	ld bc, $0004
	nop
	nop
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	ld bc, $0000
	nop
	ld bc, $0100
	nop
	ld bc, $0004
	nop
	ld bc, $0000
	nop
	nop
	ld bc, $0000
	nop
	ld bc, $0001
	nop
	ld bc, $0000
	nop
	nop
	ld bc, $ff01
	cp l
	xor [hl]
	ld a, h
	add sp, -$01
	adc d
	cp a
	ld l, h
	rst $38
	ld c, a
	db $fd
	jp z, $aeff

	db $db
	nop
	ld e, $1f
	nop
	nop
	nop
	nop
	ld e, $1f
	nop
	nop
	nop
	nop
	ld e, $00
	nop
	nop
	nop
	nop
	rra
	nop
	nop
	nop
	jr nz, jr_003_43ca

	ld [hli], a
	nop
	nop
	jr nz, jr_003_43cf

	ld [hli], a
	nop
	nop
	nop
	nop
	rra
	nop
	nop
	nop
	nop
	nop
	rra
	nop
	nop
	nop
	nop
	rra
	nop
	nop
	nop
	nop
	rra
	nop
	rra
	nop
	nop
	nop
	rra

jr_003_43ca:
	nop
	nop
	nop
	nop
	inc hl

jr_003_43cf:
	rra
	nop
	nop
	nop
	nop
	ld e, $1f
	nop
	nop
	nop
	rra
	nop
	nop
	nop
	nop
	nop
	ld e, $1f
	nop
	nop
	nop
	nop
	ld e, $1f
	nop
	ld e, $00
	rra
	nop
	rra
	nop
	jr nz, jr_003_4411

	ld [hli], a
	ld e, $00
	nop
	nop
	nop
	nop
	rra
	nop
	nop
	nop
	nop
	ld e, $00
	nop
	nop
	ld e, $20
	ld hl, $0022
	nop
	nop
	rra
	ld e, $00
	nop
	nop
	rra
	nop
	nop
	nop
	nop

jr_003_4411:
	nop
	rra
	nop
	nop
	nop
	nop
	nop
	rra
	nop
	nop
	nop
	nop
	rra
	nop
	nop
	nop
	nop
	nop
	rra
	nop
	nop
	nop
	rra
	ld e, $1f
	nop
	nop
	rra
	nop
	ld e, $00
	nop
	nop
	ld e, $1f
	nop
	nop
	nop
	nop
	ld e, $00
	nop
	nop
	nop
	nop
	nop
	rra
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld e, $00
	rra
	nop
	nop
	nop
	nop
	nop
	nop
	rra
	nop
	nop
	nop
	nop
	jr nz, jr_003_4479

	ld [hli], a
	nop
	inc hl
	rra
	nop
	nop
	nop
	nop
	ld e, $1f
	ld e, $00
	nop
	nop
	nop
	rra
	nop
	nop
	nop
	ld e, $00
	nop
	nop
	nop
	rst $38
	ld [hl], h
	ld [hl], l
	ld d, c
	ld e, e
	rst $10
	ei
	db $fd
	rst $38

jr_003_4479:
	sbc [hl]
	ld [hl], e
	ld h, l
	xor l
	push de
	rst $38
	db $ed
	nop
	nop
	nop
	nop
	ld bc, $0302
	inc b
	inc bc
	inc b
	dec c
	ld c, $05
	ld b, $05
	ld b, $07
	ld [$100f], sp
	add hl, bc
	ld a, [bc]
	ld de, $0b12
	inc c
	add hl, bc
	ld a, [bc]
	nop
	inc de
	nop
	jr jr_003_44b5

	nop
	add hl, de
	nop
	nop
	dec d
	nop
	nop
	nop
	ld d, $00
	ld a, [de]
	rla
	nop
	dec de
	nop
	inc e
	dec e
	nop
	jr nz, jr_003_44b5

jr_003_44b5:
	nop
	ld hl, $0000
	nop
	ld [hli], a
	nop
	nop
	nop
	nop
	inc hl
	ld e, $1f
	inc h
	dec h
	nop
	ld h, $00
	nop
	daa
	nop
	add hl, hl
	ld a, [hli]
	nop
	jr z, jr_003_44fa

	inc l
	dec l
	nop
	nop
	nop
	nop
	dec d
	ld [hli], a
	nop
	nop
	ld l, $00
	nop
	cpl
	nop
	nop
	nop
	nop
	nop
	nop
	jr nc, jr_003_44e5

jr_003_44e5:
	nop
	ld sp, $0000
	nop
	nop
	ld [hld], a
	nop
	ld [hld], a
	nop
	nop
	ld [hld], a
	nop
	nop
	nop
	nop
	nop
	ld [hld], a
	nop
	inc sp
	inc [hl]

jr_003_44fa:
	scf
	jr c, jr_003_44fd

jr_003_44fd:
	nop
	add hl, sp
	ld a, [hld]
	dec [hl]
	ld [hl], $3b
	inc a
	dec a
	ld a, $4b
	ld c, h
	ccf
	ld b, b
	ld c, l
	ld c, [hl]
	ld b, c
	ld b, d
	ld c, a
	ld d, b
	ld b, e
	ld b, h
	ld d, c
	ld d, d
	ld b, l
	ld b, [hl]
	ld d, e
	ld d, h
	ld b, a
	ld c, b
	ld d, l
	ld d, [hl]
	ld c, c
	ld c, d
	ld d, a
	ld e, b
	ld e, c
	ld e, d
	ld e, a
	ld h, b
	ld e, e
	ld e, h
	ld h, c
	ld h, c
	ld e, l
	ld e, [hl]
	ld h, d
	ld h, e
	dec hl
	dec e
	xor d
	ld d, l
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	nop
	nop
	ld [bc], a
	nop
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	nop
	dec b
	ld bc, $0002
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	dec b
	ld b, $00
	ld bc, $0300
	inc bc
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	ld b, $00
	ld [bc], a
	nop
	nop
	inc bc
	inc bc
	inc b
	inc bc
	inc bc
	inc b
	inc bc
	inc bc
	nop
	nop
	dec b
	ld bc, $0002
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	dec b
	ld b, $00
	ld bc, $0300
	inc bc
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	ld b, $00
	ld [bc], a
	nop
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	nop
	dec b
	ld bc, $0002
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	dec b
	ld b, $00
	ld bc, $0300
	inc bc
	inc b
	inc bc
	inc bc
	inc b
	inc bc
	inc bc
	nop
	ld b, $00
	ld [bc], a
	nop
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	nop
	dec b
	ld bc, $0002
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	dec b
	ld b, $00
	ld bc, $0300
	inc bc
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	ld b, $00
	ld [bc], a
	nop
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	nop
	dec b
	ld bc, $0000
	inc bc
	inc bc
	inc b
	inc bc
	inc bc
	inc b
	inc bc
	inc bc
	nop
	nop
	ld b, $00
	nop
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	inc bc
	inc bc
	nop
	nop
	nop
	rst $38
	ld b, e
	nop
	nop
	nop
	nop
	nop
	nop
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
	dec c
	ld d, $17
	dec d
	ld de, $0012
	nop
	nop
	rlca
	ld [$0c11], sp
	dec c
	ld de, $1312
	inc d
	rrca
	stop
	nop
	nop
	rlca
	ld [$080f], sp
	dec d
	ld a, [bc]
	dec bc
	nop
	inc de
	inc d
	ld a, [bc]
	dec bc
	nop
	nop
	inc c
	dec c
	nop
	ld [$0a00], sp
	dec bc
	nop
	inc c
	dec c
	ld a, [bc]
	dec bc
	nop
	inc c
	dec c
	add hl, bc
	ld de, $110d
	ld [de], a
	nop
	rlca
	ld [$0f09], sp
	db $10
	rlca
	ld [$0e15], sp
	ld a, [bc]
	ld c, $0f
	stop
	nop
	inc de
	inc d
	add hl, bc
	ld a, [bc]
	dec bc
	inc de
	inc d
	ld de, $1512
	ld de, $0012
	nop
	nop
	inc de
	inc d
	ld a, [bc]
	dec bc
	inc c
	dec c
	ld a, [bc]
	dec bc
	ld de, $0012
	nop
	nop
	nop
	rlca
	ld [$100f], sp
	inc de
	inc d
	rrca
	db $10
	ld a, [bc]
	dec bc
	nop
	nop
	nop
	nop
	rlca
	ld [$0a0e], sp
	dec bc
	inc de
	inc d
	ld a, [bc]
	ld a, [bc]
	dec bc
	nop
	nop
	nop
	nop
	inc c
	dec c
	ld de, $0012
	rlca
	ld [$120a], sp
	nop
	nop
	nop
	nop
	inc c
	dec c
	ld de, $0012
	nop
	rlca
	ld [$0b0f], sp
	nop
	nop
	nop
	rlca
	ld [$0a00], sp
	dec bc
	nop
	nop
	nop
	inc de
	inc d
	nop
	nop
	nop
	nop
	inc c
	dec c
	ld de, $0012
	nop
	nop
	nop
	nop
	inc de
	nop
	nop
	nop
	inc c
	dec c
	ld c, $0f
	stop
	nop
	nop
	nop
	nop
	rlca
	nop
	nop
	rlca
	ld [$0000], sp
	add hl, bc
	ld a, [bc]
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rlca
	ld [$000e], sp
	nop
	rrca
	stop
	nop
	nop
	nop
	nop
	nop
	nop
	inc c
	dec c
	ld d, $17
	nop
	nop
	rrca
	stop
	nop
	nop
	nop
	nop
	rlca
	ld [$1211], sp
	inc de
	inc d
	dec d
	nop
	ld a, [bc]
	dec bc
	nop
	nop
	nop
	nop
	inc c
	dec c
	ld a, [bc]
	dec bc
	nop
	inc de
	inc d
	ld de, $0012
	nop
	nop
	inc c
	nop
	inc de
	inc d
	ld a, [bc]
	dec bc
	nop
	rlca
	ld [$0b0a], sp
	nop
	nop
	rlca
	ld [$0c00], sp
	dec c
	ld a, [bc]
	dec bc
	nop
	inc c
	dec c
	ld a, [bc]
	dec bc
	nop
	nop
	inc c
	dec c
	inc c
	dec c
	ld de, $0012
	rlca
	ld [$1211], sp
	nop
	nop
	rlca
	ld [$0809], sp
	dec d
	rrca
	stop
	rlca
	ld [$0b0a], sp
	nop
	nop
	inc c
	dec c
	add hl, bc
	inc de
	inc d
	ld c, $0a
	dec bc
	rlca
	ld [$100f], sp
	nop
	rlca
	ld [$000e], sp
	nop
	inc de
	inc d
	rrca
	db $10
	inc c
	dec c
	nop
	ld a, [bc]
	dec bc
	rlca
	ld [$1100], sp
	nop
	inc c
	dec c
	ld c, $18
	add hl, de
	nop
	dec d
	rrca
	db $10
	inc c
	dec c
	dec d
	ld a, [bc]
	rlca
	ld [$0000], sp
	dec d
	ld c, $00
	nop
	nop
	jr jr_003_47be

	nop
	nop
	ld a, [bc]
	inc c
	dec c
	dec d
	ld c, $00
	nop
	add hl, bc
	nop
	nop
	nop
	nop
	dec d
	ld de, $0812
	ld c, $00
	nop
	nop
	nop
	nop
	nop

jr_003_47be:
	nop
	nop
	nop
	nop
	ld a, [bc]
	dec bc
	inc de
	inc d
	nop
	nop
	nop
	nop
	nop
	nop
	ld c, $00
	nop
	ld de, $0012
	nop
	inc de
	inc d
	nop
	dec d
	nop
	nop
	nop
	nop
	nop
	add hl, bc
	ld a, [bc]
	dec bc
	nop
	nop
	rlca
	ld [$0000], sp
	add hl, bc
	ld d, $17
	nop
	nop
	nop
	ld a, [bc]
	dec bc
	nop
	nop
	nop
	inc de
	inc d
	ld c, $11
	ld [de], a
	inc de
	inc d
	nop
	dec d
	rrca
	stop
	stop
	rlca
	ld [$0a00], sp
	dec bc
	nop
	inc de
	inc d
	nop
	nop
	ld a, [bc]
	dec bc
	ld a, [bc]
	dec bc
	rlca
	ld [$0f00], sp
	stop
	rlca
	ld [$1115], sp
	ld [de], a
	nop
	rrca
	db $10
	inc c
	dec c
	dec d
	nop
	ld a, [bc]
	dec bc
	rlca
	ld [$0a0e], sp
	dec bc
	nop
	inc d
	jr @+$1b

	nop
	nop
	ld de, $0012
	inc c
	dec c
	ld de, $0012
	inc c
	inc de
	inc d
	nop
	nop
	ld de, $0012
	rlca
	ld [$0a0e], sp
	dec bc
	rlca
	ld [$1300], sp
	inc d
	dec d
	ld a, [bc]
	dec bc
	nop
	nop
	inc de
	inc d
	rrca
	stop
	inc de
	nop
	rlca
	ld [$1211], sp
	nop
	nop
	nop
	nop
	inc de
	inc d
	ld a, [bc]
	dec bc
	nop
	nop
	inc c
	dec c
	ld a, [bc]
	dec bc
	nop
	nop
	nop
	nop
	rlca
	ld [$100f], sp
	nop
	rlca
	ld [$1211], sp
	nop
	nop
	nop
	nop
	nop
	inc c
	dec c
	add hl, bc
	ld a, [bc]
	dec bc
	rlca
	ld [$0b0a], sp
	nop
	nop
	nop
	nop
	rlca
	ld [$1115], sp
	ld [de], a
	nop
	inc c
	dec c
	ld a, [bc]
	dec bc
	nop
	nop
	nop
	nop
	inc c
	dec c
	nop
	ld a, [bc]
	dec bc
	nop
	dec c
	ld c, $0a
	dec bc
	nop
	nop
	nop
	inc c
	dec c
	nop
	ld de, $0012
	nop
	dec d
	ld de, $0012
	nop
	nop
	rlca
	ld [$0900], sp
	ld a, [bc]
	dec bc
	nop
	nop
	ld de, $0012
	nop
	nop
	nop
	inc c
	dec c
	dec d
	ld de, $0012
	nop
	nop
	ld a, [bc]
	dec bc
	nop
	nop
	nop
	rlca
	ld [$0900], sp
	ld a, [bc]
	dec bc
	nop
	nop
	nop
	ld a, [bc]
	dec bc
	nop
	nop
	nop
	nop
	inc de
	inc d
	ld c, $0f
	stop
	nop
	nop
	ld [de], a
	nop
	nop
	nop
	nop
	nop
	rlca
	ld [$0000], sp
	rrca
	stop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc de
	inc d
	dec d
	ld c, $0a
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc c
	dec c
	nop
	nop
	ld a, [bc]
	dec bc
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rlca
	ld [$0000], sp
	ld de, $0012
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc c
	dec c
	nop
	nop
	rrca
	stop
	nop
	stop
	nop
	nop
	nop
	rlca
	ld [$0000], sp
	nop
	nop
	ld a, [bc]
	dec bc
	nop
	rrca
	stop
	nop
	nop
	rlca
	ld [$0000], sp
	ld c, $00
	rrca
	stop
	dec d
	ld a, [bc]
	dec bc
	nop
	nop
	nop
	inc de
	inc d
	dec d
	ld c, $00
	nop
	rrca
	db $10
	ld de, $0012
	nop
	nop
	nop
	nop
	inc de
	inc d
	nop
	nop
	nop
	nop
	ld a, [bc]
	rrca
	stop
	nop
	nop
	nop
	nop
	rlca
	ld [$0000], sp
	nop
	nop
	rrca
	add hl, bc
	ld a, [bc]
	dec bc
	nop
	nop
	nop
	nop
	rlca
	ld [$0009], sp
	nop
	nop
	ld c, $11
	ld [de], a
	nop
	nop
	nop
	nop
	nop
	nop
	inc de
	inc d
	nop
	nop
	nop
	add hl, bc
	ld [de], a
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc c
	dec c
	nop
	nop
	nop
	ld c, $0b
	nop
	nop
	nop
	nop
	nop
	nop
	rlca
	ld [$0015], sp
	nop
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
	dec c
	nop
	dec d
	ld d, $17
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc c
	dec c
	nop
	nop
	ld de, $1312
	inc d
	nop
	nop
	nop
	nop
	nop
	rlca
	ld [$000e], sp
	nop
	ld a, [bc]
	dec bc
	rlca
	ld [$0000], sp
	nop
	nop
	nop
	inc c
	dec c
	nop
	nop
	ld de, $0012
	nop
	inc de
	nop
	nop
	nop
	nop
	inc c
	dec c
	nop
	nop
	nop
	ld a, [bc]
	dec bc
	nop
	nop
	rlca
	nop
	nop
	nop
	rlca
	ld [$0015], sp
	nop
	ld c, $0a
	dec bc
	nop
	nop
	rlca
	inc d
	nop
	nop
	nop
	inc de
	inc d
	nop
	nop
	ld de, $0012
	nop
	nop
	inc c
	ld [$0000], sp
	nop
	inc c
	dec c
	nop
	nop
	ld a, [bc]
	dec bc
	nop
	nop
	rlca
	ld [$000d], sp
	nop
	inc c
	dec c
	ld d, $17
	nop
	ld a, [bc]
	dec bc
	nop
	nop
	nop
	inc de
	nop
	nop
	rlca
	ld [$1211], sp
	inc de
	inc d
	rrca
	stop
	nop
	nop
	rlca
	nop
	nop
	rlca
	ld [$0b0a], sp
	nop
	inc de
	inc d
	ld a, [bc]
	dec bc
	nop
	nop
	nop
	nop
	nop
	inc c
	dec c
	ld a, [bc]
	dec bc
	nop
	inc c
	dec c
	rrca
	stop
	nop
	nop
	nop
	inc c
	dec c
	nop
	rrca
	db $10
	inc c
	dec c
	nop
	dec d
	rrca
	stop
	nop
	rlca
	ld [$0000], sp
	nop
	jr jr_003_4a76

	nop
	nop
	nop
	nop
	rrca
	stop
	inc c
	dec c
	nop
	nop
	nop
	dec d
	nop
	nop
	nop
	ld c, $00
	nop
	rrca
	db $10
	dec c
	add hl, bc
	nop
	nop

jr_003_4a76:
	ld c, $00
	nop
	nop
	add hl, bc
	nop
	nop
	dec d
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec de
	ld a, [de]
	nop
	dec e
	inc e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc e
	dec e
	nop
	jr z, jr_003_4b12

	ld a, [hli]
	nop
	ld a, [de]
	dec de
	nop
	nop
	nop
	nop
	nop
	nop
	ld hl, $2322
	inc h
	dec h
	ld h, $27
	nop
	nop
	nop
	nop
	nop
	nop
	dec e
	inc e
	nop
	ld e, $1f
	jr nz, jr_003_4b07

jr_003_4b07:
	dec de
	ld a, [de]
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld a, [de]
	dec de

jr_003_4b12:
	nop
	inc e
	dec e
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	sub b
	nop
	db $10
	ld c, b
	nop
	nop
	nop
	jr nz, jr_003_4b6a

jr_003_4b6a:
	nop
	ld b, b
	jr nz, @+$42

	add b
	ld h, [hl]
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

Call_003_5179:
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

Call_003_54ba:
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

Jump_003_5811:
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
	nop
	nop
	nop
	nop
	ld bc, $0202
	ld bc, $0303
	nop
	nop
	nop
	inc b
	inc de
	inc d
	dec b
	ld b, $15
	ld d, $07
	ld [$1817], sp
	add hl, bc
	ld a, [bc]
	add hl, de
	ld a, [de]
	dec bc
	inc c
	dec de
	inc e
	dec c
	ld c, $1d
	ld e, $0f
	db $10
	rra
	jr nz, jr_003_58ea

	ld [de], a
	ld hl, $2322
	inc h
	ld [hld], a
	inc sp
	dec h
	ld h, $34
	dec [hl]
	daa
	jr z, jr_003_591d

	scf
	add hl, hl
	ld a, [hli]

jr_003_58ea:
	jr c, jr_003_5925

	dec hl
	inc l
	ld a, [hld]
	dec sp
	dec l
	ld l, $3c
	dec a
	cpl
	jr nc, jr_003_5935

	ccf
	ld sp, $4000
	ld b, c
	ld b, d
	ld b, e
	ld d, d
	ld d, e
	ld b, h
	ld b, l
	nop
	ld d, h
	ld b, [hl]
	ld b, a
	nop
	ld d, l
	ld c, b
	ld c, c
	ld d, [hl]
	ld d, a
	ld c, d
	ld c, e
	ld e, b
	ld e, c
	ld c, h
	ld c, l
	nop
	nop
	ld c, [hl]
	ld c, a
	ld e, d
	ld e, e
	ld d, b
	ld d, c
	nop
	nop
	ld e, h

jr_003_591d:
	ld e, l
	ld h, d
	ld h, d
	ld e, [hl]
	ld e, a
	ld h, d
	ld h, d
	ld h, b

jr_003_5925:
	ld h, c
	ld h, d
	ld h, d
	ld c, b
	add hl, bc
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

jr_003_5935:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	dec de
	inc e
	dec de
	dec de
	dec de
	inc e
	inc e
	dec de
	dec e
	dec de
	nop
	nop
	nop
	nop
	nop
	inc de
	inc d
	dec d
	ld d, $17
	jr @+$1b

	ld a, [de]
	nop
	nop
	nop
	nop
	nop
	nop
	dec bc
	inc c
	dec c
	ld c, $0f
	db $10
	ld de, $0012
	nop
	nop
	nop
	nop
	nop
	inc bc
	inc b
	dec b
	ld b, $07
	ld [$0a09], sp
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
	nop
	nop
	nop
	nop
	ld bc, $0101
	ld bc, $0101
	ld bc, $0101
	ld bc, $0000
	nop
	rst $38
	ld d, b
	ld a, [bc]
	ld [de], a
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

Jump_003_5ad3:
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
	jp nz, RST_00

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

Jump_003_6011:
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
	inc b
	nop
	inc b
	nop
	nop
	jr nz, jr_003_6027

jr_003_6027:
	inc de
	nop
	nop
	ld b, b
	nop
	rlca
	ld h, b
	nop
	ld c, b
	nop
	rlca
	ld [hl], b
	nop
	ld d, b
	nop
	rlca
	add b
	nop
	ld e, b
	nop
	rlca
	sub b
	nop
	ld h, b
	nop
	rlca
	and b
	nop
	ld l, b
	nop
	rlca
	or b
	nop
	ld [hl], b
	nop
	rlca
	ret nz

	nop
	ld a, b
	nop
	rlca
	ret nc

	nop
	sub b
	nop
	rlca
	add b
	db $10
	sbc b
	nop
	rlca
	ld [hl], b
	db $10
	and b
	nop
	rlca
	ld h, b
	db $10
	xor b
	nop
	rlca
	ld d, b
	db $10
	or b
	nop
	rlca
	ld b, b
	db $10
	cp b
	nop
	rlca
	jr nc, @+$12

	ret nz

	nop
	rlca
	jr nz, @+$12

	ret z

	nop
	rlca
	db $10
	db $10
	ldh [rP1], a
	dec b
	stop
	add sp, $00
	dec b
	jr nz, jr_003_6084

jr_003_6084:
	ldh a, [rP1]
	dec b
	jr nc, jr_003_6089

jr_003_6089:
	ld hl, sp+$00
	dec b
	ld b, b
	nop
	nop
	ld bc, $4105
	nop
	ld [$0501], sp
	ld [hld], a
	nop
	db $10
	ld bc, $2305
	nop
	jr jr_003_60a0

	dec b

jr_003_60a0:
	inc d
	nop
	jr nc, jr_003_60a5

	dec b

jr_003_60a5:
	ret nc

	db $10
	jr c, jr_003_60aa

	dec b

jr_003_60aa:
	ret nz

	db $10
	ld b, b
	ld bc, $b005
	db $10
	ld c, b
	ld bc, $a005
	db $10
	ld d, b
	ld bc, $a105
	db $10
	ld e, b
	ld bc, $b205
	db $10
	ld h, b
	ld bc, $c305
	db $10
	ld l, b
	ld bc, $d405
	db $10
	ld [hl], b
	ld bc, $700b
	nop
	and b
	ld bc, $1007
	db $10
	xor b
	ld bc, $d00a
	ld [bc], a
	or b
	ld bc, $2007
	db $10
	cp b
	ld bc, $d00a
	ld [bc], a
	ret nz

	ld bc, $3107
	db $10
	ret z

	ld bc, $d20a
	ld [bc], a
	ret nc

	ld bc, $4307
	db $10
	ret c

	ld bc, $d40a
	ld [bc], a
	ldh [rSB], a
	dec b
	ret nc

	db $10
	add sp, $01
	ld a, [bc]
	db $10
	ld [de], a
	ldh a, [rSB]
	dec b
	ret nz

	db $10
	ld hl, sp+$01
	ld a, [bc]
	db $10
	ld [de], a
	nop
	ld [bc], a
	dec b
	or c
	db $10
	ld [$0a02], sp
	ld [de], a
	ld [de], a
	db $10
	ld [bc], a
	dec b
	and e
	db $10
	jr jr_003_611e

	ld a, [bc]
	inc d

jr_003_611e:
	ld [de], a
	jr nc, jr_003_6123

	rlca
	db $10

jr_003_6123:
	db $10
	inc [hl]
	ld [bc], a
	rlca
	ret nc

	nop
	jr c, @+$04

	rlca
	jr nz, jr_003_613e

	inc a
	ld [bc], a
	rlca
	ret nz

	nop
	ld b, b
	ld [bc], a
	rlca
	ld sp, $4410
	ld [bc], a
	rlca
	or d
	nop
	ld c, b

jr_003_613e:
	ld [bc], a
	rlca
	ld b, e
	db $10
	ld c, h
	ld [bc], a
	rlca
	and h
	nop
	ld d, b
	ld [bc], a
	rlca
	ld d, b
	db $10
	ld d, h
	ld [bc], a
	rlca
	sub b
	nop
	ld e, b
	ld [bc], a
	rlca
	ld h, b
	db $10
	ld e, h
	ld [bc], a
	rlca
	add b
	nop
	ld h, b
	ld [bc], a
	rlca
	ld [hl], c
	db $10
	ld h, h
	ld [bc], a
	rlca
	ld [hl], d
	nop
	ld l, b
	ld [bc], a
	rlca
	add e
	db $10
	ld l, h
	ld [bc], a
	rlca
	ld h, h
	nop
	ld [hl], b
	ld [bc], a
	dec bc
	ld [hl], b
	nop
	sub b
	ld [bc], a
	dec b
	ld de, $9400
	ld [bc], a
	rlca
	call nc, $9800
	ld [bc], a
	dec b
	ld [de], a
	nop
	sbc h
	ld [bc], a
	rlca
	db $d3
	nop
	and b
	ld [bc], a
	dec b
	inc de
	nop
	and h
	ld [bc], a
	rlca
	jp nc, $a800

	ld [bc], a
	dec b
	inc d
	nop
	xor h
	ld [bc], a
	rlca
	pop de
	nop
	ret nc

	ld [bc], a
	rlca
	ld de, $d410
	ld [bc], a
	ld b, $d2
	ld de, $02d8
	rlca
	inc de
	db $10
	call c, $0602
	call nc, $e011
	ld [bc], a
	rlca
	ld de, $e410
	ld [bc], a
	ld b, $d2
	ld de, $02e8
	rlca
	inc de
	db $10
	db $ec
	ld [bc], a
	ld b, $d4
	ld de, $0310
	ld b, $11
	ld bc, $0318
	ld b, $20
	ld bc, $0320
	ld b, $34
	ld bc, $0328
	ld b, $40
	ld bc, $0340
	ld b, $d2
	ld de, $0348
	ld b, $c0
	ld de, $0350
	ld b, $b3
	ld de, $0358
	ld b, $a0
	ld de, $0370
	ld b, $11
	ld bc, $0374
	ld b, $d2
	ld de, $0378
	ld b, $23
	ld bc, $037c
	ld b, $c4
	ld de, $0380
	ld b, $31
	ld bc, $0384
	ld b, $b2
	ld de, $0388
	ld b, $43
	ld bc, $038c
	ld b, $a4
	ld de, $0390
	dec bc
	ld [hl], b
	nop
	and b
	inc bc
	ld a, [bc]
	jr nz, jr_003_6220

	xor b
	inc bc

jr_003_6220:
	ld a, [bc]
	pop bc
	ld [bc], a
	or b
	inc bc
	ld a, [bc]
	ld b, b
	ld [bc], a
	cp b
	inc bc
	ld a, [bc]
	and d
	ld [bc], a
	ret nz

	inc bc
	ld a, [bc]
	db $10
	ld [bc], a
	ret z

	inc bc
	ld a, [bc]
	db $d3
	ld [bc], a
	ret nc

	inc bc
	ld a, [bc]
	jr nc, jr_003_623e

	ret c

	inc bc

jr_003_623e:
	ld a, [bc]
	or h
	ld [bc], a
	ldh [$03], a
	ld a, [bc]
	ld d, b
	ld [bc], a
	add sp, $03
	ld a, [bc]
	sub l
	ld [bc], a
	ldh a, [$03]
	ld a, [bc]
	jr nz, jr_003_6252

	ld hl, sp+$03

jr_003_6252:
	ld a, [bc]
	add $02
	db $10
	inc b
	dec b
	nop
	nop
	jr @+$06

	ld a, [bc]
	ret nc

	ld [bc], a
	jr nz, @+$06

	dec b
	jr nz, jr_003_6264

jr_003_6264:
	jr z, @+$06

	ld a, [bc]
	ret nc

	ld [bc], a
	jr nc, @+$06

	dec b
	ld b, b
	nop
	jr c, jr_003_6274

	ld a, [bc]
	ret nc

	ld [bc], a
	ld d, b

jr_003_6274:
	inc b
	dec b
	add c
	db $10
	ld e, b
	inc b
	ld a, [bc]
	ld [de], a
	ld [de], a
	ld h, b
	inc b
	dec b
	and e
	db $10
	ld l, b
	inc b
	ld a, [bc]
	inc d
	ld [de], a
	ld [hl], b
	inc b
	dec b
	pop bc
	db $10
	ld a, b
	inc b
	ld a, [bc]
	ld [de], a
	ld [de], a
	add b
	inc b
	dec bc
	ld [hl], b
	nop
	and b
	inc b
	ld b, $10
	ld bc, $04a8
	ld b, $d0
	ld de, $04b0
	ld b, $30
	ld bc, $04b8
	ld b, $b0
	ld de, $04c0
	ld b, $51
	ld bc, $04c8
	ld b, $92
	ld de, $04d0
	ld b, $23
	ld bc, $04d8
	ld b, $c4
	ld de, $04e0
	rlca
	ld [de], a
	db $10
	db $e4
	inc b
	rlca
	db $d3
	nop
	add sp, $04
	rlca
	inc h
	db $10
	db $ec
	inc b
	rlca
	push bc
	nop
	ldh a, [rDIV]
	rlca
	ld [hl], $10
	db $f4
	inc b
	rlca
	or a
	nop
	ld hl, sp+$04
	rlca
	ld c, b
	db $10
	db $fc
	inc b
	rlca
	xor c
	nop
	nop
	dec b
	dec e
	nop
	nop
	db $10
	dec b
	inc e
	nop
	nop
	jr nz, jr_003_62f7

	ld c, $6b
	nop
	jr nc, @+$07

jr_003_62f7:
	nop
	nop
	nop
	ld a, [$debf]
	rst $30
	ei
	rst $38
	ld [$fbff], a
	cp $8e
	rst $28
	ld a, [hl]
	or a
	cp [hl]
	rst $38
	ld l, h
	rst $20
	cp $ff
	db $eb
	pop af
	xor b
	rst $18
	ld a, [hld]
	ld e, a
	jp nz, $ab7f

	ld a, l
	ei
	ei
	cp a
	adc $fa
	rst $38
	adc e
	rst $20
	xor e
	cp $af
	ld a, a
	ld sp, hl
	rst $28
	cp [hl]
	or $bb
	set 5, a
	rst $38
	add [hl]
	rst $18
	ld a, [c]
	cp $ae
	rst $30
	ld a, h
	rst $10
	ld [$ef79], a
	or c
	xor $ff
	ld l, h
	rst $18
	rst $28
	sbc l
	xor $7f
	jp c, $c59b

	rst $38
	ld a, [$7aaf]
	rst $38
	or a
	rst $38
	cp d
	cp $bf
	db $fd
	db $eb
	cp a
	xor d
	cp l
	dec hl
	ldh a, [$ba]
	or a
	and d
	ld a, a
	xor e
	rst $10
	db $ec
	ld a, a
	xor e
	rst $38
	ld [$1aff], a
	rst $30
	xor d
	ei
	xor e
	rst $18
	ld a, [hl]
	cp a
	rst $38
	rst $28
	sbc a
	ld a, a
	xor [hl]
	sbc $aa
	rst $38
	ld l, e
	ei
	ld a, e
	rst $20
	ld l, e
	ei
	rst $38
	rst $30
	rst $28
	ld [hl], a
	rst $28
	rst $38
	and a
	db $fc
	or $ff
	xor d
	rst $18
	ei
	rst $38
	ld l, e
	rst $38
	jp $aeff


	cp [hl]
	ld a, [hl]
	rst $28
	xor a
	rst $28
	call $ae7f
	ld sp, hl
	db $db
	db $fc
	rst $38
	xor a
	cp a
	cp h
	xor $f9
	ld a, $5f
	jp c, $fbff

	rst $38
	cp [hl]
	cp l
	ld sp, hl
	cp [hl]
	cp e
	rst $28
	ld a, [$f7ef]
	db $db
	ld a, [$735f]
	cp $ee
	rst $38
	cp e
	ld a, a
	rst $28
	rst $38
	cp a
	rst $28
	db $eb
	rst $38
	cp [hl]
	ei
	xor a
	ld a, a
	xor a
	cp a
	xor e
	rst $38
	xor [hl]
	ld a, a
	ld [$ebfe], a
	rst $28
	ld a, e
	rst $38
	xor [hl]
	db $ed
	ld c, $ae
	xor a
	rst $38
	ld [$e7f9], a
	cp l
	adc c
	adc a
	jp c, $daff

	db $fd
	ld a, a
	or a
	ld a, [hld]
	cp a
	cp $bd
	cp d
	rst $38
	or h
	rst $28
	ld l, e
	ei
	cp e
	and a
	xor e
	rst $38
	adc a
	rst $38
	sbc a
	rst $38
	push bc
	rst $10
	ld a, e
	xor $2b
	cp $e3
	rst $38
	adc $fb
	cp [hl]
	rst $38
	adc d
	ei
	cp $fe
	cp e
	rst $38
	rst $30
	ld a, e
	ld a, a
	ld d, [hl]
	db $d3
	ld [hl], l
	cp l
	ld e, a
	ret c

	ld d, h
	db $ed
	ld a, a
	rst $18
	ld b, [hl]
	sub h
	ld a, a
	xor [hl]
	push de
	xor $78
	jp nc, $c7fd

	ld d, b
	rst $08
	inc [hl]
	sbc b
	ld de, $84da
	ccf
	dec d
	push af
	ld d, a
	inc b
	nop
	inc b
	nop
	nop
	jr nz, jr_003_6427

jr_003_6427:
	inc de
	nop
	nop
	jr nc, jr_003_642c

jr_003_642c:
	rlca
	ld [hl], b
	nop
	inc [hl]
	nop
	rlca
	sub b
	nop
	jr c, jr_003_6436

jr_003_6436:
	rlca
	or b
	nop
	inc a
	nop
	rlca
	ret nc

	nop
	ld b, b
	nop
	rlca
	ld [hl], b
	db $10
	ld b, h
	nop
	rlca
	ld d, b
	db $10
	ld c, b
	nop
	rlca
	jr nc, jr_003_645d

	ld c, h
	nop
	rlca
	db $10
	db $10
	ld d, b
	nop
	rlca
	ld [hl], b
	nop
	ld d, h
	nop
	rlca
	sub b
	nop
	ld e, b

jr_003_645d:
	nop
	rlca
	or b
	nop
	ld e, h
	nop
	rlca
	ret nc

	nop
	ld h, b
	nop
	rlca
	ld [hl], b
	db $10
	ld h, h
	nop
	rlca
	ld d, b
	db $10
	ld l, b
	nop
	rlca
	jr nc, jr_003_6485

	ld l, h
	nop
	rlca
	db $10
	db $10
	add b
	nop
	ld [$10d1], sp
	adc b
	nop
	ld [$0012], sp
	sub b

jr_003_6485:
	nop
	ld [$10d3], sp
	sbc b
	nop
	ld [$0014], sp
	and b
	nop
	ld [$10d5], sp
	xor b
	nop
	ld [$0016], sp
	or b
	nop
	ld a, [bc]
	ret nc

	ld [de], a
	cp b
	nop
	ld a, [bc]
	db $10
	ld [bc], a
	ret nz

	nop
	ld [$0071], sp
	ret z

	nop
	ld [$1072], sp
	ret nc

	nop
	ld a, [bc]
	db $10
	ld [bc], a
	ret c

	nop
	ld a, [bc]
	ret nc

	ld [de], a
	ldh [rP1], a
	ld [$0075], sp
	add sp, $00
	ld [$1076], sp
	ldh a, [rP1]
	ld a, [bc]
	db $10
	ld [bc], a
	ld hl, sp+$00
	ld a, [bc]
	ret nc

	ld [de], a
	nop
	ld bc, $7908
	nop
	ld [$0801], sp
	ld [hl], a
	db $10
	db $10
	ld bc, $100a
	ld [bc], a
	jr jr_003_64dc

	ld a, [bc]

jr_003_64dc:
	ret nc

	ld [de], a
	jr nc, jr_003_64e1

	dec bc

jr_003_64e1:
	ld [hl], b
	nop
	inc [hl]
	ld bc, $d109
	nop
	jr c, jr_003_64eb

	add hl, bc

jr_003_64eb:
	ld [de], a
	nop
	inc a
	ld bc, $d309
	nop
	ld b, b
	ld bc, $1409
	nop
	ld b, h
	ld bc, $d109
	nop
	ld c, b
	ld bc, $1209
	nop
	ld c, h
	ld bc, $d309
	nop
	ld h, b
	ld bc, $0007
	db $10
	ld h, h
	ld bc, $1107
	db $10
	ld l, b
	ld bc, $2007
	db $10
	ld l, h
	ld bc, $3207
	db $10
	ld [hl], b
	ld bc, $4007
	db $10
	ld [hl], h
	ld bc, $5307
	db $10
	ld a, b
	ld bc, $6007
	db $10
	ld a, h
	ld bc, $7407
	db $10
	add b
	ld bc, $8107
	nop
	add h
	ld bc, $9207
	nop
	adc b
	ld bc, $a307
	nop
	adc h
	ld bc, $b407
	nop
	sub b
	ld bc, $c507
	nop
	sub h
	ld bc, $d607
	nop
	sbc b
	ld bc, $e707
	nop
	or b
	ld bc, $1507
	db $10
	or h
	ld bc, $d907
	nop
	cp b
	ld bc, $5107
	nop
	cp h
	ld bc, $9907
	db $10
	ret nz

	ld bc, $1207
	db $10
	call nz, $0701
	rst $10
	nop
	ret z

	ld bc, $5307
	nop
	call z, $0701
	sub l
	db $10
	ret nc

	ld bc, $1407
	db $10
	call nc, $0701
	push de
	nop
	ret c

	ld bc, $5507
	nop
	call c, $0701
	sub e
	db $10
	ldh [rSB], a
	rlca
	ld de, $e410
	ld bc, $d207
	nop
	add sp, $01
	rlca
	ld d, e
	nop
	db $ec
	ld bc, $9407
	db $10
	ldh a, [rSB]
	dec bc
	ld [hl], b
	nop
	nop
	ld [bc], a
	ld b, $12
	ld bc, $0208
	ld b, $19
	ld bc, $0210
	ld b, $14
	ld bc, $0218
	ld b, $17
	ld bc, $0220
	ld b, $d6
	ld de, $0228
	ld b, $d5
	ld de, $0230
	ld b, $d8
	ld de, $0238
	ld b, $d4
	ld de, $0240
	ld b, $12
	ld bc, $0248
	ld b, $d9
	ld de, $0250
	ld b, $14
	ld bc, $0258
	ld b, $d7
	ld de, $0260
	ld b, $16
	ld bc, $0268
	ld b, $d5
	ld de, $0270
	ld b, $18
	ld bc, $0278
	ld b, $d3
	ld de, $0290
	rlca
	ld [de], a
	db $10
	sub h
	ld [bc], a
	rlca
	reti


	nop
	sbc b
	ld [bc], a
	rlca
	inc h
	db $10
	sbc h
	ld [bc], a
	rlca
	rst $00
	nop
	and b
	ld [bc], a
	rlca
	ld [hl], $10
	and h
	ld [bc], a
	rlca
	or l
	nop
	xor b
	ld [bc], a
	rlca
	ld c, b
	db $10
	xor h
	ld [bc], a
	rlca
	and e
	nop
	or b
	ld [bc], a
	dec h
	nop
	nop
	ret nz

	ld [bc], a
	ld [$0012], sp
	call nz, $0802
	ld [de], a
	nop
	ret z

	ld [bc], a
	ld [$0010], sp
	call z, $0802
	inc de
	nop
	ret nc

	ld [bc], a
	ld [$0010], sp
	call nc, $0802
	inc d
	nop
	ret c

	ld [bc], a
	ld [$0010], sp
	call c, $0802
	dec d
	nop
	nop
	inc bc
	ld [$10d0], sp
	inc b
	inc bc
	ld [$10d6], sp
	ld [$0803], sp
	ret nc

	db $10
	inc c
	inc bc
	ld [$10d7], sp
	db $10
	inc bc
	ld [$10d0], sp
	inc d
	inc bc
	ld [$10d8], sp
	jr jr_003_666e

	ld [$10d0], sp

jr_003_666e:
	inc e
	inc bc
	ld [$10d9], sp
	ld b, b
	inc bc
	ld [$0040], sp
	ld b, h
	inc bc
	ld a, [bc]
	db $d3
	ld [de], a
	ld c, b
	inc bc
	ld [$0034], sp
	ld c, h
	inc bc
	ld a, [bc]
	push de
	ld [de], a
	ld d, b
	inc bc
	ld [$0026], sp
	ld d, h
	inc bc
	ld a, [bc]
	rst $10
	ld [de], a
	ld e, b
	inc bc
	ld [$0018], sp
	ld e, h
	inc bc
	ld a, [bc]
	reti


	ld [de], a
	ld h, b
	inc bc
	dec bc
	ld [hl], b
	nop
	add b
	inc bc
	ld [$10a6], sp
	add h
	inc bc
	ld a, [bc]
	inc de
	ld [bc], a
	adc b
	inc bc
	ld [$10b6], sp
	adc h
	inc bc
	ld a, [bc]
	dec d
	ld [bc], a
	sub b
	inc bc
	ld [$10c6], sp
	sub h
	inc bc
	ld a, [bc]
	rla
	ld [bc], a
	sbc b
	inc bc
	ld [$10d6], sp
	sbc h
	inc bc
	ld a, [bc]
	add hl, de
	ld [bc], a
	or b
	inc bc
	dec e
	nop
	nop
	ret nz

	inc bc
	inc e
	nop
	nop
	ldh [$03], a
	inc c
	ld l, h
	nop
	ldh a, [$03]
	nop
	nop
	nop
	cpl
	ld d, h
	cpl
	ret nc

	rst $20
	ld e, l
	cp e
	ld e, a
	ld l, [hl]
	sub c
	rst $38
	ld c, [hl]
	or h
	ld d, [hl]
	ld l, a
	ld d, c
	sub [hl]
	inc a
	sbc e
	ld d, l
	jp $aef1


	push de
	and a
	ld d, l
	ld e, a
	db $f4
	cp [hl]
	ld a, [hl]
	rst $10
	ld d, c
	jp z, Jump_003_5ad3

	ld d, h
	db $fd
	or d
	rst $28
	ld hl, $75df
	ld a, l
	ld h, a
	ld a, [$f956]
	call $d57e
	db $ed
	db $10
	rst $38
	ld d, a
	or $24
	or [hl]
	ld b, c
	ld a, [$7c19]
	dec sp
	rst $28
	ld e, l
	ld c, a
	ld [hl], h
	db $eb
	ld d, [hl]
	rst $08
	inc l
	rst $30
	ld [hl], l
	rst $08
	ld h, c
	db $fc
	rra
	db $eb
	ld [hl], a
	xor a
	ld bc, $54ff
	ld a, [hl]
	ld d, a
	cp a
	push hl
	db $db
	rla
	ei
	ld [hl], l
	cp a
	ld [hl], a
	rst $18
	ld b, d
	rst $30
	dec b
	or $45
	rst $18
	ld [hl], a
	rst $20
	ld e, l
	rst $18
	push bc
	ld a, [hl]
	db $fd
	rst $00
	ld h, a
	rst $18
	ld d, l
	rst $28
	ld a, l
	push hl
	ld d, b
	ld h, d
	sub e
	rst $38
	ld h, l
	ccf
	call nc, Call_003_5179
	reti


	ld c, a
	ld a, [bc]
	ld d, a
	set 1, l
	di
	ret


	rst $38
	sbc c
	rst $30
	ld e, l
	rst $38
	ld de, $047a
	jr jr_003_67b5

	reti


	push bc
	rst $08
	ld c, l
	rst $38
	ld b, e
	rst $18
	ld d, h
	xor a
	ld d, h
	rst $38
	ldh [$ec], a
	dec b
	ld l, b
	adc $fb
	ld [hl], l
	xor a
	dec d
	xor $57
	xor e
	ld b, l
	scf
	ld h, a
	rst $38
	sub l
	cp a
	ld b, c
	ld [$ffad], a
	ld a, e
	ld h, [hl]
	sub h
	rst $38
	ld b, a
	ld sp, hl
	sbc a
	db $fd
	ld [hl], c
	rst $18
	di
	ccf
	db $dd
	ccf
	push af
	ld sp, hl
	inc de
	ld e, a
	ld d, e
	ld c, a
	ld e, l
	rst $38
	ld [hl], b
	dec sp
	ld [hl], h
	jp Jump_003_6e53


	call nc, $0b77
	rst $38
	ld h, c
	rst $18
	ld [hl], l
	rst $30
	ld c, l
	xor e
	ld sp, $19f7
	sbc a
	ld d, e
	or e

jr_003_67b5:
	pop af
	db $db
	push de
	add hl, de
	dec a
	rst $38
	ld [hl], l
	rst $30
	ld d, b
	xor a
	push bc
	ei
	ld e, a
	ld d, a
	ld e, a
	ei
	dec b
	rst $28
	db $dd
	xor [hl]
	ld c, [hl]
	sbc [hl]
	ld c, h
	ei
	ld d, l
	rst $38
	call c, Call_003_54ba
	and c
	scf

jr_003_67d4:
	ld l, e
	sub c
	rst $38
	sub l
	and e
	jr nz, jr_003_67d4

	ld d, e
	ld sp, hl
	ld d, [hl]
	ld a, a
	ld d, a
	ld a, l
	dec [hl]
	xor e
	ld d, [hl]
	cpl
	rla
	adc a
	ld c, h
	ld e, d
	sub l
	rst $38
	ld h, $65
	rst $08
	ld a, a
	ld e, $f8
	ld [hl], h
	cpl
	rlca
	ld a, d
	ld e, l
	rst $28
	ld [hl], b
	rst $38
	ld b, e
	ld a, a
	ld b, a
	ld a, [c]
	ld e, e
	ccf
	rst $30
	nop
	sub b
	nop
	jr nz, jr_003_680f

	nop
	nop
	inc b
	ld [$2000], sp
	nop
	ld [$8004], sp

jr_003_680f:
	nop
	nop
	ld bc, $0820
	ld a, [bc]
	add b
	ld [bc], a
	jr @+$04

	ret nz

	ld [$0020], sp
	ld bc, $0c00
	inc b
	nop
	inc b
	nop
	nop
	jr nz, jr_003_6827

jr_003_6827:
	inc de
	nop
	nop
	ld b, b
	nop
	ld d, $12
	nop
	ld c, b
	nop
	ld d, $b9
	nop
	ld d, b
	nop
	ld d, $63
	nop
	ld e, b
	nop
	ld d, $d8
	nop
	ld h, b
	nop
	ld d, $34
	nop
	ld l, b
	nop
	ld d, $87
	nop
	ld [hl], b
	nop
	ld d, $16
	nop
	ld a, b
	nop
	ld d, $b2
	nop
	add b
	nop
	ld d, $69
	nop
	adc b
	nop
	ld d, $d7
	nop
	sub b
	nop
	ld d, $14
	nop
	sbc b
	nop
	ld d, $39
	nop
	and b
	nop
	ld d, $65
	nop
	xor b
	nop
	ld d, $88
	nop
	or b
	nop
	ld d, $b5
	nop
	cp b
	nop
	ld d, $d1
	nop
	ret nz

	nop
	dec bc
	ld a, c
	nop
	ret nc

	nop
	ld d, $14
	nop
	ret c

	nop
	ld d, $d2
	nop
	ldh [rP1], a
	ld hl, $0059
	add sp, $00
	ld hl, $1094
	ldh a, [rP1]
	ld d, $62
	nop
	ld hl, sp+$00
	ld d, $83
	nop
	nop
	ld bc, $1721
	nop
	ld [$2101], sp
	pop de
	db $10
	db $10
	ld bc, $3816
	nop
	jr @+$03

	ld d, $b4
	nop
	jr nz, @+$03

	ld hl, $1059
	jr z, @+$03

	ld hl, $0095
	jr nc, @+$03

	ld d, $68
	nop
	jr c, @+$03

	ld d, $82
	nop
	ld b, b
	ld bc, $1621
	nop
	ld c, b
	ld bc, $d321
	db $10
	ld d, b
	ld bc, $1516
	nop
	ld d, h
	ld bc, $d116
	nop
	ld e, b
	ld bc, $5321
	nop
	ld e, h
	ld bc, $9821
	db $10
	ld h, b
	ld bc, $6516
	nop
	ld h, h
	ld bc, $8816
	nop
	ld l, b
	ld bc, $1521
	nop
	ld l, h
	ld bc, $d921
	db $10
	ld [hl], b
	ld bc, $1516
	nop
	ld [hl], h
	ld bc, $d116
	nop
	ld a, b
	ld bc, $5321
	nop
	ld a, h
	ld bc, $9821
	db $10
	add b
	ld bc, $6516
	nop
	add h
	ld bc, $8816
	nop
	adc b
	ld bc, $1521
	nop
	adc h
	ld bc, $d921
	db $10
	sub b
	ld bc, $700b
	nop
	and b
	ld bc, $3728
	inc bc
	xor b
	ld bc, $8928
	inc bc
	or b
	ld bc, $d428
	inc bc
	cp b
	ld bc, $1916
	nop
	ret nz

	ld bc, $6216
	nop
	ret z

	ld bc, $b716
	nop
	ret nc

	ld bc, $1528
	inc bc
	ret c

	ld bc, $6228
	inc bc
	ldh [rSB], a
	jr z, @-$46

	inc bc
	nop
	ld [bc], a
	ld hl, $0091
	inc b
	ld [bc], a
	ld hl, $0082
	ld [$2102], sp
	sub e
	nop
	inc c
	ld [bc], a
	ld hl, $0084
	db $10
	ld [bc], a
	ld hl, $0095
	inc d
	ld [bc], a
	ld hl, $0086
	jr @+$04

	ld hl, $0097
	inc e
	ld [bc], a
	ld hl, $0088
	jr nc, @+$04

	ld hl, $1051
	inc [hl]
	ld [bc], a
	ld hl, $1062
	jr c, @+$04

	ld hl, $1053
	inc a
	ld [bc], a
	ld hl, $1064
	ld b, b
	ld [bc], a
	ld hl, $1055

jr_003_6992:
	ld b, h
	ld [bc], a
	ld hl, $1066
	ld c, b
	ld [bc], a
	ld hl, $1057
	ld c, h
	ld [bc], a
	ld hl, $1068
	ld h, b
	ld [bc], a
	ld d, $61
	nop
	ld h, h
	ld [bc], a
	ld d, $82
	nop
	ld l, b
	ld [bc], a
	ld d, $66
	nop
	ld l, h
	ld [bc], a
	ld d, $87
	nop
	ld [hl], b
	ld [bc], a
	ld d, $63
	nop
	ld [hl], h
	ld [bc], a
	ld d, $84
	nop
	ld a, b
	ld [bc], a
	ld d, $68
	nop
	ld a, h
	ld [bc], a
	ld d, $89
	nop
	sub b
	ld [bc], a
	ld d, $18
	nop
	sub h
	ld [bc], a
	ld d, $d4
	nop
	sbc b
	ld [bc], a
	ld d, $19
	nop
	sbc h
	ld [bc], a
	ld d, $d5
	nop
	and b
	ld [bc], a
	ld d, $18
	nop
	and h
	ld [bc], a
	ld d, $d4
	nop
	xor b
	ld [bc], a
	ld d, $17
	nop
	xor h
	ld [bc], a
	ld d, $d5
	nop
	or b
	ld [bc], a
	dec bc
	halt
	ret nz

	ld [bc], a
	jr z, @+$6a

	inc bc
	ret z

	ld [bc], a
	ld d, $14
	nop
	ret nc

	ld [bc], a
	ld d, $b6
	nop
	ret c

	ld [bc], a
	jr z, jr_003_6992

	inc bc
	ldh [rSC], a
	ld d, $37
	nop
	add sp, $02
	ld d, $d3
	nop
	ldh a, [rSC]
	jr z, @+$6a

	inc bc
	ld hl, sp+$02
	ld d, $15
	nop
	nop
	inc bc
	ld d, $b9
	nop
	ld [$2803], sp
	adc c
	inc bc
	db $10
	inc bc
	ld d, $36
	nop
	jr jr_003_6a32

	ld d, $d5
	nop

jr_003_6a32:
	jr nz, @+$05

	inc d
	ld de, $3000
	inc bc
	inc d
	jp nc, Jump_003_4000

	inc bc
	inc d
	inc sp
	nop
	ld d, b
	inc bc
	inc d
	or c
	nop
	ld h, b
	inc bc
	inc d
	ld h, d
	nop
	ld [hl], b
	inc bc
	inc d
	add e
	nop
	add b
	inc bc
	inc d
	ld [de], a
	nop
	sub b
	inc bc
	inc d
	db $d3
	nop
	or b
	inc bc
	dec bc
	ld [hl], b
	nop
	db $10
	inc b
	ld hl, $1050
	inc d
	inc b
	ld hl, $0091
	jr jr_003_6a6f

	ld hl, $0052
	inc e

jr_003_6a6f:
	inc b
	ld hl, $1093
	jr nz, jr_003_6a79

	ld hl, $1056
	inc h

jr_003_6a79:
	inc b
	ld hl, $0097

jr_003_6a7d:
	jr z, jr_003_6a83

	ld hl, $0058
	inc l

jr_003_6a83:
	inc b
	ld hl, $1091
	jr nc, jr_003_6a8d

	ld hl, $1052
	inc [hl]

jr_003_6a8d:
	inc b
	ld hl, $0093
	jr c, jr_003_6a97

	ld hl, $0056
	inc a

jr_003_6a97:
	inc b
	ld hl, $1097
	ld b, b
	inc b
	ld hl, $1058
	ld b, h
	inc b
	ld hl, $0091
	ld c, b
	inc b
	ld hl, $0052
	ld c, h
	inc b
	ld hl, $1093
	ld h, b
	inc b
	ld d, $16
	nop
	ld h, h
	inc b
	ld d, $67
	nop
	ld l, b
	inc b
	ld d, $b8
	nop
	ld l, h
	inc b
	ld d, $21
	nop
	ld [hl], b
	inc b
	ld d, $82
	nop
	ld [hl], h
	inc b
	ld d, $d3
	nop
	ld a, b
	inc b
	ld d, $17
	nop
	ld a, h
	inc b
	ld d, $d8
	nop
	sub b
	inc b
	jr z, jr_003_6aec

	inc bc
	sbc b
	inc b
	jr z, @-$27

	inc bc
	and b
	inc b
	ld d, $82
	nop
	xor b
	inc b
	ld d, $66
	nop
	or b

jr_003_6aec:
	inc b
	ld d, $33
	nop
	cp b
	inc b
	ld d, $b5
	nop
	ret nz

	inc b
	jr z, jr_003_6a7d

	inc bc
	ret z

	inc b
	jr z, jr_003_6b62

	inc bc
	ret nc

	inc b
	ld d, $15
	nop
	ret c

	inc b
	ld d, $d3
	nop
	ldh [rDIV], a
	ld hl, $0056
	add sp, $04
	ld hl, $1092
	ldh a, [rDIV]
	ld hl, $0017
	ld hl, sp+$04
	ld hl, $10d1
	nop
	dec b
	dec e
	nop
	nop
	db $10
	dec b
	inc e
	nop
	nop
	ld b, b
	dec b
	dec hl
	ld l, h
	nop
	ld d, b
	dec b
	nop
	nop
	nop
	dec b
	nop
	and d
	ld [bc], a
	nop
	inc b
	add e
	jr z, jr_003_6b3a

jr_003_6b3a:
	nop
	ld b, b
	add b
	sub b
	jr z, jr_003_6b40

jr_003_6b40:
	nop
	ld [bc], a
	jr nz, jr_003_6b48

	nop
	ld b, b
	jr nz, jr_003_6b4a

jr_003_6b48:
	nop
	nop

jr_003_6b4a:
	ld [bc], a
	jr nz, jr_003_6b75

	inc l
	nop
	stop
	nop
	ld [bc], a
	nop
	nop
	stop
	nop
	add d
	nop
	nop
	ld b, b
	nop
	nop
	jr nz, jr_003_6b60

jr_003_6b60:
	nop
	nop

jr_003_6b62:
	nop
	ld e, d
	add h
	nop
	nop
	db $10
	add b
	ld [bc], a
	nop
	sbc b
	add b
	add h
	ld [bc], a
	nop
	ld [hli], a
	nop
	adc b
	inc bc
	nop

jr_003_6b75:
	nop
	nop
	ld [hld], a
	ld b, $09
	jr nz, jr_003_6b9c

	nop
	ld b, d
	and b
	nop
	inc b
	ld b, b
	nop
	nop
	nop
	add b
	add b
	nop
	nop
	ld b, b
	nop
	jr nz, jr_003_6b8d

jr_003_6b8d:
	inc b
	nop
	ld [bc], a
	nop
	ld hl, $4000
	nop
	ld b, d
	nop
	inc h
	nop
	dec b
	nop
	nop

jr_003_6b9c:
	nop
	inc b
	nop
	add d
	nop
	sbc b
	add b
	sub b
	nop
	ld b, h
	nop
	jr nz, jr_003_6ba9

jr_003_6ba9:
	ld b, $00
	nop
	nop
	ld b, b
	jr nz, jr_003_6bc0

	nop
	ld b, h
	ld [$0800], sp
	and b
	ld [$0000], sp
	ld [hld], a
	nop
	ld h, b
	nop
	and d
	and d
	nop

jr_003_6bc0:
	nop
	nop
	jr jr_003_6bc8

	ld [$0811], sp
	nop

jr_003_6bc8:
	nop
	ld [$2400], sp
	nop
	ld [bc], a
	nop
	ld [$0000], sp
	ld [$0008], sp
	inc bc
	ld [bc], a
	ld bc, $0021
	nop
	stop
	jr nc, @-$7e

	ld [$4020], sp
	nop
	nop
	ld [$0080], sp
	nop
	nop
	nop
	add b
	inc b
	nop
	ld [bc], a
	nop
	ld d, b
	ld [bc], a
	add b
	jr nz, jr_003_6c10

	ld [$0200], sp
	jr nz, jr_003_6bf9

jr_003_6bf9:
	nop
	nop
	inc b
	nop
	ld d, c
	nop
	ld h, h
	nop
	stop
	nop
	nop
	nop
	ld c, b
	ld b, b
	inc b
	nop
	nop
	nop
	nop
	ld b, b
	nop
	nop

jr_003_6c10:
	ret nz

	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add b
	nop
	ld bc, $0044
	nop
	nop
	ld bc, $0004
	inc b
	nop
	nop
	jr nz, jr_003_6c27

jr_003_6c27:
	inc de
	nop
	nop
	ld b, b
	nop
	add hl, hl
	ld [bc], a
	ld bc, $0048
	add hl, hl
	db $e3
	ld de, $0050
	add hl, hl
	inc d
	ld bc, $0058
	add hl, hl
	push de
	ld de, $0060
	add hl, hl
	ld h, $01
	ld l, b
	nop
	add hl, hl
	rst $00
	ld de, $0070
	add hl, hl
	jr c, jr_003_6c4e

	ld a, b

jr_003_6c4e:
	nop
	add hl, hl
	cp c
	ld de, $0080
	add hl, hl
	ld [hl], d
	ld bc, $0088
	add hl, hl
	ld [hl], e
	ld de, $0090
	add hl, hl
	ld d, h
	ld bc, $0098
	add hl, hl
	sub l
	ld de, $00a0
	add hl, hl
	db $76
	ld bc, $00a8
	add hl, hl
	ld [hl], a
	ld de, $00b0
	add hl, hl
	jr jr_003_6c76

jr_003_6c75:
	cp b

jr_003_6c76:
	nop
	add hl, hl
	reti


	ld de, $00c0
	dec bc
	ld [hl], b
	nop
	ldh [rP1], a

jr_003_6c81:
	jr nz, jr_003_6c97

	nop
	add sp, $00
	jr nz, jr_003_6c9d

	nop
	ldh a, [rP1]
	jr nz, @+$18

	nop
	ld hl, sp+$00
	jr nz, jr_003_6ca9

	nop
	nop
	ld bc, $1820

jr_003_6c97:
	nop
	ld [$2001], sp
	add hl, de
	nop

jr_003_6c9d:
	jr nz, @+$03

	jr nz, jr_003_6c75

	db $10
	jr z, @+$03

	jr nz, @-$29

	db $10
	jr nc, @+$03

jr_003_6ca9:
	jr nz, jr_003_6c81

	db $10
	jr c, @+$03

	jr nz, @-$27

	db $10
	ld b, b
	ld bc, $d820
	db $10
	ld c, b
	ld bc, $d920
	db $10
	ld h, b
	ld bc, $1120
	nop
	ld h, h
	ld bc, $d220
	db $10
	ld l, b
	ld bc, $1320
	nop
	ld l, h
	ld bc, $d420
	db $10
	ld [hl], b
	ld bc, $1520
	nop
	ld [hl], h
	ld bc, $d620
	db $10
	ld a, b
	ld bc, $1720
	nop
	ld a, h
	ld bc, $d820
	db $10
	and b
	ld bc, $420a
	ld [bc], a
	and h
	ld bc, $a30a
	ld [bc], a
	xor b
	ld bc, $440a
	ld [bc], a
	xor h
	ld bc, $a50a
	ld [bc], a
	or b
	ld bc, $460a
	ld [bc], a
	or h
	ld bc, $a70a
	ld [bc], a
	cp b
	ld bc, $480a
	ld [bc], a
	cp h
	ld bc, $a90a
	ld [bc], a
	ret nz

	ld bc, $700b
	nop
	ldh a, [rSB]
	add hl, bc
	dec d
	nop
	db $f4
	ld bc, $d609
	nop
	ld hl, sp+$01
	add hl, bc
	daa
	nop
	db $fc
	ld bc, $c809
	nop
	nop
	ld [bc], a
	add hl, bc
	dec [hl]
	nop
	inc b
	ld [bc], a
	add hl, bc
	or [hl]
	nop
	ld [$0902], sp
	ld b, a
	nop
	inc c
	ld [bc], a
	add hl, bc
	xor b
	nop
	jr nz, jr_003_6d3c

	ld h, $72

jr_003_6d3c:
	ld bc, $0228
	ld h, $73
	ld de, $0230
	ld h, $74
	ld bc, $0238
	ld h, $75
	ld de, $0240
	ld h, $76
	ld bc, $0248
	ld h, $77
	ld de, $0270
	rlca
	ld [de], a
	db $10
	ld a, b
	ld [bc], a
	rlca
	db $d3
	nop
	add b
	ld [bc], a
	rlca
	ld [hl], h
	nop
	adc b
	ld [bc], a
	rlca
	ld [hl], l
	db $10
	sub b
	ld [bc], a
	rlca
	ld [hl], $10
	sbc b
	ld [bc], a
	rlca
	or a
	nop
	and b
	ld [bc], a
	rlca
	ld a, b
	nop
	xor b
	ld [bc], a
	rlca
	ld a, c
	db $10
	ret nz

	ld [bc], a
	rlca
	ld [de], a
	db $10
	call nz, $0702
	reti


	nop
	ret z

	ld [bc], a
	rlca
	ld d, h
	nop
	call z, $0702
	sub a
	db $10
	ret nc

	ld [bc], a
	rlca
	dec d
	db $10
	call nc, $0702
	push de
	nop
	ret c

	ld [bc], a
	rlca
	ld e, b
	nop
	call c, $0702
	sub e
	stop
	inc bc
	add hl, hl
	ld [de], a
	ld bc, $0308
	add hl, hl
	inc hl
	ld bc, $0310
	add hl, hl
	inc [hl]
	ld bc, $0318
	add hl, hl
	ld b, l
	ld bc, $0320
	add hl, hl
	ld d, [hl]
	ld bc, $0328
	add hl, hl
	ld h, a
	ld bc, $0330
	add hl, hl
	ld a, b
	ld bc, $0338
	add hl, hl
	adc c
	ld bc, $0350
	add hl, hl
	jp nc, Jump_003_5811

	inc bc
	add hl, hl
	jp Jump_003_6011


	inc bc
	add hl, hl
	or h
	ld de, $0368
	add hl, hl
	and l
	ld de, $0370
	add hl, hl
	sub [hl]
	ld de, $0378
	add hl, hl
	add a
	ld de, $0380
	add hl, hl
	ld a, b
	ld de, $0388
	add hl, hl
	ld l, c
	ld de, $0390
	dec bc
	ld [hl], b
	nop
	and b
	inc bc
	rrca
	ld h, a
	nop
	ret nz

	inc bc
	rlca
	rra
	db $10
	ldh [$03], a
	rlca
	rst $18
	nop
	nop
	inc b
	rlca
	rra
	db $10
	jr nz, jr_003_6e15

	rlca
	rst $18
	nop
	ld b, b

jr_003_6e15:
	inc b
	rlca
	rra
	db $10
	ld h, b
	inc b
	rlca
	rst $18
	nop
	ld [hl], b
	inc b
	dec bc
	ld [hl], b
	nop
	add b
	inc b
	ld h, $34
	ld bc, $0488
	ld h, $b5
	ld de, $0490
	ld h, $36
	ld bc, $0498
	ld h, $b7
	ld de, $04a0
	ld h, $38
	ld bc, $04a8
	ld h, $b9
	ld de, $04c8
	dec e
	nop
	nop
	ret nc

	inc b
	inc e
	nop
	nop
	jr nz, jr_003_6e52

	rla
	ld [hl], b
	nop
	jr z, jr_003_6e57

jr_003_6e52:
	ld [bc], a

Jump_003_6e53:
	nop
	nop
	ld a, [hld]
	dec b

jr_003_6e57:
	ld [de], a
	jr nz, jr_003_6e5a

jr_003_6e5a:
	inc a
	dec b
	nop
	nop
	nop
	nop
	nop
	nop
	add h
	nop
	nop
	nop
	nop
	nop
	ld h, b
	nop
	nop
	nop
	nop
	nop
	ld b, $00
	nop
	nop
	nop
	inc b
	nop
	ld bc, $0000
	nop
	nop
	nop
	nop
	ld [$0600], sp
	nop
	inc bc
	ld bc, $1000
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	db $10
	inc b
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	ld b, b
	nop
	nop
	stop
	nop
	nop
	nop
	jr nz, jr_003_6ea0

jr_003_6ea0:
	nop
	nop
	inc b
	nop
	ld [hli], a
	stop
	ld bc, $0000
	nop
	ld bc, $0000
	inc d
	ld b, b
	nop
	nop
	jr nz, jr_003_6eb4

jr_003_6eb4:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	db $10
	ld [de], a
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	ld b, b
	nop
	ld b, b
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	stop
	nop
	nop
	add b
	inc b
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
	add b
	nop
	jr nz, jr_003_6ee5

	nop

jr_003_6ee5:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $2004
	nop
	ld bc, $0000
	nop
	ld b, b
	nop
	nop
	ld bc, $0100
	nop
	nop
	nop
	inc b
	ld de, $0000
	nop
	nop
	db $10
	ld [bc], a
	nop
	jr nc, jr_003_6f0a

jr_003_6f0a:
	nop
	ld b, b
	nop
	ld bc, $0000
	ld bc, $8000
	nop
	nop
	inc d
	nop
	nop
	ld [$0800], sp
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0001
	nop
	nop
	inc b
	ld [bc], a
	nop
	nop
	nop
	ld b, b
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
	nop
	nop
	add c
	nop
	add b
	ld b, b
	nop
	ld bc, $5000
	nop
	nop
	nop
	nop
	ld hl, $0010
	nop
	inc b
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
	jr nz, @+$42

	nop
	inc b
	ld [$0800], sp
	nop
	ld bc, $0001
	nop
	stop
	nop
	nop
	nop
	nop
	nop
	nop
	stop
	nop
	nop
	jr nz, jr_003_6f78

jr_003_6f78:
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
	add b
	nop
	nop
	nop
	nop
	inc d
	inc h
	nop
	nop
	nop
	nop
	nop
	ld bc, $0000
	nop
	nop
	ld bc, $00c0
	nop
	nop
	db $10
	dec b
	nop
	ld b, b
	ld bc, $8000
	nop
	ld [bc], a
	ld b, h
	nop
	nop
	ld [$0000], sp
	nop
	db $10
	inc b
	nop
	ld bc, $0408
	nop
	nop
	nop
	nop
	nop
	ld bc, $0004
	nop
	nop
	nop
	nop
	nop
	ld de, $0001
	nop
	nop
	nop
	nop
	sub b
	inc b
	nop
	nop
	add b
	nop
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
	ret nz

	nop
	nop
	ld bc, $0400
	nop
	nop
	nop
	nop
	ld b, $00
	ld [bc], a
	ld bc, $0000
	add h
	nop
	nop
	nop
	nop
	inc b
	nop
	stop
	ld bc, $00a0
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	ld b, b
	stop
	nop
	xor a
	rst $38
	cp a
	db $fc
	cp $ff
	cp a
	ld a, a
	xor h
	rst $28
	xor [hl]
	rst $38
	xor d
	rst $38
	xor d
	rst $28
	cpl
	ei
	rst $28
	cp $ba
	rst $38
	cp d
	rst $38
	rst $38
	rst $38
	cp d
	sbc e
	xor d
	rst $38
	or d
	cp a
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
	jp nz, RST_00

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
