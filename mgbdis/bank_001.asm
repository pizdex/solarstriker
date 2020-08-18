; Disassembly of "solarstriker.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

	xor a
	ld hl, $cac0
	ld b, $10

jr_001_4006:
	ld [hli], a
	dec b
	jr nz, jr_001_4006

	ld bc, $40d5
	call $0947
	or a
	jp z, $0a67

	ld a, $05
	ld [$ca2c], a
	ld de, $401f
	jp $0a53


	ld a, [bc]
	call $0b4a
	ld de, $373d
	call $0939
	ld de, $40dd
	call $0b03
	ld de, $2630
	call $0a3e
	ld de, $403b
	jp $0a53


	call Call_001_4627
	cp [hl]
	jr c, jr_001_4047

	ld de, $4050
	jp $0a53


jr_001_4047:
	ld de, $40dd
	call $0b03
	jp Jump_001_4089


	ld a, [bc]
	call $0b4a
	inc hl
	ld a, [hli]
	cp $a0
	jp nc, Jump_001_40a2

	ld de, $ca63
	add $10
	ld [de], a
	inc de
	ld a, [hl]
	add $0c
	ld [de], a
	ld de, $40dd
	call $0b03
	ld de, $4072
	jp $0a53


	push bc
	call $09ec
	pop bc
	call $0a0c
	or a
	jr z, jr_001_4083

	ld de, $40ed
	call $0b03

jr_001_4083:
	ld de, $403b
	jp $0a53


Jump_001_4089:
	ld a, $53
	call $0c57
	ld a, $01
	ld [$cac1], a
	ld [$ca69], a
	ld de, $46d7
	call $0a3e
	ld de, $40b5
	jp $0a53


Jump_001_40a2:
	ld a, $01
	ld [$cac1], a
	ld hl, $ca69
	ld [hli], a
	ld [hl], a
	ld de, $46d7
	call $0a3e
	jp Jump_001_46ea


	ld a, [bc]
	call $0b4a
	ld hl, $001c
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $07
	ld [hli], a
	jp nz, $047e

	ld a, [hl]
	inc [hl]
	cp $05
	jp z, Jump_001_46ea

	ld hl, $4686
	call Call_001_465d
	jp $047e


	inc h
	db $10
	stop
	nop
	jr nz, jr_001_40fc

	ld [hl], b
	ld l, h
	nop
	ld l, [hl]
	nop
	ld l, [hl]
	jr nz, jr_001_4150

	jr nz, jr_001_4156

	nop
	ld [hl], d
	nop
	ld [hl], d
	jr nz, @+$72

	jr nz, @+$6e

	db $10
	ld l, [hl]
	db $10
	ld l, [hl]
	jr nc, @+$6e

	jr nc, @+$72

	db $10
	ld [hl], d
	db $10
	ld [hl], d
	jr nc, jr_001_416c

jr_001_40fc:
	jr nc, @-$4f

	ld hl, $cac0
	ld b, $10

jr_001_4103:
	ld [hli], a
	dec b
	jr nz, jr_001_4103

	ld bc, $41b8
	call $0947
	or a
	jp z, $0a67

	ld de, $25d9
	call $0a3e
	ld de, $411d
	jp $0a53


	ld a, [bc]
	ld [$cf99], a
	call $0b4a
	ld de, $37bf
	call $0939
	ld de, $41c0
	call $0b03
	ld de, $4136
	jp $0a53


	call Call_001_4627
	cp [hl]
	jr c, jr_001_4147

	ld a, $05
	ld [$ca2c], a
	ld de, $4150
	jp $0a53


jr_001_4147:
	ld de, $41c0
	call $0b03
	jp Jump_001_4089


jr_001_4150:
	ld a, [bc]
	call $0b4a
	inc hl
	ld a, [hl]

jr_001_4156:
	cp $a0
	jp nc, Jump_001_41a7

	call $09b8
	or a

jr_001_415f:
	jr nz, jr_001_4184

	ld de, $ca63
	ld bc, $100c
	call $0a2e
	ld a, $06

jr_001_416c:
	ld [de], a
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [hl]
	cp $50
	jr c, jr_001_417b

	ld a, $07
	ld [de], a

jr_001_417b:
	inc de
	xor a
	ld [de], a
	ld de, $11a1
	call $0a3e

jr_001_4184:
	ld de, $41c0
	call $0b03
	ld de, $4190
	jp $0a53


jr_001_4190:
	push bc
	call $09ec
	pop bc
	call $0a0c
	or a
	jr z, jr_001_41a1

	ld de, $41d0
	call $0b03

jr_001_41a1:
	ld de, $4136
	jp $0a53


Jump_001_41a7:
	ld a, $01
	ld [$cac1], a
	ld [$ca69], a
	ld de, $46d7
	call $0a3e
	jp Jump_001_46ea


	inc h
	db $10
	db $10
	ld [bc], a
	ld [bc], a
	inc e
	inc e
	ld h, b
	adc h
	nop
	adc [hl]
	nop
	adc [hl]
	jr nz, @-$72

	jr nz, @-$6e

	nop
	sub d
	nop
	sub d
	jr nz, jr_001_415f

	jr nz, @-$72

	db $10
	adc [hl]
	db $10
	adc [hl]
	jr nc, @-$72

	jr nc, @-$6e

	db $10
	sub d
	db $10
	sub d
	jr nc, @-$6e

	jr nc, jr_001_4190

	ld hl, $cac0
	ld b, $10

jr_001_41e6:
	ld [hli], a
	dec b
	jr nz, jr_001_41e6

	ld [$cf99], a
	ld bc, $428d
	call $0947
	or a
	jp z, $0a67

	ld de, $41fd
	jp $0a53


	ld a, [bc]
	call $0b4a
	ld de, $38c9
	call $0939
	ld de, $4295
	call $0b03
	ld de, $4213
	jp $0a53


	call Call_001_4627
	cp [hl]
	jp c, Jump_001_4225

	ld a, $05
	ld [$ca2c], a
	ld de, $422e
	jp $0a53


Jump_001_4225:
	ld de, $4295
	call $0b03
	jp Jump_001_4089


	ld a, [bc]
	call $0b4a
	inc hl
	ld a, [hl]
	cp $a0
	jp nc, Jump_001_427c

	ld hl, $cf99
	inc [hl]
	ld a, [hl]
	cp $0b
	jr nz, jr_001_4259

	xor a
	ld [hl], a
	ld de, $ca63
	ld bc, $100c
	call $0a2e
	ld a, $03
	ld [de], a
	inc de
	xor a
	ld [de], a
	ld de, $11a1
	call $0a3e

jr_001_4259:
	ld de, $4295
	call $0b03
	ld de, $4265
	jp $0a53


jr_001_4265:
	push bc
	call $09ec
	pop bc
	call $0a0c
	or a
	jr z, jr_001_4276

	ld de, $42a5
	call $0b03

jr_001_4276:
	ld de, $4213
	jp $0a53


Jump_001_427c:
	ld a, $01
	ld [$cac1], a
	ld [$ca69], a
	ld de, $46d7
	call $0a3e
	jp Jump_001_46ea


	inc h
	db $10
	db $10
	ld [bc], a
	ld [bc], a
	inc e
	inc e
	ld h, b
	ld h, h
	nop
	ld h, [hl]
	nop
	ld h, [hl]
	jr nz, jr_001_4300

	jr nz, @+$6a

	nop
	ld l, d
	nop
	ld l, d
	jr nz, @+$6a

	jr nz, jr_001_430a

	db $10
	ld h, [hl]
	db $10
	ld h, [hl]
	jr nc, @+$66

	jr nc, @+$6a

	db $10
	ld l, d
	db $10
	ld l, d
	jr nc, jr_001_431c

	jr nc, jr_001_4265

	ld hl, $cac0
	ld [hli], a
	ld [hl], a
	ld b, $05

jr_001_42bd:
	push bc
	ld de, $42cb
	call $0a3e
	pop bc
	dec b
	jr nz, jr_001_42bd

	jp $0a67


	ld bc, $43b7
	call $0947
	or a
	jp z, $0a67

	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $0011
	add hl, de
	ld de, $cac0
	ld a, [de]
	ld [hl], a
	inc a
	ld [de], a
	ld de, $42ec
	jp $0a53


	ld a, [bc]
	push bc
	call $0b4a
	ld hl, $0011
	add hl, bc
	ld a, [hl]
	add a
	ld l, a
	ld h, $00
	ld de, $43ad
	add hl, de
	ld a, [hli]
	ld d, [hl]

jr_001_4300:
	ld e, a
	call $0939
	pop bc
	ld hl, $0011
	add hl, bc
	ld a, [hl]

jr_001_430a:
	push af
	ld hl, $0f3c
	call $0f2f
	ld bc, $43b7
	call $0b38
	pop af
	ld de, $43bf
	or a

jr_001_431c:
	jr nz, jr_001_4321

	ld de, $43c3

jr_001_4321:
	call $0b03
	ld de, $432a
	jp $0a53


	call Call_001_4627
	cp [hl]
	jr c, jr_001_433d

	ld a, [$cac1]
	or a
	jp nz, $0bbb

	ld de, $4355
	jp $0a53


jr_001_433d:
	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $0011
	add hl, de
	ld d, $23
	ld a, [hl]
	or a
	jp nz, $0bbb

	inc a
	ld [$cac1], a
	jp $0bbb


	call $09ec
	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld bc, $0011
	add hl, bc
	ld a, [hl]
	or a
	jr nz, jr_001_436e

	ld de, $43c3
	call $0b03
	jr jr_001_4374

jr_001_436e:
	ld de, $43bf
	call $0b03

jr_001_4374:
	ld de, $437a
	jp $0a53


	ld a, [bc]
	call $0b4a
	inc hl

jr_001_437f:
	ld a, [hl]
	cp $a0
	jp nc, $0a64

	call $0a0c
	or a
	jr z, jr_001_43a7

	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld bc, $0011
	add hl, bc
	ld a, [hl]
	or a
	jr nz, jr_001_43a1

	ld de, $43cb
	call $0b03
	jr jr_001_43a7

jr_001_43a1:
	ld de, $43c7
	call $0b03

jr_001_43a7:
	ld de, $432a
	jp $0a53


	ld d, l
	add hl, sp
	or a
	add hl, sp
	ld de, $6b3a
	ld a, [hld]
	push bc
	ld a, [hld]
	ld [de], a
	ld [$0008], sp
	nop
	db $10
	db $10
	jr c, @+$78

	nop
	db $76
	jr nz, jr_001_4438

	nop
	ld [hl], h
	jr nz, jr_001_443e

	db $10
	db $76
	jr nc, @+$76

	db $10
	ld [hl], h
	jr nc, jr_001_437f

	ld hl, $cac0
	ld [hli], a
	ld [hl], a
	ld b, $04

jr_001_43d7:
	push bc
	ld de, $43e5
	call $0a3e
	pop bc
	dec b
	jr nz, jr_001_43d7

	jp $0a67


	ld de, $cac0
	ld a, [de]
	xor $07
	add $02
	ld [$cab6], a
	ld bc, $44d6
	call $0947
	or a
	jp z, $0a67

	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $0011
	add hl, de
	ld de, $cac0
	ld a, [de]
	ld [hl], a
	inc a
	ld [de], a
	ld de, $4411
	jp $0a53


	ld a, [bc]
	push bc
	call $0b4a
	ld hl, $0011
	add hl, bc
	ld a, [hl]
	add a
	ld l, a
	ld h, $00
	ld de, $44ce
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	call $0939
	pop bc
	ld hl, $0011
	add hl, bc
	ld a, [hl]
	ld hl, $0f29
	call $0f0f
	ld bc, $44d6

jr_001_4438:
	call $0b38
	ld de, $44de

jr_001_443e:
	call $0b03
	ld de, $4447
	jp $0a53


	call Call_001_4627
	cp [hl]
	jr c, jr_001_4453

	ld de, $445f
	jp $0a53


jr_001_4453:
	ld de, $44de
	call $0b03
	ld de, $44ac
	jp $0a53


	ld a, [bc]
	call $0b4a
	inc hl
	ld a, [hl]
	cp $a0
	jp nc, $0a64

	ld de, $0004
	add hl, de
	xor a
	ld [hl], a
	call $09b8
	or a
	jr nz, jr_001_4489

	ld de, $ca60
	ld a, [de]
	or a
	jr nz, jr_001_4489

	ld bc, $1c00
	call $0a2e
	ld de, $1141
	call $0a3e

jr_001_4489:
	ld de, $44de
	call $0b03
	ld de, $4495
	jp $0a53


	push bc
	call $09cd
	pop bc
	call $0a0c
	or a
	jr z, jr_001_44a6

	ld de, $44e2
	call $0b03

jr_001_44a6:
	ld de, $4447
	jp $0a53


	ld a, [bc]
	call $0b4a
	inc hl
	ld de, $ca34
	ld a, [hli]
	add $10
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ld de, $0ff5
	call $0a3e
	ld hl, $734c
	ld a, $01
	call Call_001_49aa
	ld d, $33
	jp $0bbb


	rra
	dec sp
	ld h, a
	dec sp
	or l
	dec sp
	ld bc, $213c
	db $10
	inc b
	nop
	nop
	jr nz, jr_001_44e5

	jr nz, @+$7a

	nop
	ld a, b
	ld b, b
	ld a, b
	db $10
	ld a, b

jr_001_44e5:
	ld d, b
	xor a
	ld hl, $cac0
	ld [hli], a
	ld [hl], a
	ld b, $02

jr_001_44ee:
	push bc
	ld de, $44fc
	call $0a3e
	pop bc
	dec b
	jr nz, jr_001_44ee

	jp $0a67


	ld de, $cac0
	ld a, [de]
	xor $07
	ld [$cab6], a
	ld bc, $45ff
	call $0947
	or a
	jp z, $0a67

	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $0011
	add hl, de
	ld de, $cac0
	ld a, [de]
	ld [hl], a
	inc a
	ld [de], a
	ld de, $4526
	jp $0a53


	ld a, [bc]
	push bc
	call $0b4a
	ld hl, $0011
	add hl, bc
	ld de, $3c45
	ld a, [hl]
	or a
	jr z, jr_001_4539

	ld de, $3c67

jr_001_4539:
	call $0939
	pop bc
	ld hl, $0011
	add hl, bc
	ld a, [hl]
	push af
	ld hl, $0f2d
	call $0f0f
	ld bc, $45ff
	call $0b38
	pop af
	ld de, $4607
	or a
	jr z, jr_001_4559

	ld de, $460f

jr_001_4559:
	call $0b03
	ld de, $4562
	jp $0a53


	call Call_001_4627
	cp [hl]
	jr c, jr_001_456e

	ld de, $4590
	jp $0a53


jr_001_456e:
	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld bc, $0011
	add hl, bc
	ld de, $460f
	ld a, [hl]
	or a
	jr nz, jr_001_4582

	ld de, $4607

jr_001_4582:
	call $0b03
	ld a, $14
	call $0c57
	ld de, $463d
	jp $0a53


	ld a, [bc]
	call $0b4a
	inc hl
	ld a, [hl]
	cp $a0
	jp nc, $0a64

	call $09b8
	or a
	jr nz, jr_001_45b6

	ld de, $ca63
	ld bc, $1008
	call $0a2e
	ld a, $02
	ld [de], a
	inc de
	xor a
	ld [de], a
	ld de, $11a1
	call $0a3e

jr_001_45b6:
	ld de, $45bc
	jp $0a53


	call $09ec
	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld bc, $0011
	add hl, bc
	ld de, $460f
	ld a, [hl]
	or a
	jr nz, jr_001_45d3

	ld de, $4607

jr_001_45d3:
	call $0b03
	ld de, $45dc
	jp $0a53


	call $0a0c
	or a
	jr z, jr_001_45f9

	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld bc, $0011
	add hl, bc
	ld de, $461f
	ld a, [hl]
	or a
	jr nz, jr_001_45f6

	ld de, $4617

jr_001_45f6:
	call $0b03

jr_001_45f9:
	ld de, $4562
	jp $0a53


	ld [hli], a
	db $10
	ld [$0000], sp
	jr nz, jr_001_4616

	inc a
	ld a, h
	nop
	ld a, [hl]
	nop
	ld a, h
	ld b, b
	ld a, [hl]
	ld b, b
	ld a, [hl]
	jr nz, @+$7e

	jr nz, @+$80

	ld h, b
	ld a, h

jr_001_4616:
	ld h, b
	ld a, h
	db $10
	ld a, [hl]
	db $10
	ld a, h
	ld d, b
	ld a, [hl]
	ld d, b
	ld a, [hl]
	jr nc, jr_001_469e

	jr nc, jr_001_46a2

	ld [hl], b
	ld a, h
	ld [hl], b

Call_001_4627:
	ld a, [bc]
	call $0b4a
	call $0ce4
	call $0b1e
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $000c
	add hl, de
	ld a, [hli]
	ret


	ld a, [bc]
	call $0b4a
	ld hl, $001c
	add hl, bc
	inc [hl]
	ld a, [hl]
	and $07
	ld [hli], a
	jp nz, $047e

	ld a, [hl]
	inc [hl]
	cp $05
	jp z, $0a64

	ld hl, $4686
	call Call_001_465d
	jp $047e


Call_001_465d:
	add a
	ld c, a
	ld b, $00
	add hl, bc
	push hl
	ld hl, $ca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	pop bc
	ld de, $ca34
	ld a, [bc]
	add [hl]
	ld [de], a
	inc bc
	inc de
	inc hl
	ld a, [bc]
	add [hl]
	ld [de], a
	ld de, $0ff5
	call $0a3e
	ld hl, $734c
	ld a, $01
	call Call_001_49aa
	ret


	ld [$1008], sp
	db $10
	stop
	nop
	stop
	nop
	ld hl, $ca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $0011
	add hl, de
	ld de, $cac0
	ld a, [de]

jr_001_469e:
	ld [hl], a
	inc a
	ld [de], a
	ret


jr_001_46a2:
	ld a, [bc]
	call $0b4a
	ld hl, $001c
	add hl, bc
	ld a, [hl]
	inc [hl]
	ret


	ld a, [bc]
	call $0b4a
	ld a, [$cac1]
	or a
	jp nz, $0a64

	ld de, $46be
	jp $0a53


	ld a, [bc]
	call $0b4a
	ld de, $0000
	call $0b1e
	ld de, $46ce
	jp $0a53


	call $09ec
	ld de, $46ad
	jp $0a53


	ld hl, $cac3
	inc [hl]
	ld a, [hli]
	cp $20
	jp c, $047e

	ldh a, [rLCDC]
	and $fe
	ldh [rLCDC], a
	jp $0a67


Jump_001_46ea:
	ld a, [$ca19]
	cp $06
	jr nz, jr_001_46fa

	ld de, $2cbe
	call $0a3e
	jp $0a64


jr_001_46fa:
	ld de, $2af4
	call $0a3e
	jp $0a64


	ld bc, $4523
	ld h, a
	adc c
	xor e
	call $edef
	res 5, c
	add a
	ld h, l
	ld b, e
	ld hl, $9b00
	ldh [$ba], a
	sbc b
	db $76
	ld d, h
	ld [hld], a
	db $10
	sbc e
	ldh [$ba], a
	sbc b
	db $76
	ld d, h
	ld [hld], a
	db $10
	cp $dc
	cp d
	sbc b
	db $76
	ld d, h
	ld [hld], a
	db $10
	cp $dc
	cp d
	sbc b
	db $76
	ld d, h
	ld [hld], a
	db $10
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	ldh a, [$9b]
	ldh [$ba], a
	sbc b
	db $76
	ld d, h
	ld [hld], a
	db $10
	sbc e
	ldh [$ba], a
	sbc b
	db $76
	ld d, h
	ld [hld], a
	db $10
	db $fd
	cp c
	ld [hl], l
	ld sp, $a8ec

jr_001_4759:
	ld h, h
	jr nz, jr_001_4759

	cp c
	ld [hl], l
	ld sp, $a8ec
	ld h, h

jr_001_4762:
	jr nz, jr_001_4762

	call c, $edcd
	jp z, $4286

	db $10
	cp $dc
	call $caed
	add [hl]
	ld b, d
	db $10
	db $fd
	cp c
	xor e
	sub a
	ld h, l
	ld b, e
	ld hl, $fd10
	cp c
	xor e
	sub a
	ld h, l
	ld b, e
	ld hl, $4410
	ld b, h
	ld b, h
	ld b, [hl]
	ld h, a
	adc d
	rst $08
	cp b
	ld b, h
	ld b, h
	ld b, h
	ld b, [hl]
	ld h, a
	adc d
	rst $08
	cp b
	rst $38
	xor b
	rst $38
	xor b
	ld [hl], a
	ld h, [hl]
	ld d, l
	ld b, d
	rst $38
	xor b
	rst $38
	xor b
	ld [hl], a
	ld h, [hl]
	ld d, l
	ld b, d
	rst $38
	xor d
	adc b
	adc b
	adc b
	adc b
	adc b
	adc b
	rst $38
	xor d
	adc b
	adc b
	adc b
	adc b
	adc b
	adc b
	rst $38
	xor d
	adc b
	adc b
	adc b
	adc b
	adc b
	adc b
	rst $38
	xor d
	adc b
	adc b
	adc b
	adc b
	adc b
	adc b
	rst $38
	xor d
	adc b
	adc b
	adc b
	adc b
	adc b
	adc b
	rst $38
	xor d
	adc b
	adc b
	adc b
	adc b
	adc b
	adc b
	rst $38
	xor d
	adc b
	adc b
	adc b
	adc b
	adc b
	adc b
	rst $38
	xor d
	adc b
	adc b
	adc b
	adc b
	adc b
	adc b
	rst $38
	xor d
	adc b
	adc b
	adc b
	adc b
	adc b
	adc b
	rst $38
	xor d
	adc b
	adc b
	adc b
	adc b
	adc b
	adc b
	rst $38
	xor d
	adc b
	adc b
	adc b
	adc b
	adc b
	adc b
	rst $38
	xor d
	adc b
	adc b
	adc b
	adc b
	adc b
	adc b
	rst $38
	call z, $aaaa
	xor d

Jump_001_4808:
	adc b
	adc b
	ld [hl], a
	rst $38
	ld d, l
	ld [hl], a
	sbc c
	xor d
	cp e
	db $dd
	rst $38
	cp $dc
	cp d
	sbc b
	adc c
	xor e
	call $89ef
	xor e
	call $feef
	call c, $98ba
	db $fd
	cp c
	ld [hl], l
	ld sp, $a8ec
	ld h, h

jr_001_482a:
	jr nz, jr_001_482a

	call c, $edcd
	jp z, $4286

	db $10
	db $fd
	cp c
	xor e
	sub a
	ld h, l
	ld b, e
	ld hl, $4410
	ld b, h
	ld b, h
	ld b, [hl]
	ld h, a
	adc d
	rst $08
	cp b
	rst $38
	xor b
	rst $38
	xor b
	ld [hl], a
	ld h, [hl]
	ld d, l
	ld b, d
	rst $38
	ld de, $1111
	ld de, $1111
	ld de, $ccff
	adc b
	adc b
	ld h, [hl]
	ld b, h
	ld [hli], a
	ld de, $aaff
	adc b
	adc b
	adc b
	ld [hl], a
	ld h, [hl]
	ld h, [hl]
	cp e
	xor d
	ld h, [hl]
	ld h, [hl]
	ld b, h
	ld b, h
	ld [hli], a
	ld [hli], a
	rst $38
	rst $38
	adc b
	xor d
	adc b
	ld [hl], a
	ld h, [hl]
	ld d, l
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	rst $38
	nop
	rst $38
	nop
	nop
	ld bc, $0000
	rst $38
	nop
	ld bc, $8000
	ld bc, $01ff
	rst $38
	ld bc, $01ff
	rst $38
	ld bc, $80ff
	ld bc, $01ff
	rst $38
	ld bc, $01ff
	rst $38
	ld bc, $0080
	rst $38
	nop
	ld bc, $8000
	nop
	rst $38
	nop
	ld bc, $ff00
	add b
	nop
	rst $38
	nop
	nop
	ld bc, $0000
	rst $38
	nop
	add b
	nop
	rst $38
	nop
	nop
	ld bc, $0000
	rst $38
	nop
	add b
	nop
	rst $38
	nop
	nop
	ld bc, $0000
	rst $38
	nop
	add b
	nop
	rst $38
	nop
	nop
	ld bc, $0000
	rst $38
	nop
	add b
	nop
	rst $38
	nop
	nop
	ld bc, $0000
	rst $38
	nop
	add b
	nop
	rst $38
	nop
	nop
	ld bc, $0000
	rst $38
	nop
	add b
	nop
	rst $38
	nop
	nop
	ld bc, $0000
	rst $38
	nop
	add b
	nop
	rst $38
	nop
	nop
	ld bc, $0000
	rst $38
	nop
	add b
	nop
	rst $38
	nop
	nop
	ld bc, $0000
	rst $38
	nop
	add b
	nop
	rst $38
	nop
	nop
	ld bc, $0000
	rst $38
	nop
	add b
	ld a, e
	ld c, b
	add a
	ld c, b
	sub d
	ld c, b
	sbc h
	ld c, b
	and d
	ld c, b
	xor c
	ld c, b
	or e
	ld c, b
	cp l
	ld c, b
	rst $00
	ld c, b
	pop de
	ld c, b
	db $db
	ld c, b
	push hl
	ld c, b
	rst $28
	ld c, b
	ld sp, hl
	ld c, b
	inc bc
	ld c, c
	ld l, l
	dec d
	inc b
	add hl, de
	nop
	ld [de], a
	scf
	ld [hl], b
	ld h, l
	adc d
	adc a
	ret nc

	call nc, $6460
	ld [hl], b
	ld [hl], e
	add hl, de
	ld e, d
	ld b, l
	ld h, l
	ld h, a
	ld l, c
	ld l, e
	ld l, l
	ld l, [hl]
	ld h, b
	ld h, e
	call nc, $dfd8
	ld h, l
	ld l, d
	ld [bc], a
	inc b
	rlca
	ld d, l
	ld a, [bc]
	ld c, a
	add b
	add a
	adc d
	adc a
	ret nc

	call nc, $dfd8
	ld a, [hld]
	ld l, l
	call Call_001_497b
	ld a, $80
	ldh [rNR52], a
	ld a, $77
	ldh [rNR50], a
	ld a, $ff
	ldh [rNR51], a
	ld hl, $cc00
	ld de, $cc01
	ld bc, $0186
	ld [hl], $00
	call $552b
	ei
	ret


Call_001_497b:
	di
	ld a, $00
	ldh [rNR50], a
	ld a, $80
	ldh [rNR52], a
	ld a, $08
	ldh [rNR12], a
	ldh [rNR22], a
	ldh [rNR42], a
	ld a, $80
	ldh [rNR14], a
	ldh [rNR24], a
	ldh [rNR44], a
	xor a
	ldh [rNR32], a
	ld a, $8f
	ldh [rNR52], a
	ld a, $77
	ldh [rNR50], a
	ret


	ld hl, $cc03
	ld e, a
	ld d, $00
	add hl, de
	ld a, [hl]
	or a
	ret


Call_001_49aa:
	or a
	jr nz, jr_001_49ae

	dec a

jr_001_49ae:
	ld [$cd7f], a
	ld a, l
	ld [$cd81], a
	ld a, h
	ld [$cd82], a
	di
	call Call_001_49cf
	jr c, jr_001_49cb

	call $4b5d
	jr c, jr_001_49cb

	call Call_001_4a36
	ld a, [$cd83]
	or a

jr_001_49cb:
	push af
	ei
	pop af
	ret


Call_001_49cf:
jr_001_49cf:
	call Call_001_4a05
	ret c

	ld e, $00
	ld d, $04
	ld a, [$cd81]
	ld l, a
	ld a, [$cd82]
	ld h, a
	inc hl
	inc hl

jr_001_49e1:
	ld a, [hl]
	inc hl
	ld b, [hl]
	inc hl
	ld c, [hl]
	inc hl
	or b
	jr z, jr_001_49fc

	inc e
	push hl
	ld hl, $cc0f
	ld b, $00
	add hl, bc
	ld a, [hl]
	pop hl
	or a
	jr z, jr_001_49fc

	call Call_001_4be5
	jr jr_001_49cf

jr_001_49fc:
	dec d
	jr nz, jr_001_49e1

	ld a, e
	or a
	scf
	ret z

	or a
	ret


Call_001_4a05:
	ld a, [$cd81]
	ld l, a
	ld a, [$cd82]
	ld h, a
	inc hl
	ld e, [hl]
	ld a, e
	ld [$cd80], a
	inc e
	inc hl
	ld d, $04

jr_001_4a17:
	ld a, [hl]
	inc hl
	ld b, [hl]
	inc hl
	ld c, [hl]
	inc hl
	or b
	jr z, jr_001_4a31

	push hl
	ld hl, $cc0f
	ld b, $00
	add hl, bc
	ld c, [hl]
	ld hl, $cc07
	add hl, bc
	ld a, [hl]
	pop hl
	cp e
	ccf
	ret c

jr_001_4a31:
	dec d
	jr nz, jr_001_4a17

	or a
	ret


Call_001_4a36:
	ld a, [$cd83]
	ld e, a
	ld d, $00
	ld hl, $cc03
	add hl, de
	ld [hl], $ff
	ld hl, $cc07
	add hl, de
	ld a, [$cd80]
	ld [hl], a
	ld a, e
	call Call_001_4b21
	ld a, l
	ld [$cc02], a
	ld a, h
	ld [$cc03], a
	ld hl, $cc38
	ld de, $cc39
	ld bc, $0002
	ld [hl], $00
	call $552b
	ld a, [$cd7f]
	ld [$cc38], a
	ld a, [$cd81]
	ld l, a
	ld a, [$cd82]
	ld h, a
	ld a, [hli]
	inc a
	ld [$cc39], a
	ld a, $01
	ld [$cc3a], a
	inc hl
	call Call_001_4a84
	call Call_001_4b9b
	ret


Call_001_4a84:
	ld b, $04
	push hl
	pop de

jr_001_4a88:
	ld a, [de]
	inc de
	ld l, a
	ld a, [de]
	inc de
	ld h, a
	ld a, [de]
	inc de
	ld c, a
	ld a, h
	or l
	jr z, jr_001_4aa1

	ld a, $05
	sub b
	push de
	push bc
	call Call_001_4aa6
	pop bc
	pop de
	jr c, jr_001_4aa5

jr_001_4aa1:
	dec b
	jr nz, jr_001_4a88

	or a

jr_001_4aa5:
	ret


Call_001_4aa6:
	ld [$cd7e], a
	ld a, c
	inc a
	ld [$cd84], a
	push hl
	call Call_001_4b3f
	ld a, l
	ld [$cc0d], a
	ld a, h
	ld [$cc0e], a
	ld hl, $cc47
	ld de, $cc48
	ld bc, $002a
	ld [hl], $00
	call $552b
	pop hl
	ld a, l
	ld [$cc47], a
	ld a, h
	ld [$cc48], a
	ld a, [$cd7e]
	ld [$cc4b], a
	ld a, [$cd84]
	ld e, a
	ld d, $00
	ld hl, $cc0e
	add hl, de
	ld a, [$cd83]
	ld [hl], a
	ld hl, $cc14
	add hl, de
	ld [hl], $00
	call Call_001_4af6
	call Call_001_4bc0
	ld a, [$cd84]
	or a
	ret


Call_001_4af6:
	call Call_001_4b08
	ld bc, $0003
	add hl, bc
	push hl
	pop de
	dec hl
	call Call_001_5536
	ld a, [$cd84]
	ld [de], a
	ret


Call_001_4b08:
	ld a, [$cc4b]
	add a
	ld hl, $4b17
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret


	daa
	call z, $cc2b
	cpl
	call z, $cc33

Call_001_4b21:
	add a
	ld hl, $4b2d
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret


	dec sp
	call z, $cc3e
	ld b, c
	call z, $cc44
	ld b, a
	call z, $cc4a
	ld c, l
	call z, $cc50

Call_001_4b3f:
	add a
	ld hl, $4b4b
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret


	ld [hl], d
	call z, $cc9d
	ret z

	call z, $ccf3
	ld e, $cd
	ld c, c
	call $cd74
	sbc a
	call $0406
	ld hl, $cc04

jr_001_4b62:
	ld a, [hli]
	or a
	jr z, jr_001_4b6b

	dec b
	jr nz, jr_001_4b62

	scf
	ret


jr_001_4b6b:
	ld a, $05
	sub b
	ld [$cd83], a
	ret


	ld b, $06
	ld hl, $cc0f

jr_001_4b77:
	ld a, [hli]
	or a
	jr z, jr_001_4b80

	dec b
	jr nz, jr_001_4b77

	scf
	ret


jr_001_4b80:
	ld a, $07
	sub b
	ld [$cd84], a
	ret


Call_001_4b87:
	call Call_001_4b21
	ld a, l
	ld [$cc02], a
	ld a, h
	ld [$cc03], a
	ld de, $cc38
	ld bc, $0003
	jp $552b


Call_001_4b9b:
	ld hl, $cc38
	ld a, [$cc02]
	ld e, a
	ld a, [$cc03]
	ld d, a
	ld bc, $0003
	jp $552b


Call_001_4bac:
	call Call_001_4b3f
	ld a, l
	ld [$cc0d], a
	ld a, h
	ld [$cc0e], a
	ld de, $cc47
	ld bc, $002b
	jp $552b


Call_001_4bc0:
	ld hl, $cc47
	ld a, [$cc0d]
	ld e, a
	ld a, [$cc0e]
	ld d, a
	ld bc, $002b
	jp $552b


	or a
	jr nz, jr_001_4bdf

jr_001_4bd4:
	inc a
	cp $05
	ret nc

	push af
	call Call_001_4bdf
	pop af
	jr jr_001_4bd4

Call_001_4bdf:
jr_001_4bdf:
	di
	call Call_001_4be5
	ei
	ret


Call_001_4be5:
	or a
	ret z

	cp $05
	ret nc

	ld c, a
	ld b, $00
	ld hl, $cc03
	add hl, bc
	ld [hl], $00
	ld hl, $cc07
	add hl, bc
	ld [hl], $00
	ld b, $06
	ld hl, $cc0f
	ld de, $cc15

jr_001_4c01:
	ld a, [hl]
	cp c
	jr nz, jr_001_4c14

	xor a
	ld [hl], a
	ld [de], a
	ld a, $07
	sub b
	push hl
	push de
	push bc
	call Call_001_4c1a
	pop bc
	pop de
	pop hl

jr_001_4c14:
	inc hl
	inc de
	dec b
	jr nz, jr_001_4c01

	ret


Call_001_4c1a:
	ld hl, $cd75
	ld [hl], $01
	ld hl, $cc27
	call Call_001_4c63
	jr nc, jr_001_4c5f

	ld hl, $cd75
	ld [hl], $02
	ld hl, $cc2b
	call Call_001_4c63
	jr nc, jr_001_4c5f

	ld hl, $cd75
	ld [hl], $04
	ld hl, $cc33
	call Call_001_4c63
	jr nc, jr_001_4c5f

	ld hl, $cd75
	ld [hl], $03
	ld hl, $cc2f
	call Call_001_4c63
	ret c

	ld a, [hl]
	or a
	ret z

	push af
	call Call_001_4b3f
	ld de, $0006
	add hl, de
	ld a, [hl]
	call Call_001_510f
	pop af
	jr jr_001_4c62

jr_001_4c5f:
	ld a, [hl]
	or a
	ret z

jr_001_4c62:
	ret


Call_001_4c63:
	push hl
	ld bc, $0003
	ld d, $04

jr_001_4c69:
	cp [hl]
	jr z, jr_001_4c74

	inc hl
	dec bc
	dec d
	jr nz, jr_001_4c69

	scf
	jr jr_001_4c83

jr_001_4c74:
	call Call_001_4c85
	ld e, l
	ld d, h
	inc hl
	ld a, b
	or c
	jr z, jr_001_4c81

	call $552b

jr_001_4c81:
	xor a
	ld [de], a

jr_001_4c83:
	pop hl
	ret


Call_001_4c85:
	push bc
	push de
	push hl
	ld a, c
	cp $03
	jr nz, jr_001_4c93

	ld a, [$cd75]
	call Call_001_5436

jr_001_4c93:
	pop hl
	pop de
	pop bc
	ret


	push af
	ld a, [$cc00]
	or a
	jr nz, jr_001_4caf

	dec a
	ld [$cc00], a
	push hl
	push de
	push bc
	call Call_001_4cb1
	pop bc
	pop de
	pop hl
	xor a
	ld [$cc00], a

jr_001_4caf:
	pop af
	reti


Call_001_4cb1:
	call Call_001_4cbb
	call Call_001_513a
	call Call_001_5276
	ret


Call_001_4cbb:
	ld b, $04
	ld hl, $cc04

jr_001_4cc0:
	ld a, [hli]
	or a
	jr z, jr_001_4cd7

	ld a, $05
	sub b
	ld [$cc01], a
	push bc
	push hl
	call Call_001_4b87
	call Call_001_4cdb
	call Call_001_4b9b
	pop hl
	pop bc

jr_001_4cd7:
	dec b
	jr nz, jr_001_4cc0

	ret


Call_001_4cdb:
	ld hl, $cc3a
	dec [hl]
	ret nz

	ld a, [$cc39]
	ld [hl], a
	call Call_001_532c
	ret c

	ld a, [$cc01]
	ld c, a
	ld b, $06
	ld hl, $cc0f
	ld de, $cc15

jr_001_4cf4:
	ld a, [hl]
	cp c
	jr nz, jr_001_4d18

	ld a, [de]
	or a
	jr z, jr_001_4d18

	push hl
	push de
	push bc
	ld a, $07
	sub b
	ld [$cc0c], a
	call Call_001_4b3f
	ld c, l
	ld b, h
	ld a, l
	ld [$cc0d], a
	ld a, h
	ld [$cc0e], a
	call Call_001_4d1e
	pop bc
	pop de
	pop hl

jr_001_4d18:
	inc hl
	inc de
	dec b
	jr nz, jr_001_4cf4

	ret


Call_001_4d1e:
	ld a, [$cc0c]
	dec a
	ld e, a
	ld d, $00
	ld hl, $001b
	add hl, bc
	ld a, [hl]
	or a
	jr nz, jr_001_4d3d

	ld hl, $000a
	add hl, bc
	ld a, [hl]
	or a
	jr z, jr_001_4d3d

	dec [hl]
	jr nz, jr_001_4d3d

	ld hl, $000e
	add hl, bc
	ld [hl], a

jr_001_4d3d:
	ld hl, $000b
	add hl, bc
	dec [hl]
	ret nz

	ld hl, $cc21
	add hl, de
	ld [hl], $ff

Jump_001_4d49:
	ld a, [$cc0d]
	ld c, a
	ld a, [$cc0e]
	ld b, a
	ld hl, $0002
	add hl, bc
	ld a, [hl]
	inc hl
	push hl
	ld h, [hl]
	ld l, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld [$cd85], a
	ld a, h
	ld e, l
	pop hl
	ld [hld], a
	ld [hl], e
	ld a, d
	cp $b0
	jp nc, Jump_001_4f9f

	cp $a0
	jp nc, $4ec4

	cp $90
	jp nc, Jump_001_4efa

	ld e, $80
	ld hl, $001b
	add hl, bc
	ld a, [hl]
	or a
	jr z, jr_001_4d81

	ld e, $c0

jr_001_4d81:
	ld hl, $002a
	add hl, bc
	ld a, [hl]
	and $07
	or e
	ld [hl], a
	ld hl, $0004
	add hl, bc
	ld a, [hl]
	cp $04
	jr z, jr_001_4e05

	ld a, d
	and $f0
	jr z, jr_001_4dee

	call Call_001_4dce
	ld a, [hli]
	push hl
	ld hl, $0029
	add hl, bc
	ld [hli], a
	ld a, [hl]
	and $f8
	pop hl
	or [hl]
	ld hl, $002a
	add hl, bc
	ld [hl], a
	ld hl, $0007
	add hl, bc
	ld a, [hl]
	ld [$cd77], a
	call Call_001_4db9
	jr jr_001_4e2c

Call_001_4db9:
	ld hl, $0004
	add hl, bc
	ld a, [hl]
	cp $03
	ret nz

	ld hl, $0029
	add hl, bc
	ld a, [hli]
	ldh [rNR33], a
	ld a, [hl]
	and $7f
	ldh [rNR34], a
	ret


Call_001_4dce:
	ld a, d
	swap a
	and $0f
	dec a
	add a
	add a
	ld e, a
	add a
	add e
	ld e, a
	ld a, d
	and $0f
	add e
	ld e, a
	ld hl, $0005
	add hl, bc
	ld a, [hl]
	add e
	ld l, a
	ld h, $00
	add hl, hl
	ld de, $5469
	add hl, de
	ret


jr_001_4dee:
	ld hl, $0008
	add hl, bc
	ld a, [hl]
	ld [$cd77], a
	ld hl, $000a
	add hl, bc
	ld [hl], $00
	ld a, $01
	ld hl, $000e
	add hl, bc
	ld [hl], a
	jr jr_001_4e78

jr_001_4e05:
	ld a, d
	and $ff
	jr z, jr_001_4dee

	ld hl, $492a
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld a, [hl]
	cp $e0
	jr c, jr_001_4e19

	xor a

jr_001_4e19:
	ld hl, $0029
	add hl, bc
	ld [hl], a
	ld hl, $0014
	add hl, bc
	ld [hl], $00
	ld hl, $0007
	add hl, bc
	ld a, [hl]
	ld [$cd77], a

jr_001_4e2c:
	ld hl, $0009
	add hl, bc
	ld h, [hl]
	ld a, [$cd85]
	sub h
	jr z, jr_001_4e39

	jr nc, jr_001_4e3b

jr_001_4e39:
	ld a, $01

jr_001_4e3b:
	ld hl, $000a
	add hl, bc
	ld [hl], a
	ld a, $01
	ld hl, $000e
	add hl, bc
	ld [hl], a
	ld hl, $0018
	add hl, bc
	ld [hl], a
	ld hl, $0015
	add hl, bc
	ld a, [hl]
	ld hl, $0016
	add hl, bc
	ld [hl], a
	xor a
	ld hl, $000f
	add hl, bc
	ld [hl], a
	ld hl, $0012
	add hl, bc
	ld [hl], a
	ld hl, $0014
	add hl, bc
	ld a, [hl]
	add a
	ld hl, $490b
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld a, [hli]
	ld e, [hl]
	ld hl, $0019
	add hl, bc
	ld [hli], a
	ld [hl], e

jr_001_4e78:
	ld a, [$cd85]
	ld hl, $000b
	add hl, bc
	ld [hl], a
	push bc
	ld hl, $0004
	add hl, bc
	ld c, [hl]
	ld a, [$cd77]
	call Call_001_4ea3
	ld e, b
	pop bc
	ld hl, $000c
	add hl, bc
	ld a, [hl]
	or a
	ld a, e
	jr nz, jr_001_4e9d

	ld hl, $0013
	add hl, bc
	ld a, [hl]
	or e

jr_001_4e9d:
	ld hl, $0028
	add hl, bc
	ld [hl], a
	ret


Call_001_4ea3:
	swap a
	and $f0
	ld b, a
	ld a, c
	cp $03

jr_001_4eab:
	jr nz, jr_001_4ebe

	ld a, b
	rlca
	rlca
	and $03
	push hl
	ld hl, $4ec0
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld b, [hl]
	pop hl

jr_001_4ebe:
	ld a, b
	ret


	nop
	ld h, b
	ld b, b
	jr nz, jr_001_4eab

	rrca
	jp z, Jump_001_4ed9

	ld e, a
	ld hl, $001c
	add hl, bc
	ld a, [hl]
	or a
	jr z, jr_001_4ed8

	dec [hl]
	jr nz, jr_001_4ed9

	jp Jump_001_4d49


jr_001_4ed8:
	ld [hl], e

Jump_001_4ed9:
jr_001_4ed9:
	ld a, [$cd85]
	ld l, a
	ld h, $00
	cp $80
	jr c, jr_001_4ee4

	dec h

jr_001_4ee4:
	add hl, hl
	ld e, l
	ld d, h
	ld hl, $0002
	add hl, bc
	ld a, [hli]
	push hl
	ld h, [hl]
	ld l, a
	dec hl
	dec hl
	add hl, de
	ld a, h
	ld e, l
	pop hl
	ld [hld], a
	ld [hl], e
	jp Jump_001_4d49


Jump_001_4efa:
	and $0f
	jp z, Jump_001_4f64

	ld [$cd76], a
	ld hl, $0002
	add hl, bc
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld hl, $001d
	add hl, bc
	ld c, $00

jr_001_4f0f:
	ld a, [hli]
	cp e
	jr nz, jr_001_4f17

	ld a, [hl]
	cp d
	jr z, jr_001_4f52

jr_001_4f17:
	inc hl
	inc c
	ld a, c
	cp $03
	jr c, jr_001_4f0f

	ld a, [$cc0d]
	ld e, a
	ld a, [$cc0e]
	ld d, a
	ld hl, $001d
	add hl, de
	ld c, $00

jr_001_4f2c:
	ld a, [hli]
	or [hl]
	jr z, jr_001_4f3a

	inc hl
	inc c
	ld a, c
	cp $03
	jr c, jr_001_4f2c

	jp Jump_001_4d49


jr_001_4f3a:
	push hl
	ld hl, $0002
	add hl, de
	ld a, [hli]
	ld b, [hl]
	pop hl
	ld [hl], b
	dec hl
	ld [hl], a
	ld b, $00
	ld hl, $0023
	add hl, de
	add hl, bc
	ld a, [$cd76]
	ld [hl], a
	jr jr_001_4f64

jr_001_4f52:
	ld b, $00
	ld a, [$cc0d]
	ld e, a
	ld a, [$cc0e]
	ld d, a
	ld hl, $0023
	add hl, de
	add hl, bc
	dec [hl]
	jr z, jr_001_4f8d

Jump_001_4f64:
jr_001_4f64:
	ld a, [$cd85]
	ld l, a
	ld h, $00
	cp $80
	jr c, jr_001_4f6f

	dec h

jr_001_4f6f:
	ld a, [$cc0d]
	ld c, a
	ld a, [$cc0e]
	ld b, a
	add hl, hl
	ld e, l
	ld d, h
	ld hl, $0002
	add hl, bc
	ld a, [hli]
	push hl
	ld h, [hl]
	ld l, a
	dec hl
	dec hl
	add hl, de
	ld a, h
	ld e, l
	pop hl
	ld [hld], a
	ld [hl], e
	jp Jump_001_4d49


jr_001_4f8d:
	ld a, c
	add a
	ld c, a
	ld b, $00
	ld hl, $001d
	add hl, de
	add hl, bc
	ld [hl], $00
	inc hl
	ld [hl], $00
	jp Jump_001_4d49


Jump_001_4f9f:
	ld hl, $4d49
	push hl
	cp $ed
	ret c

	ld hl, $0004
	add hl, bc
	ld a, [hl]
	add a
	ld hl, $4fc9
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, d
	cpl
	add a
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	or h
	ret z

	ld a, [$cd85]
	ld d, a
	jp hl


	db $d3
	ld c, a
	ld sp, hl
	ld c, a
	rra
	ld d, b
	ld b, l
	ld d, b
	ld l, e
	ld d, b
	adc b
	ld d, b
	sub b
	ld d, b
	sbc b
	ld d, b
	or h
	ld d, b
	cp h
	ld d, b
	jp nz, $d950

	ld d, b
	rst $18
	ld d, b
	rst $28
	ld d, b
	push af
	ld d, b
	ei
	ld d, b
	nop
	nop
	nop
	nop
	inc hl
	ld d, c
	ld h, $51
	rst $20
	ld d, b
	ld l, $51
	inc [hl]
	ld d, c
	ld l, e
	ld d, b
	adc b
	ld d, b
	sub b
	ld d, b
	sbc b
	ld d, b
	or h
	ld d, b
	cp h
	ld d, b
	jp nz, $d950

	ld d, b
	rst $18
	ld d, b
	rst $28
	ld d, b
	nop
	nop
	ei
	ld d, b
	nop
	nop
	nop
	nop
	inc hl
	ld d, c
	ld h, $51
	rst $20
	ld d, b
	ld l, $51
	inc [hl]
	ld d, c
	ld l, e
	ld d, b
	adc b
	ld d, b
	sub b
	ld d, b
	sbc b
	ld d, b
	nop
	nop
	cp h
	ld d, b
	jp nz, $d950

	ld d, b
	rst $18
	ld d, b
	rst $28
	ld d, b
	nop
	nop
	nop
	nop
	nop
	nop
	ld [$2351], sp
	ld d, c
	ld h, $51
	rst $20
	ld d, b
	ld l, $51
	inc [hl]
	ld d, c
	ld l, e
	ld d, b
	adc b
	ld d, b
	sub b
	ld d, b
	sbc b
	ld d, b
	or h
	ld d, b
	cp h
	ld d, b
	jp nz, $d950

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
	inc hl
	ld d, c
	ld h, $51
	nop
	nop
	ld l, $51
	nop
	nop
	pop hl
	ld a, [$cc0c]
	ld e, a
	ld d, $00
	ld hl, $cc14
	add hl, de
	ld [hl], $00
	ld hl, $cc20
	add hl, de
	ld [hl], $00
	call Call_001_5431
	xor a
	ld hl, $0007
	add hl, bc
	ld [hl], a
	ret


	and $0f
	ld hl, $0007
	add hl, bc
	ld [hl], a
	ret


	and $0f
	ld hl, $0008
	add hl, bc
	ld [hl], a
	ret


Call_001_5098:
	and $0f
	ld hl, $000c
	add hl, bc
	ld [hl], a
	ret z

	add a
	add a
	add a
	ld de, $47fb
	add e
	ld e, a
	ld a, $00
	adc d
	ld d, a
	ld hl, $0010
	add hl, bc
	ld [hl], e
	inc hl
	ld [hl], d
	ret


	and $0f
	ld hl, $0013
	add hl, bc
	ld [hl], a
	ret


	ld hl, $000d
	add hl, bc
	ld [hl], a
	ret


	ld hl, $0004
	add hl, bc
	ld a, [hl]
	cp $03
	ld a, d
	jr z, jr_001_50d7

	and $3f
	ld d, a
	ld hl, $0027
	add hl, bc
	ld a, [hl]
	and $c0
	or d

jr_001_50d7:
	ld [hl], a
	ret


	ld hl, $0009
	add hl, bc
	ld [hl], a
	ret


	and $0f
	ld hl, $0014
	add hl, bc
	ld [hl], a
	ret


	and $0f
	ld hl, $0017
	add hl, bc
	ld [hl], a
	ret


	ld hl, $0015
	add hl, bc
	ld [hl], a
	ret


	ld hl, $0026
	add hl, bc
	ld [hl], a
	ret


	and $c0
	ld d, a
	ld hl, $0027
	add hl, bc
	ld a, [hl]
	and $3f
	or d
	ld [hl], a
	ret


Call_001_5108:
	and $0f
	ld hl, $0006
	add hl, bc
	ld [hl], a

Call_001_510f:
	swap a
	ld hl, $4703
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld de, $ff30
	ld bc, $0010
	jp $552b


	ldh [rNR50], a
	ret


	ld hl, $0004
	add hl, bc
	ld e, [hl]
	jp $5411


	ld hl, $001b
	add hl, bc
	ld [hl], a
	ret


	ld hl, $0005
	add hl, bc
	ld [hl], a
	ret


Call_001_513a:
	ld c, $00
	ld hl, $cc7e
	ld de, $cc15

jr_001_5142:
	push de
	push hl
	ld a, [de]
	or a
	jr z, jr_001_515b

	ld a, [hli]
	or a
	jr z, jr_001_515b

	ld b, a
	ld a, [hli]
	dec [hl]
	jr nz, jr_001_515b

	ld [hl], a
	push bc
	ld a, c
	ld [$cd74], a
	call Call_001_5169
	pop bc

jr_001_515b:
	pop hl
	ld de, $002b
	add hl, de
	pop de
	inc de
	inc c
	ld a, c
	cp $06
	jr c, jr_001_5142

	ret


Call_001_5169:
	ld e, l
	ld d, h
	ld hl, $fffa
	add hl, de
	ld c, [hl]
	ld hl, $fffc
	add hl, de
	ld a, [hl]
	or a
	ld a, c
	jr z, jr_001_519d

	ld hl, $0001
	add hl, de
	ld a, [hl]
	cp $10
	jr c, jr_001_5184

	ld a, $0f

jr_001_5184:
	ld c, a
	inc a
	ld [hl], a
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, c
	srl a
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld a, [hl]
	bit 0, c
	jr nz, jr_001_519b

	swap a

jr_001_519b:
	and $0f

jr_001_519d:
	ld c, a
	ld hl, $fff9
	add hl, de
	ld a, [hl]
	and $0f
	add c
	sub $0f
	ld b, $00
	jr c, jr_001_51b4

	ld hl, $fff6
	add hl, de
	ld c, [hl]
	call Call_001_4ea3

jr_001_51b4:
	ld hl, $001a
	add hl, de
	ld a, [hl]
	and $0f
	or b
	push hl
	ld hl, $001a
	add hl, de
	cp [hl]
	ld [hl], a
	pop hl
	ret z

	ld [hl], a
	inc hl
	inc hl
	set 7, [hl]
	ld a, [$cd74]
	ld c, a
	ld b, $00
	ld hl, $cc21
	add hl, bc
	ld [hl], $ff
	ret


	cp $fd
	ei
	rst $30
	ld c, $00
	ld hl, $cc86
	ld de, $cc15

jr_001_51e3:
	push de
	push hl
	ld a, [de]
	or a
	jr z, jr_001_5204

	ld a, [hli]
	or a
	jr z, jr_001_5204

	inc hl
	ld a, [hl]
	or a
	jr z, jr_001_51f5

	dec [hl]
	jr jr_001_5204

jr_001_51f5:
	inc hl
	ld a, [hli]
	dec [hl]
	jr nz, jr_001_5204

	ld [hl], a
	push bc
	ld a, c
	ld [$cd74], a
	call Call_001_5212
	pop bc

jr_001_5204:
	pop hl
	ld de, $002b
	add hl, de
	pop de
	inc de
	inc c
	ld a, c
	cp $06
	jr c, jr_001_51e3

	ret


Call_001_5212:
	inc hl
	ld e, l
	ld d, h
	ld l, e
	ld h, d
	ld c, [hl]
	inc hl
	ld b, [hl]

jr_001_521a:
	ld a, [bc]
	inc bc
	ld [hl], b
	dec hl
	ld [hl], c
	cp $80
	jr nz, jr_001_523a

	push hl
	ld hl, $fffb
	add hl, de
	ld a, [hl]
	add a
	ld hl, $490b
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld c, [hl]
	inc hl
	ld b, [hl]
	pop hl
	inc hl
	jr jr_001_521a

jr_001_523a:
	or a
	ret z

	ld hl, $0010
	add hl, de
	ld b, $00
	cp $80
	jr c, jr_001_5247

	dec b

jr_001_5247:
	add [hl]
	ld [hl], a
	inc hl
	ld a, b
	adc [hl]
	and $07
	ld b, a
	ld a, [hl]
	and $c0
	or b
	ld [hl], a
	dec hl
	push hl
	ld a, [$cd74]
	add a
	ld hl, $526e
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld c, [hl]
	inc hl
	ld b, [hl]
	pop hl
	ld a, [hl]
	ld [bc], a
	inc bc
	inc hl
	ld a, [hl]
	ld [bc], a
	ret


	inc de
	rst $38
	jr @+$01

	dec e
	rst $38
	ld [hli], a
	rst $38

Call_001_5276:
	ld a, $80
	xor a
	ld [$cc37], a
	ld c, $00
	ld hl, $cc27

jr_001_5281:
	ld a, [hl]
	or a
	jr z, jr_001_52be

	ld b, a
	push hl
	ld hl, $cc1a
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld a, [$cc37]
	or [hl]
	ld [$cc37], a
	ld a, b
	ld hl, $cc20
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld a, [hl]
	or a
	jr z, jr_001_52bd

	ld [hl], $00
	push bc
	ld a, b
	call Call_001_4b3f
	push hl
	ld de, $0026
	add hl, de
	ld a, c
	call Call_001_52ce
	pop hl
	ld de, $002a
	add hl, de
	res 7, [hl]
	pop bc

jr_001_52bd:
	pop hl

jr_001_52be:
	ld de, $0004
	add hl, de
	inc c
	ld a, c
	cp $04
	jr c, jr_001_5281

	ld a, [$cc37]
	ldh [rNR51], a
	ret


Call_001_52ce:
	push bc
	push af
	ld e, l
	ld d, h
	inc de
	inc de
	ld c, a
	ld a, [de]
	push af
	ld a, c
	cp $02
	jr nz, jr_001_52e4

	push af
	ldh a, [rNR30]
	and $7f
	ldh [rNR30], a
	pop af

jr_001_52e4:
	push hl
	and $03
	ld c, a
	add a
	add c
	ld hl, $5320
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl
	ld c, [hl]
	ld b, $00
	pop hl
	ld a, c
	cp $04
	jr nz, jr_001_5301

	inc hl

jr_001_5301:
	pop af
	and $f0
	jr nz, jr_001_5306

jr_001_5306:
	call $552b
	ld a, $77
	ldh [rNR50], a
	pop af
	cp $02
	jr nz, jr_001_531e

	ldh a, [rNR52]
	or $04
	ld a, $80
	ldh [rNR30], a
	ld a, $77
	ldh [rNR50], a

jr_001_531e:
	pop bc
	ret


	db $10
	rst $38
	dec b
	ld d, $ff
	inc b
	ld a, [de]
	rst $38
	dec b
	jr nz, @+$01

	inc b

Call_001_532c:
	ld a, [$cc01]
	ld c, a
	ld b, $06
	ld hl, $cc0f
	ld de, $cc15

jr_001_5338:
	ld a, [hli]
	cp c
	jr nz, jr_001_533f

	ld a, [de]
	or a
	ret nz

jr_001_533f:
	inc de
	dec b
	jr nz, jr_001_5338

	ld a, [$cc38]
	or a
	jr z, jr_001_5356

	cp $ff
	jr z, jr_001_5351

	dec a
	ld [$cc38], a

jr_001_5351:
	call Call_001_535e

Call_001_5354:
	or a
	ret


jr_001_5356:
	ld a, [$cc01]
	call Call_001_4be5
	scf
	ret


Call_001_535e:
	ld a, [$cc01]
	ld c, a
	ld b, $06
	ld hl, $cc0f

jr_001_5367:
	ld a, [hl]
	cp c
	jr nz, jr_001_5375

	ld a, $07
	sub b
	push hl
	push bc
	call Call_001_537a
	pop bc
	pop hl

jr_001_5375:
	inc hl
	dec b
	jr nz, jr_001_5367

	ret


Call_001_537a:
	ld [$cc0c], a
	call Call_001_4bac
	ld a, [$cc47]
	ld [$cc49], a
	ld a, [$cc48]
	ld [$cc4a], a
	ld hl, $cc4c
	ld de, $cc4d
	ld bc, $0025
	ld [hl], $00
	call $552b
	ld a, $00
	ld [$cc50], a
	ld a, $02
	ld [$cc54], a
	ld a, $02
	ld [$cc5e], a
	ld a, $28
	ld [$cc5c], a
	ld a, $0f
	ld [$cc4e], a
	ld a, $01
	ld [$cc52], a
	ld [$cc55], a
	ld a, [$cc4b]
	ld e, a
	ld a, $03
	call $5411
	xor a
	call Call_001_5098
	ld a, $08
	ld [$cc6d], a
	ld a, [$cc4b]
	cp $03
	jr nz, jr_001_53dd

	ld a, $80
	ld [$cc6d], a
	xor a
	call Call_001_5108

jr_001_53dd:
	ld a, [$cc4b]
	add a
	ld hl, $5407
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, $00
	ldh [rNR50], a
	ld [hl], $08
	ld a, $77
	ldh [rNR50], a
	ld a, [$cc0c]
	ld hl, $cc14
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld [hl], $ff
	call Call_001_4bc0
	ret


	ld [de], a
	rst $38
	rla
	rst $38
	inc e
	rst $38
	ld hl, $e6ff
	inc bc
	ld d, a
	rrca
	swap a
	or d
	and $11
	ld d, a
	ld a, e

jr_001_541c:
	dec a
	jr z, jr_001_5423

	rlc d
	jr jr_001_541c

jr_001_5423:
	ld a, [$cc0c]
	ld hl, $cc1a
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld [hl], d
	ret


Call_001_5431:
	ld hl, $0004
	add hl, bc
	ld a, [hl]

Call_001_5436:
	add a
	ld hl, $5457
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	push hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, $00
	ldh [rNR50], a
	ld [hl], $08
	ld a, $77
	ldh [rNR50], a
	pop de
	ld hl, $0008
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld [hl], $80
	ret


	ld [de], a
	rst $38
	rla
	rst $38
	inc e
	rst $38
	ld hl, $14ff
	rst $38
	add hl, de
	rst $38
	ld e, $ff
	inc hl
	rst $38
	inc l
	nop
	sbc l
	nop
	rlca

Call_001_546e:
	ld bc, $016b
	ret


	ld bc, $0223
	ld [hl], a
	ld [bc], a
	rst $00
	ld [bc], a
	ld [de], a
	inc bc
	ld e, b
	inc bc
	sbc e
	inc bc
	jp c, $1603

	inc b
	ld c, [hl]
	inc b
	add e
	inc b
	or l
	inc b
	push hl
	inc b
	ld de, $3b05
	dec b
	ld h, e
	dec b
	adc c
	dec b
	xor h
	dec b
	adc $05
	db $ed
	dec b
	dec bc
	ld b, $27
	ld b, $42
	ld b, $5b
	ld b, $72
	ld b, $89
	ld b, $9e
	ld b, $b2
	ld b, $c4
	ld b, $d6
	ld b, $e7
	ld b, $f7
	ld b, $06
	rlca
	inc d
	rlca
	ld hl, $2d07
	rlca
	add hl, sp
	rlca
	ld b, h
	rlca
	ld c, a
	rlca
	ld e, c
	rlca
	ld h, d
	rlca
	ld l, e
	rlca
	ld [hl], e
	rlca
	ld a, e
	rlca
	add e
	rlca
	adc d
	rlca
	sub b
	rlca
	sub a
	rlca
	sbc l
	rlca
	and d
	rlca
	and a
	rlca
	xor h
	rlca
	or c
	rlca
	or [hl]
	rlca
	cp d
	rlca
	cp [hl]
	rlca
	pop bc
	rlca
	push bc
	rlca
	ret z

	rlca
	rlc a
	adc $07
	pop de
	rlca
	call nc, $d607
	rlca
	reti


	rlca
	db $db
	rlca
	db $dd
	rlca
	rst $18
	rlca
	pop hl
	rlca
	ld [c], a
	rlca
	db $e4
	rlca
	and $07
	rst $20
	rlca
	jp hl


	rlca
	ld [$eb07], a
	rlca
	db $ec
	rlca
	db $ed
	rlca
	xor $07
	rst $28
	rlca
	ldh a, [rTAC]
	pop af
	rlca
	ld a, [c]
	rlca
	di
	rlca
	db $f4
	rlca
	ld l, c
	ld d, h
	add c

jr_001_551e:
	ld d, h
	sbc c
	ld d, h
	or c
	ld d, h
	ret


	ld d, h
	pop hl
	ld d, h
	ld sp, hl
	ld d, h
	ld de, $f555

jr_001_552c:
	ld a, [hli]
	ld [de], a
	inc de
	dec bc
	ld a, b
	or c
	jr nz, jr_001_552c

	pop af
	ret


Call_001_5536:
	push af

jr_001_5537:
	ld a, [hld]
	ld [de], a
	dec de
	dec bc
	ld a, b
	or c
	jr nz, jr_001_5537

	pop af
	ret


	ld b, $00
	ld c, [hl]
	ld d, l
	nop
	add l
	ld d, l
	ld bc, $55e2
	ld [bc], a
	nop
	nop
	cp $0a
	push af
	ld [$00fc], sp
	ei
	dec b
	db $f4
	add b
	db $fd
	inc bc
	ldh a, [rSB]
	ld d, b
	inc b
	ld b, h
	inc b
	ld d, b
	inc b
	ld c, e
	ld [$0442], sp
	ld b, a
	inc b
	ld c, e
	inc b
	ld c, c
	jr nz, jr_001_55bd

	inc b
	ld b, h
	inc b
	ld d, b
	inc b
	ld c, e
	ld [$0442], sp
	ld b, a
	inc b
	ld c, e
	inc b
	ld c, c
	jr nz, jr_001_551e

	ldh a, [$f0]
	nop
	ld d, b
	ld b, b
	and b
	rst $38
	rst $38
	cp $0a
	db $f4
	add b
	db $fc
	nop
	ei
	dec b
	db $fd
	inc bc
	ldh a, [rSC]
	add hl, sp
	inc b
	ld b, b
	inc b
	ld b, h
	inc b
	scf
	ld [$043b], sp
	ld b, d
	inc b
	ld c, e
	inc b
	ld c, c

jr_001_55a0:
	inc b
	ei
	ld b, $f0
	inc bc
	ld b, b
	inc b
	ld b, h
	inc b
	add hl, sp
	inc b
	ld b, b
	inc b
	inc [hl]
	inc b
	add hl, sp
	inc b
	jr nc, jr_001_55b7

	ldh a, [rSC]
	ei
	inc b

jr_001_55b7:
	add hl, sp
	inc b
	ld b, b
	inc b
	ld b, h
	inc b

jr_001_55bd:
	scf
	ld [$043b], sp
	ld b, d
	inc b
	ld c, e
	inc b
	ldh a, [$03]
	add hl, sp
	ld [bc], a
	ld b, b
	ld [bc], a
	ld b, l
	ld [bc], a
	ld c, c
	ld [bc], a
	ld b, b
	ld [bc], a
	ld b, l
	ld [bc], a
	ld c, c
	ld [bc], a
	ld d, b
	ld [bc], a
	ld d, l
	db $10
	and c
	call c, $00f0
	ld d, b
	ld b, b
	and b
	rst $38
	rst $38
	cp $07
	ld a, [c]
	ld bc, $0ffc
	ld a, [$f806]
	ld bc, $00fd
	ldh a, [$03]
	db $fd
	inc bc
	dec h
	inc c
	inc h
	inc d
	ld [hli], a
	jr nz, @+$27

	inc c
	inc h
	inc d
	ld [hli], a
	jr nz, jr_001_55a0

	ld sp, hl
	nop
	ld [$04ff], sp
	nop
	ld de, $0056
	or d
	ld d, a
	ld bc, $5931
	ld [bc], a
	ld b, h
	ld e, e
	inc bc
	pop af
	ld [hl], a
	cp $0e
	push af
	ld [$40f4], sp
	ld hl, sp+$01
	db $fc
	inc c
	ld a, [$f006]
	inc bc
	nop
	db $10
	db $fd
	ld [bc], a
	db $fc
	ld [bc], a
	jr nc, jr_001_5639

	ld [hld], a
	db $10
	inc [hl]
	db $10
	inc [hl]
	ld b, $34
	ld b, $34
	inc b
	jr nc, @+$12

	ld [hld], a
	db $10
	ld [hld], a
	db $10

jr_001_5639:
	ld [hld], a
	ld [$0831], sp
	jr nc, jr_001_564f

	ld [hld], a
	db $10
	inc [hl]
	db $10
	inc [hl]
	ld b, $34
	ld b, $34
	inc b
	jr nc, @+$12

	ld [hld], a
	db $10
	ld [hld], a
	db $10

jr_001_564f:
	ld [hld], a
	ld [$0831], sp
	jr nc, jr_001_5665

	ld [hld], a
	db $10
	inc [hl]
	db $10
	inc [hl]
	ld b, $34
	ld b, $34
	inc b
	jr nc, jr_001_5671

	ld [hld], a
	db $10
	db $fc
	inc c

jr_001_5665:
	inc [hl]
	ld [$0632], sp
	ld [hld], a
	ld [de], a
	ld sp, $2b08
	ld b, $2b
	ld [de], a

jr_001_5671:
	sub d
	ld sp, hl
	db $fc
	ld c, $fd
	ld b, $f4
	ld b, b
	dec sp
	ld b, $41
	ld b, $42
	inc b
	ld b, h
	ld b, $42
	ld b, $41
	inc b
	ld b, d
	ld b, $41
	ld b, $3b
	inc b
	ld b, c
	inc b
	dec sp
	inc b
	add hl, sp
	ld [bc], a
	dec sp
	inc b
	add hl, sp
	ld [bc], a
	dec sp
	ld b, $41
	ld b, $42
	inc b
	ld b, c
	ld b, $42
	ld b, $41
	inc b
	ld b, d
	ld b, $41
	ld b, $39
	inc b
	ld b, h
	inc b
	ld b, d
	inc b
	ld b, c
	ld [bc], a
	dec sp
	inc b
	add hl, sp
	ld [bc], a
	jr c, jr_001_56b9

	add hl, sp
	ld b, $3b
	inc b
	jr c, @+$08

jr_001_56b9:
	add hl, sp
	ld b, $3b
	inc b
	ld b, c
	ld b, $3b
	ld b, $39
	inc b
	ld b, c
	inc b
	dec sp
	inc b
	add hl, sp
	ld [bc], a
	dec sp
	inc b
	add hl, sp
	ld [bc], a
	add hl, sp
	ld [bc], a
	jr c, jr_001_56d3

	add hl, sp
	ld [bc], a

jr_001_56d3:
	dec sp
	inc b
	add hl, sp
	inc b
	jr c, jr_001_56db

	add hl, sp
	ld [bc], a

jr_001_56db:
	jr c, jr_001_56df

	add hl, sp
	ld [bc], a

jr_001_56df:
	dec sp
	inc b
	add hl, sp
	inc b
	jr c, jr_001_56e7

	add hl, sp
	ld [bc], a

jr_001_56e7:
	jr c, jr_001_56eb

	add hl, sp
	ld [bc], a

jr_001_56eb:
	dec sp
	inc b
	ld b, c
	inc b
	ld b, d
	ld [bc], a

jr_001_56f1:
	ld b, h
	jr nz, jr_001_56f1

	ld [bc], a
	db $fc
	ld [bc], a
	and b
	ld [bc], a
	and b
	or l
	add hl, sp
	db $10
	dec sp
	db $10
	ld b, c
	db $10
	ld b, d
	ld b, $41
	ld b, $39
	inc b
	add hl, sp
	db $10
	dec sp
	db $10
	ld b, h
	db $10
	jr c, jr_001_5715

	add hl, sp
	ld b, $3b
	inc b
	add hl, sp
	db $10

jr_001_5715:
	dec sp
	db $10
	ld b, c
	db $10
	ld b, h
	ld b, $42
	ld b, $41
	inc b
	add hl, sp
	db $10
	dec sp
	db $10
	ld a, [$490c]

jr_001_5726:
	jr nz, jr_001_5726

	ld c, $fa
	ld b, $f8
	ld bc, $e6a1
	cp $0c
	ld hl, sp+$00
	ld c, c
	ld b, $49
	ld b, $49
	inc b
	ld c, c
	ld b, $49
	ld b, $49
	inc b
	ld c, c
	ld b, $49
	ld b, $49
	inc b
	ldh a, [$03]
	ld c, c
	ld [bc], a
	ldh a, [rSB]
	ld c, c
	ld [bc], a
	ldh a, [$03]
	ld c, c
	ld [bc], a
	ldh a, [rSC]
	ld c, c
	ld [bc], a
	ldh a, [$03]
	nop
	ld [bc], a
	ldh a, [rSB]
	ld c, c
	ld [bc], a
	ldh a, [$03]
	ld c, c
	ld [bc], a
	ldh a, [rSC]
	ld c, c
	ld [bc], a
	ldh a, [$03]
	sub e
	db $e4
	cp $0e
	ld a, [$f806]
	ld bc, $03f0
	cp $0f
	db $fc
	inc c
	db $fd
	dec b
	ld c, c
	ld [bc], a
	ld c, c
	ld [bc], a
	nop
	ld [bc], a
	ld c, c
	ld [bc], a
	ld c, c
	ld [bc], a
	nop
	ld [bc], a
	ld c, c
	ld [bc], a
	ld c, c
	ld [bc], a
	nop
	ld [bc], a
	ld c, c
	ld [bc], a
	ld c, c
	ld [bc], a
	nop
	ld [bc], a
	ld b, a
	ld [bc], a
	ld b, a
	ld [bc], a
	ld b, a
	ld [bc], a
	nop
	ld [bc], a
	ld c, c
	inc b
	nop
	ld [bc], a
	ld c, c
	inc b
	nop
	ld [bc], a
	ld c, c
	inc b
	cp $06
	ld c, c
	inc b
	cp $04
	ld c, c
	inc b
	cp $02
	ld c, c
	inc b
	cp $01
	ld c, c
	inc b
	rst $38
	db $f4
	ld b, b
	ld hl, sp+$01
	db $fc
	inc c
	ld a, [$f006]
	inc bc
	nop
	db $10
	db $fd
	ld [bc], a
	db $fc
	ld [bc], a
	cp $0d
	add hl, sp
	db $10
	dec sp
	db $10
	ld b, c
	db $10
	ld b, h
	ld b, $42
	ld b, $41
	inc b
	add hl, sp
	db $10
	dec sp
	db $10
	add hl, sp
	db $10
	add hl, sp
	db $10
	add hl, sp
	db $10
	dec sp
	db $10
	ld b, c
	db $10
	dec sp

Jump_001_57df:
	ld b, $41
	ld b, $42
	inc b
	add hl, sp
	db $10
	dec sp
	db $10
	add hl, sp
	db $10
	add hl, sp
	db $10
	add hl, sp
	db $10
	dec sp
	db $10
	ld b, c
	db $10
	ld b, d
	ld b, $41
	ld b, $39
	inc b
	add hl, sp
	db $10
	dec sp
	db $10
	db $fc
	inc c
	dec sp
	ld [$0639], sp
	add hl, sp
	ld [de], a
	add hl, sp
	ld [$0638], sp
	jr c, jr_001_581c

	sub d
	ld sp, hl
	cp $0b
	db $fc
	dec c
	ld a, [$fd0f]
	ld [bc], a
	db $f4
	add b
	inc [hl]
	inc c
	inc [hl]
	inc b
	ld [hld], a
	inc c

jr_001_581c:
	ld [hld], a
	inc b
	ld sp, $310c
	inc b
	add hl, hl
	inc b
	dec hl
	inc b
	ld sp, $2b04
	ld [bc], a
	add hl, hl
	ld [bc], a
	inc [hl]
	inc c
	inc [hl]
	inc b
	ld [hld], a
	inc c
	ld [hld], a
	inc b
	ld sp, $310c
	inc b
	dec hl
	inc b
	add hl, hl
	inc b
	ld h, $04
	inc h
	inc b
	ld [hld], a
	ld b, $32
	ld b, $32
	inc b
	ld sp, $3106
	ld b, $31
	inc b
	dec hl
	ld b, $2b
	ld b, $2b
	inc b
	jr z, jr_001_585a

	add hl, hl
	ld b, $2b
	inc b
	ld [hld], a
	ld [bc], a

jr_001_585a:
	ld [hld], a
	ld [bc], a
	ld [hld], a
	ld [bc], a
	ld [hld], a
	inc b
	jr z, jr_001_5864

	add hl, hl
	ld [bc], a

jr_001_5864:
	dec hl
	ld [bc], a
	ld sp, $3102
	ld [bc], a
	ld sp, $3102
	inc b
	jr z, jr_001_5872

	add hl, hl
	ld [bc], a

jr_001_5872:
	dec hl
	ld [bc], a
	dec hl
	ld [bc], a
	dec hl
	ld [bc], a
	dec hl
	ld [bc], a
	dec hl
	inc b
	jr z, jr_001_5880

	add hl, hl
	ld [bc], a

jr_001_5880:
	dec hl
	ld [bc], a
	inc [hl]
	ld [bc], a
	inc [hl]
	ld [bc], a
	inc [hl]
	ld [bc], a
	inc [hl]
	inc b
	inc [hl]
	ld [bc], a
	inc [hl]
	ld [bc], a
	inc [hl]
	ld [bc], a
	cp $0b
	inc [hl]
	inc b
	ld [hld], a
	inc b
	ld sp, $2904
	ld [bc], a
	dec hl
	ld [bc], a
	cp $0d
	db $fc
	ld [bc], a
	ld a, [$f406]
	ld b, b
	jr nc, jr_001_58b6

	ld [hld], a
	db $10
	inc [hl]
	db $10
	inc [hl]
	ld b, $34
	inc b
	inc [hl]
	ld b, $30
	db $10
	ld [hld], a
	db $10
	inc [hl]
	db $10

jr_001_58b6:
	inc [hl]
	ld b, $34
	inc b
	inc [hl]
	ld b, $30
	db $10
	ld [hld], a
	db $10
	inc [hl]
	db $10
	inc [hl]
	ld b, $34
	inc b
	inc [hl]
	ld b, $30
	db $10
	ld [hld], a
	db $10
	ld [hld], a
	db $10
	ld [hld], a
	ld [$0831], sp
	ldh a, [$03]
	and c
	sub h
	jr nc, jr_001_58e8

	ld [hld], a
	db $10
	inc [hl]
	db $10
	inc [hl]
	ld b, $34
	inc b
	inc [hl]
	ld b, $30
	db $10
	ld [hld], a
	db $10
	ld [hld], a
	db $10

jr_001_58e8:
	ld [hld], a
	ld [$0831], sp
	sub c
	push af
	ldh a, [$03]
	cp $0c
	db $fc
	inc c
	db $fd
	dec b
	add hl, sp
	ld [bc], a
	add hl, sp
	ld [bc], a
	nop
	ld [bc], a
	add hl, sp
	ld [bc], a
	add hl, sp
	ld [bc], a
	nop
	ld [bc], a
	add hl, sp
	ld [bc], a
	add hl, sp
	ld [bc], a
	nop
	ld [bc], a
	add hl, sp
	ld [bc], a
	add hl, sp
	ld [bc], a
	nop
	ld [bc], a
	scf
	ld [bc], a
	scf
	ld [bc], a
	scf
	ld [bc], a
	nop
	ld [bc], a
	add hl, sp
	ld [bc], a
	nop
	inc b
	add hl, sp
	ld [bc], a
	nop
	inc b
	add hl, sp
	inc b
	cp $06
	add hl, sp
	inc b
	cp $04
	add hl, sp
	inc b
	cp $02
	add hl, sp
	inc b
	cp $01
	add hl, sp
	inc b
	rst $38
	cp $0f
	ld a, [c]
	ld bc, $0cfc
	ld a, [$f805]
	ld bc, $01fd
	ldh a, [$03]
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	sub e
	ld hl, sp-$6c
	rst $30
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	inc d
	ld b, $24
	ld a, [bc]
	nop
	inc b
	inc h
	ld b, $24
	ld b, $14
	stop
	inc b
	inc h
	ld [$0424], sp
	sub d
	rst $30
	inc h
	ld [bc], a
	inc d
	ld [bc], a
	inc d
	ld [bc], a
	ld [hli], a
	ld [bc], a
	inc d
	ld [bc], a
	inc d
	ld [bc], a
	inc h
	ld [bc], a
	inc d
	ld [bc], a
	ld [hli], a
	ld [bc], a
	ld [de], a
	ld [bc], a
	ld [de], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	ld [de], a
	ld [bc], a
	ld [de], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	ld [de], a
	ld [bc], a
	ld hl, $1102
	ld [bc], a
	ld de, $2102
	ld [bc], a
	ld de, $1102
	ld [bc], a
	ld hl, $1102
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	inc h
	ld [bc], a
	inc d
	ld [bc], a
	inc d
	ld [bc], a
	ld [hli], a
	ld [bc], a
	inc d
	ld [bc], a
	inc d
	ld [bc], a
	inc h
	ld [bc], a
	inc d
	ld [bc], a
	ld [hli], a
	ld [bc], a
	ld [de], a
	ld [bc], a
	ld [de], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	ld [de], a
	ld [bc], a
	ld [de], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	ld [de], a
	ld [bc], a
	ld hl, $1102
	ld [bc], a
	ld de, $2102
	ld [bc], a
	ld de, $1102
	ld [bc], a
	ld hl, $1102
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	and b
	ld [bc], a
	and b
	or l
	ld [de], a
	ld b, $22
	ld b, $19
	inc b
	ld de, $2106
	ld b, $19
	inc b
	dec de
	ld b, $1b
	ld b, $16
	inc b
	inc d
	inc b
	dec de
	inc b
	ld de, $1204
	inc b
	ld [hli], a
	ld [bc], a
	ld [de], a
	ld [bc], a
	add hl, de
	ld [bc], a
	ld [hli], a
	inc b
	ld [de], a
	ld [bc], a
	add hl, de
	ld [bc], a
	ld [hli], a
	ld [bc], a
	ld hl, $1102
	ld [bc], a
	add hl, de
	ld [bc], a
	ld hl, $1104
	ld [bc], a
	add hl, de
	ld [bc], a
	ld hl, $1b02
	ld [bc], a
	ld d, $02
	dec de
	ld [bc], a
	dec de
	inc b
	ld d, $02
	add hl, de
	ld [bc], a
	dec de
	ld [bc], a
	inc h
	ld [bc], a
	inc d
	ld [bc], a
	inc d
	ld [bc], a
	ld [hli], a
	ld [bc], a
	ld [de], a
	ld [bc], a
	ld [de], a
	ld [bc], a
	jr nz, jr_001_5a6f

	db $10
	ld [bc], a

jr_001_5a6f:
	db $10
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	jr nz, jr_001_5a7b

	db $10
	ld [bc], a

jr_001_5a7b:
	ld [hli], a
	ld [bc], a
	ld [de], a
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	sub e
	ldh [$a1], a
	xor h
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	sub e
	ldh [rNR24], a
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	nop
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [bc], a
	nop
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [bc], a
	nop
	ld [bc], a
	add hl, hl
	inc b
	cp $06
	add hl, hl
	inc b
	cp $04
	add hl, hl
	inc b
	cp $02
	add hl, hl
	inc b
	cp $01
	add hl, hl
	inc b

jr_001_5b43:
	rst $38
	cp $08
	ld hl, sp+$01
	ldh a, [$03]
	nop
	stop
	ld b, b
	sub h
	rst $38
	nop
	jr nz, jr_001_5b43

	ld [bc], a
	ei
	inc b
	ld sp, hl
	db $10
	ld b, $08
	ldh a, [rSB]
	ld b, $06
	ldh a, [$03]
	ld b, $0e
	cp $0a
	ldh a, [$03]
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	inc b
	cp $08
	sub l
	ld a, [c]
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	sub d
	db $ec
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	sub c
	db $db
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	sub d
	ld a, [c]
	and b
	ld [bc], a
	and b
	cp e
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ldh a, [$03]
	ld [bc], a
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	sub e
	xor $f0
	ld bc, $02fb
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ldh a, [rSC]
	ld [bc], a
	ld [bc], a
	ldh a, [rSB]
	ld [bc], a
	ld [bc], a
	ldh a, [rSC]
	ld [bc], a
	ld [bc], a
	ldh a, [rSB]
	ld [bc], a
	ld [bc], a
	ldh a, [rSC]
	ld [bc], a
	ld [bc], a
	ldh a, [rSB]
	ld [bc], a
	ld [bc], a
	ldh a, [rSC]
	ld [bc], a
	ld [bc], a
	ldh a, [$03]
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ldh a, [rSC]
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ldh a, [rSB]
	ld [bc], a
	ld [bc], a
	ldh a, [$03]
	sub d
	db $ed
	and b
	ld [bc], a
	and b
	cp c
	ldh a, [$03]
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ldh a, [rSC]
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ldh a, [rSB]
	ld [bc], a
	ld [bc], a
	ldh a, [rSC]
	ld [bc], a
	ld [bc], a
	ldh a, [rSB]
	ld [bc], a
	ld [bc], a
	ldh a, [rSC]
	ld [bc], a
	ld [bc], a
	ldh a, [$03]
	sub e
	rst $10
	and c
	db $eb
	cp $0a
	cp $0d
	ldh a, [rSC]
	ei
	inc bc
	ld sp, hl
	jr nc, jr_001_5ca5

	ld [bc], a
	ldh a, [rSB]
	inc b

jr_001_5ca5:
	ld [bc], a
	ldh a, [$03]
	cp $09
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	cp $0d
	ldh a, [rSC]
	ei
	inc bc
	ld sp, hl
	jr nc, jr_001_5cbd

	ld [bc], a
	ldh a, [rSB]
	inc b

jr_001_5cbd:
	ld [bc], a
	ldh a, [$03]
	inc b
	ld [bc], a
	cp $0a
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	sub d
	push hl
	cp $0d
	ldh a, [rSC]
	ei
	inc bc
	ld sp, hl
	jr nc, jr_001_5cdb

	ld [bc], a
	ldh a, [rSB]
	inc b

jr_001_5cdb:
	ld [bc], a
	cp $09
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	cp $0d
	ldh a, [rSB]
	ei
	inc bc
	ld sp, hl
	jr nc, jr_001_5cf1

	ld [bc], a
	ldh a, [rSC]
	inc b

jr_001_5cf1:
	ld [bc], a
	cp $0a
	ldh a, [rSB]
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ldh a, [rSC]
	ld [bc], a
	ld [bc], a
	ldh a, [rSB]
	ld [bc], a
	ld [bc], a
	ldh a, [$03]
	sub e
	ret z

	ldh a, [$03]
	cp $09
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	sub e
	ei
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	rst $38
	inc bc
	ld [bc], a
	ld c, [hl]
	ld e, l
	inc b
	ld l, l
	ld e, l
	dec b
	nop
	nop
	nop
	nop
	nop
	cp $0f
	push af
	ld [$40f4], sp
	db $fc
	ld c, $fa
	inc bc
	ld hl, sp+$01
	db $fd
	ld bc, $01f0
	ld b, h
	ld [bc], a
	ld b, b
	ld [bc], a
	ld b, a
	ld [bc], a
	ld c, e
	ld [bc], a
	ld d, b
	ld [bc], a
	ld d, d
	ld [bc], a
	ld d, a
	inc c
	rst $38
	cp $0f
	db $f4
	ld b, b
	db $fc
	ld c, $fa
	inc bc
	ld hl, sp+$01
	db $fd
	ld bc, $02f0
	ld b, b
	ld [bc], a
	scf
	ld [bc], a
	ld b, h
	ld [bc], a
	ld b, a
	ld [bc], a
	ld b, a
	ld [bc], a
	ld c, e
	ld [bc], a
	ld d, b
	inc c
	rst $38
	ld [bc], a
	ld [bc], a
	sub a
	ld e, l
	nop
	cp d
	ld e, l
	ld bc, $0000
	ld [bc], a
	nop
	nop
	cp $0f
	push af
	ld [$80f4], sp
	db $fc
	inc c
	ld a, [$f806]
	ld bc, $03fd
	ldh a, [rSB]
	jr nc, jr_001_5dab

	inc [hl]
	ld [bc], a

jr_001_5dab:
	scf
	ld [bc], a
	scf
	ld [bc], a
	ld b, b
	ld [$0800], sp
	db $fd
	ld bc, $0800
	ldh a, [rP1]
	rst $38
	cp $0f
	db $f4
	add b
	db $fc
	inc c
	ld a, [$f806]
	ld bc, $03fd
	ldh a, [rSC]
	scf
	ld [bc], a
	ld b, b
	ld [bc], a
	ld b, h
	ld [bc], a
	ld b, h
	ld [bc], a
	ld b, a
	ld b, $00
	ld [$01fd], sp
	nop
	ld [$00f0], sp

jr_001_5dda:
	rst $38
	inc bc
	nop
	add sp, $5d
	nop
	inc hl
	ld e, [hl]
	ld bc, $5e3c
	ld [bc], a
	nop
	nop
	cp $06
	db $f4
	nop
	db $fc
	rrca
	ld a, [$f702]
	ld bc, $03ef
	or $08
	ld hl, sp+$01
	db $fd
	ld [bc], a
	ldh a, [rSB]
	cp $0a
	ld d, b
	ld bc, $06fe
	ld d, b
	ld bc, $02f0
	cp $03
	ld d, b
	ld bc, $01fe
	ld d, b
	ld bc, $0afe
	ld d, b
	ld bc, $06fe
	ld d, b
	ld bc, $01f0
	cp $03
	ld d, b
	ld bc, $01fe
	ld d, b
	ld bc, $eda0
	rst $38
	cp $08
	db $f4
	nop
	db $fc
	rrca
	ld a, [$f802]
	ld bc, $02fd
	ldh a, [$03]
	ld [hld], a
	jr nz, jr_001_5e67

	jr nz, jr_001_5e6a

	jr nz, @+$37

	jr nz, jr_001_5dda

	db $fc
	rst $38
	cp $0f
	ld a, [c]
	ld bc, $0cfc
	ld a, [$f804]
	ld bc, $01fd
	ldh a, [$03]
	jr nz, jr_001_5e54

	jr nz, jr_001_5e56

	jr nz, jr_001_5e58

	jr nz, jr_001_5e54

	jr nz, jr_001_5e56

jr_001_5e54:
	jr nz, jr_001_5e58

jr_001_5e56:
	nop
	ld [bc], a

jr_001_5e58:
	and b
	ld sp, hl
	rst $38
	ld [bc], a
	ld [bc], a
	ld l, b
	ld e, [hl]
	dec b
	sub l
	ld e, [hl]
	inc b
	nop
	nop
	nop
	nop

jr_001_5e67:
	nop
	cp $0a

jr_001_5e6a:
	push af
	ld [$00f4], sp
	db $fc
	dec bc
	ld a, [$f806]
	ld bc, $00fd
	ldh a, [$03]
	ld b, h
	ld [bc], a
	ldh a, [rSC]
	ld b, d
	ld [bc], a
	ldh a, [rSB]
	ld b, b
	ld [bc], a
	ldh a, [$03]
	ld b, d
	ld [bc], a
	ldh a, [rSB]
	ld b, h
	ld [bc], a
	ldh a, [rSC]
	ld c, c
	ld [bc], a
	ldh a, [$03]
	ld hl, sp+$00
	ld b, a
	inc c
	rst $38
	cp $0a
	db $f4
	nop
	db $fc
	dec bc
	ld a, [$f806]
	ld bc, $03f0
	ld b, a
	ld [bc], a
	ld b, l
	ld [bc], a
	ld b, h
	ld [bc], a
	ld b, l
	ld [bc], a
	ld b, a
	ld [bc], a
	ld b, d
	ld [bc], a
	ld b, b
	inc c
	rst $38
	inc bc
	nop
	nop
	nop
	ld [bc], a
	cp l
	ld e, [hl]
	nop
	ld [bc], a
	ld e, a
	ld bc, $0000
	cp $0c
	ld hl, sp+$01
	db $fc
	ld bc, $03fa
	db $f4
	ld b, b
	db $fd
	ld [bc], a
	ldh a, [$03]
	ld h, $04
	ld h, $04
	daa
	inc b
	daa
	ld [bc], a
	daa
	ld [bc], a
	add hl, hl
	inc b
	add hl, hl
	ld [bc], a
	add hl, hl
	ld [bc], a
	ld a, [hli]
	ld [bc], a
	jr nc, jr_001_5ee1

	inc [hl]
	ld [bc], a

jr_001_5ee1:
	ld [hl], $02
	sub e
	db $f4
	inc h
	inc b
	inc h
	inc b
	ld h, $04
	ld h, $02
	ld h, $02
	daa
	inc b
	daa
	ld [bc], a
	daa
	ld [bc], a
	add hl, hl
	ld [bc], a
	ld a, [hli]
	ld [bc], a
	ld [hld], a
	ld [bc], a
	inc [hl]
	ld [bc], a
	sub e
	db $f4
	and b
	and $ff
	cp $0f
	ld hl, sp+$01
	db $fc
	inc c
	ld a, [$f204]
	ld bc, $02fd
	ldh a, [$03]
	add hl, de
	ld [$0819], sp
	nop
	db $10
	sub e
	db $fd
	rla
	ld [$0817], sp
	nop
	db $10
	sub e
	db $fd
	and b
	ld hl, sp-$01
	inc bc
	nop
	nop
	nop
	nop
	ld sp, $015f
	adc [hl]
	ld e, a
	ld [bc], a
	rst $20
	ld e, a
	inc bc
	cp $0a
	push af
	ld [$00f4], sp
	db $fc
	ld bc, $03fa
	pop af
	ld [hl], a
	ld hl, sp+$01
	db $fd
	ld bc, $03f0
	db $ed
	nop
	inc h
	inc b
	inc h
	inc b
	daa
	inc b
	inc h
	inc b
	inc h
	inc b
	add hl, hl
	inc b
	inc h
	inc b
	inc h
	inc b
	ld a, [hli]
	inc b
	inc h
	inc b
	inc h
	inc b
	add hl, hl
	inc b
	inc h
	inc b
	inc h
	inc b
	daa
	inc b
	inc h
	inc b
	sub c
	rst $28
	db $ed
	dec b
	inc h
	inc b
	inc h
	inc b
	daa
	inc b
	inc h
	inc b
	inc h
	inc b
	add hl, hl
	inc b
	inc h
	inc b
	inc h
	inc b
	ld a, [hli]
	inc b
	inc h
	inc b
	inc h
	inc b
	add hl, hl
	inc b
	inc h
	inc b
	inc h
	inc b
	daa
	inc b
	inc h
	inc b
	sub c
	ldh a, [$a0]
	call c, $feff
	dec bc
	db $fc
	rrca
	ld a, [$f203]
	ld bc, $01f8
	db $fd
	ld bc, $03f0
	db $ed
	nop
	inc d
	inc b
	inc d
	inc b
	rla
	inc b
	inc d
	inc b
	inc d
	inc b
	add hl, de
	inc b
	inc d
	inc b
	inc d
	inc b
	ld a, [de]
	inc b
	inc d
	inc b
	inc d
	inc b
	add hl, de
	inc b
	inc d
	inc b
	inc d
	inc b
	rla
	inc b
	inc d
	inc b
	sub c
	rst $28
	db $ed
	dec b
	inc d
	inc b
	inc d
	inc b
	rla
	inc b
	inc d
	inc b
	inc d
	inc b
	add hl, de
	inc b
	inc d
	inc b
	inc d
	inc b
	ld a, [de]
	inc b
	inc d
	inc b
	inc d
	inc b
	add hl, de
	inc b
	inc d
	inc b
	inc d
	inc b
	rla
	inc b
	inc d
	inc b
	sub c
	ldh a, [$a0]
	call c, $feff
	ld [$01f8], sp
	ldh a, [$03]
	cp $07
	ei
	ld bc, $38f9
	inc bc
	inc b
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	sub [hl]
	ld a, [$0afe]
	ldh a, [rSC]
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	inc b
	ldh a, [rSB]
	ld [bc], a
	inc b
	ldh a, [$03]
	and b
	pop af
	rst $38
	inc bc
	inc bc
	inc e
	ld h, b
	nop
	ld b, a
	ld h, b
	ld bc, $6070
	ld [bc], a
	db $d3
	ld h, b
	dec b
	cp $08
	push af
	nop
	db $f4
	ld b, b
	db $fc
	ld c, $fa
	ld b, $fd
	nop
	ld hl, sp+$01
	ldh a, [$03]
	ld b, a
	db $10
	ld b, l
	db $10
	ld b, h
	db $10
	ld b, d
	ld [$0444], sp
	ld b, l
	inc b
	ld b, a
	inc b
	nop
	ld [bc], a
	ld b, a
	inc b
	nop
	ld [bc], a
	ld b, a
	db $10
	db $fd
	inc bc
	nop
	ld [$feff], sp
	ld [$03f0], sp
	db $f4
	ld b, b
	db $fc
	ld c, $fa
	ld b, $fd
	nop
	ld hl, sp+$01
	ld b, d
	db $10
	ld b, b
	db $10
	dec sp
	db $10
	add hl, sp
	ld [$043b], sp
	ld b, b
	inc b
	ld b, d
	inc b
	nop
	ld [bc], a
	ld b, d
	inc b
	nop
	ld [bc], a
	ld b, d
	db $10
	db $fd
	inc bc
	nop
	ld [$feff], sp
	rrca
	ldh a, [$03]
	db $fc
	dec c
	ld a, [c]
	ld bc, $04fa
	ld hl, sp+$01
	ldh a, [rSB]
	rla
	ld [bc], a
	ldh a, [rSC]
	rla
	ld [bc], a
	sub e
	db $fc
	ldh a, [rSB]
	dec d
	ld [bc], a
	ldh a, [rSC]
	dec d
	ld [bc], a
	sub e
	db $fc
	ldh a, [rSB]
	inc d
	ld [bc], a
	ldh a, [rSC]
	inc d
	ld [bc], a
	sub e
	db $fc
	ldh a, [rSB]
	ld [de], a
	ld [bc], a
	ldh a, [rSC]
	ld [de], a
	ld [bc], a
	sub c
	db $fc
	ldh a, [rSB]
	inc d
	ld [bc], a
	ldh a, [rSC]
	inc d
	ld [bc], a
	ldh a, [rSB]
	dec d
	ld [bc], a
	ldh a, [rSC]
	dec d
	ld [bc], a
	ldh a, [rSB]
	rla
	ld [bc], a
	ldh a, [rSC]
	nop
	ld [bc], a
	ldh a, [rSB]
	nop
	ld [bc], a
	ldh a, [rSC]
	rla
	ld [bc], a
	ldh a, [rSB]
	nop
	ld [bc], a
	ldh a, [rSC]
	nop
	ld [bc], a
	rla
	db $10
	db $fd
	inc bc
	nop
	ld [$f8ff], sp
	ld bc, $08fe
	db $fd
	nop
	ldh a, [$03]
	db $fc
	nop
	cp $06
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ldh a, [rSB]
	cp $09
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	cp $06
	ldh a, [$03]
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	ldh a, [rSC]
	cp $09
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	cp $06
	ldh a, [$03]
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $09
	ldh a, [rSB]
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ldh a, [$03]
	cp $06
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $09
	ldh a, [rSC]
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ldh a, [$03]
	cp $06
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $09
	ldh a, [rSB]
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ldh a, [$03]
	cp $06
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ldh a, [rSC]
	cp $09
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ldh a, [$03]
	cp $06
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ldh a, [rSB]
	cp $09
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	cp $06
	ldh a, [$03]
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $09
	ldh a, [rSC]
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	cp $06
	ldh a, [$03]
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $09
	ldh a, [rSB]
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ldh a, [$03]
	cp $06
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ldh a, [rSC]
	cp $09
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ldh a, [$03]
	cp $06
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $09
	ldh a, [rSB]
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ldh a, [$03]
	cp $06
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $09
	ldh a, [rSC]
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	ldh a, [$03]
	ld [bc], a
	ld [bc], a
	cp $0c
	ldh a, [rSB]
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	ldh a, [rSC]
	inc bc
	ld [bc], a
	cp $09
	ldh a, [$03]
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	ld [bc], a
	cp $0c
	ldh a, [rSB]
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	ldh a, [rSC]
	inc bc
	ld [bc], a
	cp $0c
	ldh a, [$03]
	ei
	ld [bc], a
	ld sp, hl
	ld d, b
	ld [bc], a
	inc b
	rst $38
	ld [bc], a
	nop
	nop
	nop
	inc bc
	ld e, $62
	nop
	sub l
	ld h, d
	ld bc, $636c
	ld [bc], a
	ldh a, [$03]
	cp $09
	db $f4
	add b
	ld hl, sp+$01
	db $fc
	ld c, $fa
	dec b
	db $fd
	dec b
	db $fd
	nop
	nop
	ld b, b
	db $fd
	dec b
	add hl, sp
	inc b
	ld b, b
	inc b
	ld b, h
	inc b
	ld b, a
	inc h
	ld b, [hl]
	ld b, $47
	ld b, $46
	inc b
	ld b, h
	inc c
	ld b, b
	db $10
	scf
	inc h
	add hl, sp
	inc b
	ld b, b
	inc b
	ld b, h
	inc b
	ld b, a
	inc h
	ld b, [hl]
	ld b, $47
	ld b, $49
	inc b
	ld c, c
	inc c
	ld b, a
	inc c
	ld b, [hl]
	inc b
	ld b, d
	inc h
	add hl, sp
	inc c
	ld b, b
	inc c
	ld b, l
	inc c
	add hl, sp
	inc b
	ld b, b
	inc b
	ld b, l
	inc b
	add hl, sp
	inc b
	ld b, b
	ld [$0445], sp
	ld b, a
	inc c
	ld b, d
	inc c
	dec sp
	inc b
	scf
	inc h
	ld d, b
	inc b
	ld d, d
	inc b
	nop
	inc b
	ld b, a
	inc b
	ld c, c
	inc b
	nop
	inc b
	ld b, d
	inc b
	ld b, h
	inc b
	nop
	inc b
	ld b, b
	inc b
	ld b, d
	inc b
	nop
	inc b
	scf
	ld [$0838], sp
	and b
	call $f0ff
	inc bc
	ld a, [c]
	ld bc, $0ffe
	ld hl, sp+$01
	db $fc
	dec c
	ld a, [$fd05]
	dec b
	jr nc, jr_001_62a9

	ld [hld], a
	inc b
	nop
	inc b

jr_001_62a9:
	daa
	inc b
	add hl, hl
	inc b
	nop
	inc b
	ld [hli], a
	inc b
	inc h
	inc b
	nop
	inc b
	jr nz, jr_001_62bb

	ld [hli], a
	inc b
	nop
	inc b

jr_001_62bb:
	rla
	ld [$0818], sp
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	sub c
	ld hl, sp+$19
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	rla
	inc d
	rla
	ld [$0818], sp
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	sub c
	ld hl, sp+$19
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	add hl, de
	inc b
	rla
	inc d
	rla
	inc b
	dec de
	ld [$0415], sp
	dec d
	inc b
	dec d
	inc b
	dec d
	inc b
	dec d
	inc b
	dec d
	inc b
	dec d
	inc b
	dec d
	inc b
	dec d
	inc b
	dec d
	inc b
	dec d
	inc b
	dec d
	inc b
	dec d
	inc b
	inc d
	inc b
	dec d
	inc b
	rla
	inc b
	rla
	inc b
	rla
	inc b
	rla
	inc b
	rla
	inc b
	rla
	inc b
	rla
	inc b
	rla
	inc b
	rla
	inc b
	rla
	inc b
	rla
	inc b
	rla
	inc b
	rla
	inc b
	rla
	inc b
	rla
	ld [$0818], sp
	jr nc, jr_001_634f

	ld [hld], a
	inc b
	nop
	inc b

jr_001_634f:
	daa
	inc b
	add hl, hl
	inc b
	nop
	inc b
	ld [hli], a
	inc b
	inc h
	inc b
	nop
	inc b
	jr nz, jr_001_6361

	ld [hli], a
	inc b
	nop
	inc b

jr_001_6361:
	rla
	ld [$0818], sp
	and b
	ld [bc], a
	and b
	sbc [hl]
	and b
	rst $38
	rst $38
	ldh a, [$03]
	cp $07
	ld hl, sp+$01
	db $fd
	nop
	db $fc
	nop
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_637d

	inc b
	ld [bc], a

jr_001_637d:
	inc b
	ei
	ld bc, $38f9
	inc bc
	inc b
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_638b

	inc b
	ld [bc], a

jr_001_638b:
	inc b
	ei
	ld bc, $38f9
	inc bc
	inc b
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6399

	inc b
	ld [bc], a

jr_001_6399:
	inc b
	ei
	ld bc, $38f9
	inc bc
	inc b
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_63a7

	inc b
	ld [bc], a

jr_001_63a7:
	inc b
	ei
	ld bc, $38f9
	inc bc
	inc b
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_63b5

	inc b
	ei

jr_001_63b5:
	ld bc, $38f9
	inc bc
	inc b
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_63c1

	inc b
	ei

jr_001_63c1:
	ld bc, $38f9
	inc bc
	inc b
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_63d5

	inc b
	ei

jr_001_63d5:
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_63ed

	inc b
	ei

jr_001_63ed:
	ld bc, $38f9
	inc bc
	ld [bc], a
	and b
	ld [bc], a
	and b
	pop bc
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6405

	ld [bc], a
	ei

jr_001_6405:
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6419

	ld [bc], a
	ei

jr_001_6419:
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6429

	ld [bc], a
	ei

jr_001_6429:
	ld bc, $38f9
	inc bc
	ld [bc], a
	sub e
	call z, $02fb
	ld sp, hl
	jr nc, jr_001_6437

	ld [bc], a
	ei

jr_001_6437:
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6445

	ld [bc], a
	ei

jr_001_6445:
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6453

	ld [bc], a
	ei

jr_001_6453:
	ld bc, $38f9
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_645f

	ld [bc], a
	ei

jr_001_645f:
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_646d

	ld [bc], a
	ei

jr_001_646d:
	ld bc, $38f9
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6479

	ld [bc], a
	ei

jr_001_6479:
	ld bc, $38f9
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6485

	ld [bc], a
	and b

jr_001_6485:
	ld [bc], a
	and b
	or a
	ld [bc], a
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6499

	ld [bc], a
	ei

jr_001_6499:
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_64a7

	ld [bc], a
	ld [bc], a

jr_001_64a7:
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_64b7

	ld [bc], a
	ei

jr_001_64b7:
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_64c5

	ld [bc], a
	ei

jr_001_64c5:
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	sub c
	or d
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_64d5

	inc b
	ld [bc], a

jr_001_64d5:
	inc b
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_64e5

	inc b
	ld [bc], a

jr_001_64e5:
	inc b
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_64f5

	inc b
	ld [bc], a

jr_001_64f5:
	inc b
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6505

	inc b
	ld [bc], a

jr_001_6505:
	inc b
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6515

	inc b
	nop

jr_001_6515:
	inc b
	ld [bc], a
	inc b
	nop
	inc b
	and b
	or [hl]
	rst $38
	inc b
	nop
	nop
	nop
	inc bc
	dec hl
	ld h, l
	nop
	ret nz

	ld h, l
	ld bc, $6703
	ld [bc], a
	ldh a, [$03]
	cp $0a
	db $f4
	add b
	ld hl, sp+$01
	db $fc
	ld c, $fa
	ld b, $fd
	nop
	db $ed
	ld [bc], a
	nop
	ld b, b
	nop
	ld b, b
	nop
	jr nz, jr_001_6542

jr_001_6542:
	inc c
	db $fd
	dec b
	add hl, sp
	ld [bc], a
	ld b, b
	ld [bc], a
	ld b, h
	inc b
	ld b, d
	inc b
	dec sp
	ld b, $37
	ld [bc], a
	inc [hl]
	inc c
	jr nc, jr_001_6557

	inc [hl]
	ld [bc], a

jr_001_6557:
	scf
	inc b
	dec [hl]
	inc b
	inc [hl]
	inc b
	jr nc, jr_001_6563

	ld [hld], a
	inc c
	ld b, b
	inc b

jr_001_6563:
	dec sp
	inc c
	scf
	inc b
	add hl, sp
	inc c
	add hl, sp
	ld [bc], a
	ld b, b
	ld [bc], a
	ld b, h
	inc b
	ld b, d
	inc b
	dec sp
	ld b, $37
	ld [bc], a
	inc [hl]
	inc c
	jr nc, jr_001_657b

	inc [hl]
	ld [bc], a

jr_001_657b:
	scf
	inc b
	dec [hl]
	inc b
	inc [hl]
	ld b, $30
	ld [bc], a
	ld [hld], a
	ld b, $34
	ld [bc], a
	add hl, hl
	ld [bc], a
	dec hl
	ld [bc], a
	jr nc, jr_001_658f

	ld [hld], a
	ld [bc], a

jr_001_658f:
	inc [hl]
	inc b
	ld [hld], a
	inc b
	dec hl
	inc b
	daa
	inc b
	ld b, h
	inc c
	ld b, a
	inc b
	ld b, d
	inc c
	ld b, d
	ld [bc], a
	ld b, h
	ld [bc], a
	ld b, l
	ld [$0444], sp
	ld b, b
	inc b
	ld b, h
	ld b, $42
	ld a, [bc]
	ld b, h
	inc c
	ld b, a
	inc b
	ld b, d
	inc c
	ld b, d
	ld [bc], a
	ld b, h
	ld [bc], a
	ld b, l
	ld [$0847], sp
	ld c, c
	stop
	db $10
	and b
	or a
	rst $38
	ldh a, [$03]
	cp $0f
	ld a, [c]
	ld bc, $0dfc
	ld a, [$f804]
	ld bc, $01fd
	db $ed
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	rla
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [$0220], sp
	jr nz, jr_001_65e0

	nop
	inc b

jr_001_65e0:
	ld [hli], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	nop
	inc b
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	rla
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [$0220], sp
	jr nz, jr_001_65f6

	nop
	inc b

jr_001_65f6:
	rla
	ld [bc], a
	rla
	ld [bc], a
	nop
	inc b
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	rla
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [$0220], sp
	jr nz, jr_001_660c

	nop
	inc b

jr_001_660c:
	ld [hli], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	nop
	inc b
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	rla
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [$0220], sp
	jr nz, jr_001_6622

	nop
	inc b

jr_001_6622:
	rla
	ld [bc], a
	rla
	ld [bc], a
	nop
	inc b
	inc h
	inc b
	inc h
	inc b
	inc h
	inc b
	inc h
	inc b
	inc h
	inc b
	ld [hli], a
	inc b
	dec de
	inc b
	rla
	inc b
	and b
	ld [bc], a
	and b
	rr c
	ld [bc], a
	add hl, de
	ld [bc], a
	rla
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [$0220], sp
	jr nz, jr_001_664c

	nop
	inc b

jr_001_664c:
	ld [hli], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	nop
	inc b
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	rla
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [$0227], sp
	daa
	ld [bc], a
	nop
	inc b
	jr nz, jr_001_6666

	jr nz, jr_001_6668

jr_001_6666:
	nop
	inc b

jr_001_6668:
	ld [hli], a
	inc b
	ld [hli], a
	inc b
	ld [hli], a
	inc b
	ld [hli], a
	inc b
	inc h
	inc b
	inc h
	inc b
	inc h
	inc b
	ld [hli], a
	inc b
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	rla
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [$0220], sp
	jr nz, jr_001_6688

	nop
	inc b

jr_001_6688:
	ld [hli], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	nop
	inc b
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	rla
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [$0227], sp
	daa
	ld [bc], a
	nop
	inc b
	jr nz, jr_001_66a2

	jr nz, jr_001_66a4

jr_001_66a2:
	nop
	inc b

jr_001_66a4:
	ld [hli], a
	inc b
	ld [hli], a
	inc b
	ld [hli], a
	inc b
	ld [hli], a
	inc b
	daa
	inc b
	daa
	inc b
	daa
	inc b
	daa
	inc b
	jr nz, @+$08

	jr nz, jr_001_66ba

	jr nz, jr_001_66c2

jr_001_66ba:
	ld [hli], a
	ld b, $22
	ld [bc], a
	ld [hli], a
	ld [$0624], sp

jr_001_66c2:
	inc h
	ld [bc], a
	inc h
	ld [$0424], sp
	ld [hli], a
	inc b
	dec de
	inc b
	rla
	inc b
	jr nz, @+$08

	jr nz, jr_001_66d4

	jr nz, jr_001_66dc

jr_001_66d4:
	ld [hli], a
	ld b, $22
	ld [bc], a
	ld [hli], a
	ld [$0425], sp

jr_001_66dc:
	nop
	ld bc, $0120
	ld [hli], a
	ld bc, $0125
	daa
	inc b
	nop
	ld bc, $011b
	ld [hli], a
	ld bc, $0127
	add hl, hl
	ld [bc], a
	add hl, hl
	ld [bc], a
	add hl, hl
	ld [bc], a
	add hl, hl
	ld [bc], a
	add hl, hl
	ld [bc], a
	add hl, hl
	ld [bc], a
	add hl, hl
	ld [bc], a
	add hl, hl
	ld [bc], a
	nop
	db $10
	and b
	sbc l
	rst $38
	cp $08
	ld hl, sp+$01
	db $fd
	nop
	db $fc
	nop
	ldh a, [$03]
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_673c

	ld [bc], a
	nop

jr_001_673c:
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_674e

	ld [bc], a
	nop

jr_001_674e:
	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_677e

	ld [bc], a
	nop

jr_001_677e:
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6790

	ld [bc], a
	nop

jr_001_6790:
	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	inc bc
	ld [bc], a
	and b
	ld [bc], a
	and b
	xor h
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_67c4

	ld [bc], a
	nop

jr_001_67c4:
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_67d6

	ld [bc], a
	nop

jr_001_67d6:
	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6806

	ld [bc], a
	nop

jr_001_6806:
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6818

	ld [bc], a
	nop

jr_001_6818:
	ld [bc], a
	cp $06
	ei
	ld bc, $38f9
	inc bc
	inc b
	inc bc
	inc b
	inc bc
	inc b
	inc bc
	inc b
	cp $06
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $06
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $06
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $06
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6864

	ld [bc], a
	and b

jr_001_6864:
	ld [bc], a
	and b
	xor b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6896

	ld [bc], a
	nop

jr_001_6896:
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_68a8

	ld [bc], a
	nop

jr_001_68a8:
	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_68d8

	ld [bc], a
	nop

jr_001_68d8:
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_68ea

	ld [bc], a
	nop

jr_001_68ea:
	ld [bc], a
	and b
	ld [bc], a
	and b
	cp h
	cp $06
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_690e

	ld [bc], a
	ld [bc], a

jr_001_690e:
	ld [bc], a
	nop
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	nop
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_694a

	ld [bc], a
	nop

jr_001_694a:
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_695c

	ld [bc], a
	nop

jr_001_695c:
	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	inc bc
	ld [bc], a
	and b
	ld [bc], a
	and b
	or [hl]
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6990

	ld [bc], a
	nop

jr_001_6990:
	ld [bc], a
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_69a2

	ld [bc], a
	nop

jr_001_69a2:
	ld [bc], a
	cp $06
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_69c2

	ld [bc], a
	ld [bc], a

jr_001_69c2:
	ld [bc], a
	nop
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	nop
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	and b
	ld [bc], a
	and b
	ret c

	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6a28

	ld [bc], a
	ld [bc], a

jr_001_6a28:
	ld [bc], a
	and b
	ld [bc], a
	and b
	db $d3
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08

Jump_001_6ae7:
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6aee

	ld [bc], a
	ld [bc], a

jr_001_6aee:
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	nop
	inc b
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	nop
	inc b
	and b
	ld [bc], a
	and b
	sub a
	cp $08
	ld [bc], a
	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6b46

	ld [bc], a
	nop

jr_001_6b46:
	ld [bc], a
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6b58

	ld [bc], a
	nop

jr_001_6b58:
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	and b
	ret nc

	rst $38
	inc bc
	nop
	nop
	nop
	inc bc
	ld l, [hl]
	ld l, e
	nop
	db $dd
	ld l, e
	ld bc, $6cee
	ld [bc], a
	ldh a, [$03]
	db $f4
	add b
	db $fc
	ld c, $fa
	rlca
	db $fd
	inc bc
	cp $0a

jr_001_6b7a:
	nop

jr_001_6b7b:
	jr nz, jr_001_6b7a

	nop

jr_001_6b7e:
	nop
	jr nz, jr_001_6b7e

	dec b
	add hl, sp
	inc e
	dec sp
	inc b
	ld b, b
	inc e
	ld b, h
	inc b
	ld b, d
	jr jr_001_6bc8

	ld [$2037], sp
	add hl, sp
	inc e
	dec sp
	inc b
	ld b, b
	inc e
	ld b, h
	inc b
	ld b, d
	jr jr_001_6bd6

	ld [$1c37], sp
	dec sp
	inc b
	ld b, d
	inc b
	nop
	ld [bc], a
	ld b, b
	inc b
	nop
	ld [bc], a
	ld b, h
	ld b, $42
	ld b, $3b
	inc b
	scf
	inc b
	ld b, d
	inc b
	nop
	ld [bc], a
	ld b, b
	inc b
	nop
	ld [bc], a
	ld b, h
	ld b, $42
	ld b, $3b
	inc b
	ld b, b
	ld [bc], a
	ld b, d
	ld [bc], a
	ld b, d
	inc b
	nop
	ld [bc], a
	ld b, b
	inc b

jr_001_6bc8:
	nop
	ld [bc], a
	ld b, h
	ld b, $42
	ld b, $3b
	inc b
	ld b, b
	inc b
	ld b, d
	inc b
	ld b, h
	inc b

jr_001_6bd6:
	ld b, a
	inc b
	ld c, c
	jr nz, jr_001_6b7b

	pop de
	rst $38
	ldh a, [$03]
	cp $0f
	ld a, [c]
	ld bc, $0dfc
	ld a, [$f805]
	ld bc, $05fd
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	sub e
	pop af
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	add hl, de
	ld [bc], a
	nop
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	nop
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	nop
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	nop
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	nop
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	nop
	ld [bc], a
	nop
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	nop
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	nop
	ld [bc], a
	nop
	ld [bc], a
	dec d
	ld [bc], a
	dec d
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	nop
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	nop
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	nop
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	nop
	ld [bc], a
	sub c
	ret nz

	ld [hli], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	jr nz, jr_001_6c89

	jr nz, jr_001_6c8b

jr_001_6c89:
	jr nz, jr_001_6c8d

jr_001_6c8b:
	inc h
	ld [bc], a

jr_001_6c8d:
	inc h
	ld [bc], a
	inc h
	ld [bc], a
	ld [hli], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	rla
	ld [bc], a
	rla
	ld [bc], a
	ld [hli], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	jr nz, jr_001_6ca9

	jr nz, jr_001_6cab

jr_001_6ca9:
	jr nz, jr_001_6cad

jr_001_6cab:
	inc h
	ld [bc], a

jr_001_6cad:
	inc h
	ld [bc], a
	inc h
	ld [bc], a
	ld [hli], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	jr nz, jr_001_6cbf

	ld [hli], a
	ld [bc], a

jr_001_6cbf:
	ld [hli], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	nop
	ld [bc], a
	jr nz, jr_001_6cc9

	jr nz, jr_001_6ccb

jr_001_6cc9:
	nop
	ld [bc], a

jr_001_6ccb:
	inc h
	ld [bc], a
	inc h
	ld [bc], a
	nop
	ld [bc], a
	ld [hli], a
	ld [bc], a
	ld [hli], a
	ld [bc], a
	nop
	ld [bc], a
	dec de
	ld [bc], a
	dec de
	ld [bc], a
	jr nz, jr_001_6cdf

	jr nz, jr_001_6ce1

jr_001_6cdf:
	ld [hli], a
	ld [bc], a

jr_001_6ce1:
	ld [hli], a
	ld [bc], a
	inc h
	ld [bc], a
	inc h
	ld [bc], a
	daa
	ld [bc], a
	daa
	ld [bc], a
	and b
	add b
	rst $38
	ldh a, [$03]
	ld hl, sp+$01
	cp $06
	db $fd
	nop
	db $fc
	nop
	nop
	inc e
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6d17

	inc b
	nop

jr_001_6d17:
	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6d2f

	inc b
	nop

jr_001_6d2f:
	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6d99

	inc b
	and b

jr_001_6d99:
	ld [bc], a
	and b
	or e
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	nop
	inc b
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	nop
	inc b
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6e17

	inc b
	ld [bc], a

jr_001_6e17:
	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6e81

	inc b
	and b

jr_001_6e81:
	ld [bc], a
	and b
	adc h
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	nop
	inc b
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	nop
	inc b
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6eff

	inc b
	ld [bc], a

jr_001_6eff:
	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_6f69

	inc b
	and b

jr_001_6f69:
	ld [bc], a
	and b
	adc h
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	nop
	inc b
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	nop
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	ei
	ld bc, $38f9
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	cp $05
	inc bc
	ld [bc], a
	inc bc
	ld [bc], a
	nop
	inc b
	cp $08
	ei
	ld [bc], a
	ld sp, hl
	jr nc, @+$04

	inc b
	cp $05
	and b
	rst $08
	rst $38
	inc bc
	nop
	nop
	nop
	inc bc
	db $dd
	ld l, a
	nop
	or h
	ld [hl], b
	ld bc, $70e1
	ld [bc], a
	ldh a, [$03]
	cp $08
	db $f4
	add b
	db $fd
	dec b
	db $fc
	ld c, $fa
	ld b, $f8
	ld bc, $01ed
	inc [hl]
	inc e
	dec [hl]
	inc d
	jr nc, jr_001_700b

	ld [hld], a
	jr jr_001_701f

	jr nz, @+$36

	inc e
	dec [hl]
	inc d
	jr nc, @+$1a

	ld [hld], a
	jr jr_001_7029

	jr nz, jr_001_7034

	inc e
	inc [hl]
	inc d
	dec [hl]
	jr jr_001_703c

	jr jr_001_703c

	db $10

jr_001_700b:
	dec hl
	ld [$0827], sp
	ld [hld], a
	inc e
	inc [hl]
	inc d
	dec [hl]
	jr jr_001_704a

	jr jr_001_704a

	db $10
	daa
	ld [$082b], sp
	inc [hl]
	inc e

jr_001_701f:
	dec [hl]
	inc d
	jr nc, jr_001_703b

	ld [hld], a
	jr jr_001_704f

	jr nz, jr_001_705c

	inc e

jr_001_7029:
	dec [hl]
	inc d
	jr nc, @+$1a

	ld [hld], a
	jr @+$2b

	jr nz, jr_001_7064

	inc e
	inc [hl]

jr_001_7034:
	inc d
	dec [hl]
	jr jr_001_706c

	jr jr_001_706c

	db $10

jr_001_703b:
	dec hl

jr_001_703c:
	ld [$0827], sp
	ld [hld], a
	inc e
	inc [hl]
	inc d
	dec [hl]
	jr jr_001_707a

	jr jr_001_707a

	db $10
	daa

jr_001_704a:
	ld [$082b], sp
	inc [hl]
	inc e

jr_001_704f:
	dec [hl]
	inc d
	jr nc, jr_001_706b

	ld [hld], a
	inc c
	inc [hl]
	inc b
	add hl, hl
	jr z, jr_001_708e

	inc e
	dec [hl]

jr_001_705c:
	inc d
	jr nc, jr_001_7077

	ld [hld], a
	inc c
	inc [hl]
	inc b
	scf

jr_001_7064:
	db $10
	dec [hl]
	jr jr_001_709a

	inc e
	scf
	inc d

jr_001_706b:
	ld [hld], a

jr_001_706c:
	inc c
	dec hl
	inc c
	inc [hl]
	inc c
	ld [hld], a
	inc h
	scf
	inc c
	dec [hl]
	inc c

jr_001_7077:
	inc [hl]
	inc c
	scf

jr_001_707a:
	jr jr_001_70b7

	inc d
	ld b, b
	jr @+$44

	jr jr_001_70c6

	inc e
	ld b, l
	inc d
	ld b, b
	jr jr_001_70ca

	jr @+$3b

	jr nz, @+$46

	inc e
	ld b, l

jr_001_708e:
	inc d
	ld b, b
	jr jr_001_70d4

	jr jr_001_70cd

	jr nz, jr_001_70d8

	inc e
	ld b, h
	inc d
	ld b, l

jr_001_709a:
	jr jr_001_70e0

	jr jr_001_70e0

	db $10
	dec sp
	ld [$0837], sp
	ld b, d
	inc e
	ld b, h
	inc d
	ld b, l
	jr jr_001_70ee

	jr jr_001_70ee

	db $10
	scf
	ld [$083b], sp
	and b
	sbc [hl]
	rst $38
	ldh a, [$03]
	ld a, [c]

jr_001_70b7:
	ld bc, $0dfc
	ld a, [$f807]
	ld bc, $0ffe
	db $ed
	ld bc, $0419
	add hl, de
	inc b

jr_001_70c6:
	add hl, bc
	ld [bc], a
	add hl, de
	ld [bc], a

jr_001_70ca:
	add hl, de
	ld [bc], a
	add hl, de

jr_001_70cd:
	ld [bc], a
	sbc a
	ld a, [$0417]
	rla
	inc b

jr_001_70d4:
	rlca
	ld [bc], a
	rla
	ld [bc], a

jr_001_70d8:
	rla
	ld [bc], a
	rla
	ld [bc], a
	sbc a
	ld a, [$f2a0]

jr_001_70e0:
	rst $38
	ld hl, sp+$01
	cp $06
	ei
	ld [bc], a
	ld sp, hl
	jr nc, jr_001_70ec

	inc b
	ld [bc], a

jr_001_70ec:
	inc b
	nop

jr_001_70ee:
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	ld [bc], a
	and b
	ld hl, sp-$01
	inc b
	nop
	nop
	nop
	inc bc
	dec b
	ld [hl], c
	nop
	cp [hl]
	ld [hl], d
	ld bc, $0000
	ldh a, [$03]
	cp $0d
	db $f4
	add b
	ld hl, sp+$00
	db $fc
	ld c, $fa
	dec b
	db $ed
	ld bc, $2000
	nop
	ld c, $fd
	inc bc
	add hl, sp
	ld [$0a00], sp
	nop
	ld c, $3b
	ld [$0800], sp
	ld [hld], a
	inc b
	nop
	inc b
	inc [hl]
	ld [bc], a
	nop
	ld [bc], a
	dec [hl]
	inc d
	nop
	jr nz, jr_001_7130

jr_001_7130:
	ld c, $39
	ld [$0a00], sp
	nop
	ld c, $40
	ld [$0800], sp
	ld [hld], a
	ld [bc], a
	nop
	ld [bc], a
	inc [hl]
	ld [bc], a
	nop
	ld [bc], a
	dec [hl]
	ld [bc], a
	scf
	ld [bc], a
	nop
	ld [bc], a
	ld [hld], a
	ld [$1a00], sp
	nop
	jr nz, jr_001_7150

jr_001_7150:
	ld c, $39
	ld [$0a00], sp
	nop
	ld c, $3b
	ld [$0800], sp
	ld [hld], a
	inc b
	nop
	inc b
	inc [hl]
	ld [bc], a
	nop
	ld [bc], a
	dec [hl]
	inc d
	nop
	jr nz, jr_001_7168

jr_001_7168:
	ld c, $39
	ld [$0a00], sp
	nop
	ld c, $40
	ld [$0800], sp
	ld [hld], a
	ld [bc], a
	nop
	ld [bc], a
	inc [hl]
	ld [bc], a
	nop
	ld [bc], a
	dec [hl]
	ld [bc], a
	scf
	ld [bc], a
	nop
	ld [bc], a
	ld b, b
	ld [bc], a
	nop
	ld [bc], a
	ld b, d
	ld [bc], a
	nop
	ld [bc], a
	ld b, h
	ld [bc], a
	nop
	ld [bc], a
	ld b, a
	inc b
	nop
	ld [hli], a
	and b
	ld [bc], a
	and b
	ret nz

	add hl, sp
	ld [bc], a
	dec sp
	ld [bc], a
	ld b, b
	ld [bc], a
	add hl, sp
	ld [bc], a
	nop
	ld [bc], a
	ld b, d
	ld [bc], a
	nop
	ld [bc], a
	ld b, h
	ld [bc], a
	nop
	ld [bc], a
	ld b, a
	ld [bc], a
	nop
	ld [bc], a
	ld c, c
	ld [$0400], sp
	add hl, sp
	ld [bc], a
	dec sp
	ld [bc], a
	ld b, b
	ld [bc], a
	add hl, sp
	ld [bc], a
	nop
	ld [bc], a
	ld b, b
	ld [bc], a
	nop
	ld [bc], a
	dec sp
	ld [bc], a
	nop
	ld [bc], a
	ld b, a
	ld [bc], a
	nop
	ld [bc], a
	ld d, b
	ld [bc], a
	nop
	ld [bc], a
	ld c, e
	inc b
	nop
	inc b
	add hl, sp
	ld [bc], a
	dec sp
	ld [bc], a
	ld b, b
	ld [bc], a
	add hl, sp
	ld [bc], a
	nop
	ld [bc], a
	ld b, d
	ld [bc], a
	nop
	ld [bc], a
	ld b, h
	ld [bc], a
	nop
	ld [bc], a
	ld b, a
	ld [bc], a
	nop
	ld [bc], a
	ld c, c
	ld [$0400], sp
	add hl, sp
	ld [bc], a
	dec sp
	ld [bc], a
	ld b, b
	ld [bc], a
	add hl, sp
	ld [bc], a
	nop
	ld [bc], a
	ld b, b
	ld [bc], a
	nop
	ld [bc], a
	dec sp
	ld [bc], a
	nop
	ld [bc], a
	ld b, a
	ld [bc], a
	nop
	ld [bc], a
	ld d, b
	ld [bc], a
	nop
	ld [bc], a
	ld c, e
	inc b
	nop
	inc b
	add hl, sp
	ld [bc], a
	dec sp
	ld [bc], a
	ld b, b
	ld [bc], a
	add hl, sp
	ld [bc], a
	nop
	ld [bc], a
	ld b, d
	ld [bc], a
	nop
	ld [bc], a
	ld b, h
	ld [bc], a
	nop
	ld [bc], a
	ld b, a
	ld [bc], a
	nop
	ld [bc], a
	ld c, c
	ld [$0400], sp
	add hl, sp
	ld [bc], a
	dec sp
	ld [bc], a
	ld b, b
	ld [bc], a
	add hl, sp
	ld [bc], a
	nop
	ld [bc], a
	ld b, b
	ld [bc], a
	nop
	ld [bc], a
	dec sp
	ld [bc], a
	nop
	ld [bc], a
	ld b, a
	ld [$0800], sp
	add hl, sp
	ld [bc], a
	dec sp
	ld [bc], a
	ld b, b
	ld [bc], a
	add hl, sp
	ld [bc], a
	nop
	ld [bc], a
	ld b, d
	ld [bc], a
	nop
	ld [bc], a
	ld b, h
	ld [bc], a
	nop
	ld [bc], a
	ld b, a
	ld [bc], a
	nop
	ld [bc], a
	ld c, c
	ld [$0400], sp
	and b
	ld [bc], a
	and b
	and c
	add hl, sp
	ld [bc], a
	dec sp
	ld [bc], a
	ld b, b
	ld [bc], a
	add hl, sp
	ld [bc], a
	nop
	ld [bc], a
	ld b, b
	ld [bc], a
	nop
	ld [bc], a
	dec sp
	ld [bc], a
	nop
	ld [bc], a
	ld b, a
	ld [bc], a
	nop
	ld [bc], a
	ld d, b
	ld [bc], a
	nop
	ld [bc], a
	ld c, e
	inc b
	nop
	inc b
	add hl, sp
	ld [bc], a
	dec sp
	ld [bc], a
	ld b, b
	ld [bc], a
	add hl, sp
	ld [bc], a
	nop
	ld [bc], a
	ld b, d
	ld [bc], a
	nop
	ld [bc], a
	ld b, h
	ld [bc], a
	nop
	ld [bc], a
	ld b, a
	ld [bc], a
	nop
	ld [bc], a
	ld c, c
	ld [$0400], sp
	add hl, sp
	ld [bc], a
	dec sp
	ld [bc], a
	ld b, b
	ld [bc], a
	add hl, sp
	ld [bc], a
	nop
	ld [bc], a
	ld b, b
	ld [bc], a
	nop
	ld [bc], a
	dec sp
	ld [bc], a
	nop
	ld [bc], a
	ld b, a
	ld [$0800], sp
	add hl, sp
	ld [bc], a
	dec sp
	ld [bc], a
	ld b, b
	ld [bc], a
	add hl, sp
	ld [bc], a
	nop
	ld [bc], a
	ld b, d
	ld [bc], a
	nop
	ld [bc], a
	ld b, h
	ld [bc], a
	nop
	ld [bc], a
	ld b, a
	ld [bc], a
	nop
	ld [bc], a
	ld c, c
	ld [$0400], sp
	and b
	set 7, a
	ldh a, [$03]
	ld a, [c]
	ld bc, $01f8
	db $fc
	dec bc
	ld a, [$fe04]
	rrca
	db $ed
	ld bc, $0219
	and b
	rst $38
	rst $38
	ld bc, $de00
	ld [hl], d
	inc b
	nop
	nop
	nop
	nop
	nop
	ld bc, $0000
	ldh a, [$03]
	push af
	ld l, $f4
	ld b, b
	db $fc
	dec c
	ld a, [$fe06]
	ld a, [bc]
	db $fd
	ld bc, $0460
	rst $38
	ld [bc], a
	nop
	db $fc
	ld [hl], d
	inc b
	nop
	nop
	nop
	nop
	nop
	ld bc, $0000
	ldh a, [$03]
	cp $08
	push af
	cpl
	db $fc
	rrca
	db $fd
	ld [$01fa], sp
	db $f4
	add b
	ld hl, sp+$00
	ld d, a
	inc b
	nop
	ld [bc], a
	rst $38
	inc bc
	nop
	ld e, $73
	inc b
	nop
	nop
	nop
	nop
	nop
	ld bc, $0000
	ldh a, [$03]
	push af
	ld [$00f4], sp
	ei
	ld [bc], a
	cp $07
	db $fd
	ld bc, $0460
	rst $38
	inc bc
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $0000
	ld [bc], a
	dec sp
	ld [hl], e
	dec b
	ldh a, [$03]
	cp $0c
	pop af
	ld [hl], a
	db $fd
	dec b
	ei
	ld bc, $04f9
	db $10
	ld [bc], a
	nop
	ld [bc], a
	rst $38
	ld [bc], a
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	ld bc, $0000
	ld [bc], a
	ld e, d
	ld [hl], e
	dec b
	cp $0b
	db $fd
	ld [bc], a
	ldh a, [$03]
	db $10
	ld [bc], a
	cp $09
	ldh a, [rSB]
	db $10
	ld [bc], a
	cp $06
	ldh a, [rSC]
	db $10
	ld [bc], a
	cp $09
	db $fd
	inc b
	ldh a, [$03]
	db $10
	inc b
	cp $09
	ldh a, [rSB]
	db $10
	ld b, $fe
	ld b, $f0
	inc bc
	db $10
	inc b
	ldh a, [rSB]
	db $10
	ld bc, $03f0
	db $10
	ld bc, $02f0
	db $10
	ld bc, $03f0
	cp $03
	db $10
	ld b, $fe
	ld bc, $00fd
	db $10
	inc b
	rst $38
	inc bc
	inc bc
	nop
	nop
	nop
	nop
	nop
	ld bc, $0000
	ld [bc], a
	xor c
	ld [hl], e
	dec b
	cp $0f
	db $fd
	ld [bc], a
	ldh a, [$03]
	ei
	rlca
	ld sp, hl
	inc b
	rrca
	rrca
	cp $0d
	ldh a, [rSB]
	rrca
	ld b, $fe
	ld [$02f0], sp
	rrca
	inc b
	ldh a, [rSB]
	rrca
	ld [bc], a
	ldh a, [rSC]
	rrca
	ld bc, $01f0
	rrca
	ld bc, $01f0
	rrca
	ld bc, $04fe
	ldh a, [$03]
	rrca
	ld [$01ff], sp
	ld bc, $73e5
	inc b
	nop
	nop
	ld bc, $0000
	ld [bc], a
	nop
	nop
	cp $08
	push af
	dec c
	db $fc
	nop
	ei
	ld [bc], a
	ld hl, sp+$00
	ldh a, [$03]
	db $f4
	ld b, b
	ld h, b
	ld bc, $0150
	ld d, a
	ld bc, $0147
	ld e, c
	ld bc, $0149
	rst $38
	nop
	ld bc, $740d
	inc b
	nop
	nop
	ld bc, $0000
	ld [bc], a
	nop
	nop
	cp $08
	push af
	ld [$00fc], sp
	ei
	dec b
	ld hl, sp+$00
	ldh a, [$03]
	db $f4
	ld b, b
	db $ed
	db $f4
	ld h, b
	ld bc, $0170
	ld e, e
	ld bc, $016b
	ld c, d
	ld bc, $015a
	ld e, c
	ld bc, $0169
	ld d, a
	ld bc, $0167
	ld d, [hl]
	ld bc, $0166
	ld d, l
	ld bc, $0165
	ld d, h
	ld bc, $0164
	ld d, b
	ld bc, $0160
	ld c, c
	ld bc, $0159
	ld b, a
	ld bc, $0157
	rst $38
	inc bc
	ld bc, $0000
	nop
	nop
	nop
	ld bc, $0000
	ld [bc], a
	ld e, b
	ld [hl], h
	dec b
	cp $07
	db $fd
	ld [bc], a
	ldh a, [$03]
	ei
	dec b
	ld sp, hl
	inc b
	ld c, $0d
	rst $38
	rst $10
	jp $d665


	push de
	ld c, a
	push de
	cp c
	ld d, c
	ei
	ld [hl], l
	rst $38
	push hl
	cp $15
	ld a, e
	dec [hl]
	ld e, a
	sub h
	ld h, h
	ld e, c
	rst $38
	ld d, l
	cp l
	add c
	db $fd
	scf
	add a
	dec [hl]
	ccf
	push de
	cp a
	rst $10
	rst $38
	ld e, c
	ld l, e
	dec d
	rst $38
	ld d, l
	cp a
	ld h, e
	rst $18
	ld b, l
	xor a
	ld d, l
	ld a, a
	ld d, [hl]
	rst $38
	ld c, a
	rra
	db $fd
	sbc $74
	xor $5c
	xor $f7
	ld a, a
	ld e, a
	ld a, c
	db $dd
	cp l
	rst $10
	push bc
	ld e, l
	or l
	ld e, a
	or a
	ld d, a
	ld a, [$fb5f]
	inc de
	or l
	db $dd
	push af
	ld d, a
	db $fd
	ld a, [hl]
	rst $18
	db $fd
	pop hl
	push bc
	ld a, $5d
	cp e
	ld e, l
	rst $28
	ld b, e
	ld e, a
	sub c
	sbc a
	ld c, l
	rst $30
	xor l
	rst $38
	ld l, l
	rst $18
	push de
	rst $28
	ld e, a
	sbc e
	ld a, h
	ld h, a
	ld [hl], l
	rst $20
	adc b
	sbc a
	ld b, l
	rst $20
	ld [hl], a
	ld l, [hl]
	rst $28
	rst $30
	ld e, h
	sbc a
	ld e, c
	sbc a
	ld d, l
	ld a, a
	dec [hl]
	cp a
	rlca
	db $fd
	ld [hl], l
	sbc $4f
	rst $38
	ld [hl], l
	rst $38
	ld d, l
	rst $38
	or a
	di
	push de
	ld sp, hl
	db $dd
	rra
	ld [hl], l
	rst $38
	ld e, l
	rst $18
	push af
	ld a, a
	ld d, a
	ld e, b
	xor e
	rst $38
	ld d, c
	cp a
	ld e, l
	rst $38
	ld b, [hl]
	rst $20
	ld [hl], h
	sbc [hl]
	jp Jump_001_57df


	db $fd
	ld h, h
	pop bc
	db $dd
	rst $28
	push af
	ld a, l
	push de
	ld a, l
	ld d, l
	adc $dd
	cp $51
	db $dd
	ld de, $fcd9
	cp l
	ld a, a
	cp $55
	db $dd
	dec d
	rst $38
	ld d, l
	ld l, [hl]
	ld d, a
	rst $38
	ld d, l
	db $fc
	inc d
	db $fd
	push af
	and e
	db $fd
	ld [hl], a
	ld d, l
	ld a, [hl]
	ld h, l
	cp [hl]
	ld d, c
	rst $28
	ld e, c
	ld a, a
	ld d, c
	ld sp, hl
	push de
	scf
	ld [hl], h
	push af
	ld d, a
	call Call_001_5354
	ld d, l
	db $fd
	ld e, a
	cpl
	add a
	rst $28
	ld [hl], h
	ei
	ld e, $7e
	ld b, c
	rst $28
	ld h, l
	cp a
	inc e
	ccf
	ld d, l
	rst $38
	rst $10
	ld sp, hl
	call $d5fa
	ld e, a
	ld [hl], l
	ld h, c
	ld [hl], b
	rst $18
	ld b, l
	rst $30
	ld a, l
	ld [hl], e
	ld d, c
	ld sp, hl
	add hl, de
	ld a, a
	ld d, a
	rst $18
	ld e, a
	ld a, [hld]
	or e
	rst $38
	ld d, l
	db $fd
	ld b, l
	cp $d5
	cp [hl]
	ld a, l
	and a
	ld d, h
	rst $30
	ld e, a
	rst $38
	ld d, [hl]
	sbc $d5
	ld a, e
	ld e, b
	jp z, $f401

	ld c, h
	db $db
	rra
	ldh [$c7], a
	adc e
	ld [hl], a
	adc $53
	ld a, e
	ld d, l
	scf
	ld b, h
	cp a
	ld d, a
	dec c
	ld e, l
	rst $38
	ld e, b
	push af
	ld a, c
	dec sp
	ld b, l
	dec de
	ld e, c
	db $fd
	ld e, l
	or $5d
	ld a, a
	inc [hl]
	ld a, a
	ld e, l
	ld a, a
	ld d, c
	xor a
	ld b, h
	ld sp, hl
	ld d, l
	cp a
	or l
	rst $30
	ld d, l
	sbc $f5
	rst $38
	ret nc

	sub a
	or l
	ld a, d
	dec e
	cp l
	ld a, h
	rst $38
	sub l
	ld a, [$6f5c]
	inc d
	sbc [hl]
	ld [hl], a
	sub b
	push af
	rst $38
	ld c, c
	ld l, l
	rla
	xor a
	pop af
	ld l, b
	ld [hl], l
	ld a, a
	ld a, l
	rst $38
	ld e, l
	rst $38
	inc e
	xor a
	push bc
	ld [hl], a
	ld b, c
	ld e, c
	ld d, l
	ld l, $75
	rst $38
	ld [hl], l
	ld a, [$ff77]
	ld b, l
	sbc d
	ld [hl], a
	rst $38
	ld e, $fd
	ld a, l
	rst $28
	rst $18
	rst $38
	ld [hl], c
	rst $18
	ld a, b
	rst $18
	or l
	cpl
	dec d
	ei
	push af
	ei
	ld e, l
	db $f4
	ld e, l
	rst $38
	ld e, a
	ei
	ld e, l
	pop af
	ld d, e
	rst $10
	ld a, l
	or l
	ld [hl], c
	ld a, [hl]
	ld d, l
	rst $38
	ld d, a
	or a
	rst $10
	cp c
	ld e, a
	ld a, a
	ld b, c
	sbc c
	dec e
	rst $38
	jr @+$01

	ld e, l
	ei
	ld d, d
	db $dd
	ld l, a
	rst $38
	ld [hl], l
	ei
	ld d, c
	rst $28
	ld h, l
	ld hl, $ca5c
	ret nz

	dec l
	ld h, l
	cp $1d
	ld c, $b1
	db $fd
	dec d
	and [hl]
	ld [hl], l
	cp $6f
	rst $38
	sbc $ff
	ld d, l
	db $dd
	ld [hl], b
	rst $30
	ld [hl], l
	rst $28
	db $db
	ld e, a
	ld d, l
	ld hl, $1995
	dec h
	db $ed
	inc sp
	cp a
	ld e, a
	ld h, a
	ld d, a
	xor c
	push bc
	ld a, c
	dec c
	rst $38
	db $76
	or $5c
	rst $18
	ld [hl], d
	rst $38
	ld [hl], b
	rst $18
	ld e, l
	rst $38
	ld d, a
	ld a, a
	ld l, c
	cp e
	push de
	rst $30
	ld d, l
	adc a
	ld d, l
	cp $60
	db $fd
	or l
	sbc [hl]
	ld d, [hl]
	ld a, a
	ld e, l
	db $d3
	ld b, l
	rst $30
	reti


	ei
	dec e
	sub a
	db $fc
	rst $30
	rst $30
	ld a, [hl]
	ld a, c
	rst $18
	ld d, a
	ccf
	ld e, c
	scf
	ld d, c
	ld e, a
	ld e, l
	ld e, a
	ld d, e
	rst $38
	ld [hl], l
	db $fc
	ld d, d
	rst $28
	add hl, de
	cp a
	push de
	db $db
	ld d, b
	ld h, a
	sub l
	rst $18
	rlca
	cp l
	ld e, e
	cp a
	ld [de], a
	cp $55
	ld l, l
	ld d, [hl]
	push af
	ld d, a
	ccf
	add l
	xor d
	sbc l
	adc d
	ld a, l
	rst $08
	ld a, [hl]
	or a
	dec d
	rst $28
	ld d, h
	ei
	dec e
	cp a
	push de
	rst $28
	db $76
	ld c, [hl]
	ld a, l
	ld l, a
	call z, Call_001_546e
	ld h, d
	dec d
	rst $30
	rst $00
	ld a, a
	inc e
	rst $18
	ld b, l
	xor c
	rst $28
	or $b5
	cp a
	ld [hl], l
	and $77
	db $ed
	ld d, l
	dec a
	ld d, e
	cp e
	ld d, l
	rst $28
	ld d, h
	rst $38
	ld e, l
	rst $00
	ld [hl], c
	reti


	dec h
	push hl
	dec c
	jp Jump_001_6ae7


	ld d, e
	rst $38
	ld e, a
	db $eb
	rst $38
	or $41
	ei
	ld b, l
	ld a, l
	ld a, c
	ld [$db55], a
	dec b
	cp l
	rst $30
	di
	ld e, l
	cp [hl]
	rla
	xor a
	dec [hl]
	ld sp, hl
	ld d, l
	ld a, e
	ld [hl], l
	db $dd
	ld e, l
	ld l, e
	ld b, l
	ld [$075a], sp
	ld [hl], c
	ei
	ld d, [hl]
	rst $20
	ld c, c
	rst $38
	ld e, b
	rst $38
	db $fd
	db $eb
	ld e, l
	sub $05
	xor [hl]
	db $fd
	ld a, a
	ld d, l
	rst $38
	rst $30
	push hl
	ld a, l
	cp $5f
	or $71
	ld sp, hl
	add l
	rst $18
	sub [hl]
	sbc d
	pop bc
	rst $38
	pop de
	cp a
	ld e, l
	or l
	ld d, a
	rst $10
	rra
	jp c, $ff75

	db $d3
	rst $38
	ld b, l
	db $ed
	call nc, $ddfd
	rst $18
	ld e, a
	db $fd
	ld [c], a
	rlca
	sub $6f
	ld [hl], b
	rst $30
	ld a, [hl]
	push hl
	ld c, l
	rst $38
	scf
	di
	ld d, a
	daa
	ld a, l
	rst $18
	ld b, l
	ld a, a
	push de
	rst $38
	ld e, a
	pop af
	sub a
	rst $38
	ld a, l
	ld [hl], a
	and a
	ld sp, hl
	ld l, a
	rst $10
	ld a, c
	rst $38
	sbc a
	ld a, b
	ld e, c
	ld a, a
	ld d, l
	ld e, [hl]
	ld e, h
	or e
	ld d, l
	db $fd
	ld b, l
	ei
	ld a, l
	rst $18
	ld b, e
	ld c, e
	db $dd
	ld b, c
	ld d, [hl]
	ld l, a
	ld d, l
	or $c4
	ld a, a
	ld d, c
	rst $18
	dec l
	call $e744
	sub [hl]
	rst $38
	cp $fd
	scf
	adc d
	ld e, a
	ld a, a
	reti


	rst $38
	inc d
	rst $38
	ld e, h
	xor a
	ld l, d
	ld l, a
	rst $10
	pop af
	push de
	ld a, e
	or c
	cp a
	inc d
	ei
	dec d
	rst $38
	ld [hl], l
	rst $10
	push de
	cp $e5
	ret nc

	ld d, l
	db $ed
	ld de, $45be
	ei
	ld e, l
	pop de
	inc b
	sbc e
	ld d, c
	ld l, h
	ld d, a
	ld d, a
	ld d, l
	ccf
	db $fd
	rst $18
	ld a, l

jr_001_7784:
	ld a, e
	dec h
	ei
	push de
	bit 2, l
	rst $38
	push af
	ld a, a
	ld d, c
	db $fd
	dec b
	rst $18
	ld d, l
	ld [hl], a
	ld b, h
	rst $30
	ld bc, $53fd
	pop de
	ld e, l
	call nz, $8e7d
	ld c, c
	cp l
	ld e, a
	rst $18
	ld d, l
	or $95
	xor $55
	call c, $bf41
	sbc l
	ei
	ld e, l
	pop af
	rla
	cp $0b
	ld a, a
	ld e, l
	rst $18
	ld d, c
	ld a, e
	ld d, [hl]
	or a
	ld c, h
	ld l, [hl]
	ld e, b
	db $fd
	push de
	ld a, l
	add hl, de
	cp $f5
	rst $28
	dec h
	rst $30
	ld e, l
	db $fd
	ld e, l
	dec sp
	ld b, h
	db $dd
	db $ed
	rst $38
	ld c, l
	jp hl


	sub [hl]
	ld l, l
	ld d, l
	push af
	ld b, l
	rst $18
	rst $30
	xor $fd
	cp e
	ld [hl], l
	cp a
	dec d
	pop de
	sub $df
	rla
	ei
	ld e, [hl]
	rst $38
	ld e, l
	ld e, a
	sub l
	rst $38
	ld d, l
	ld a, a
	ld d, l

jr_001_77e8:
	sub $d5
	db $e3
	ld a, l
	db $fd
	ld d, l
	rst $38
	db $dd
	xor a
	rst $30
	rst $30
	ld [hl], l
	ei
	ld b, l
	rst $18
	pop hl
	cp a
	ld d, l
	db $fd
	ld e, h
	rst $30
	rst $18
	rst $30
	rla
	ld [bc], a
	sub [hl]
	jr z, jr_001_7784

	add b
	ld de, $0400
	nop
	db $10
	add b
	ldh [rP1], a

jr_001_780d:
	ld b, d
	nop
	ld c, [hl]
	ld a, [bc]
	ld l, b
	ld [$0202], sp
	ld b, $28
	add $08
	ld e, $22
	add h
	nop
	adc b
	xor b
	ld [de], a
	jr z, jr_001_7864

	jr nz, jr_001_7898

	nop
	inc b
	jr z, jr_001_7838

	ld [hli], a
	db $e4
	add b
	inc c
	ld [bc], a
	ld d, $2a
	ld b, h
	adc b
	sub d
	nop
	jr z, jr_001_7835

jr_001_7835:
	rra
	ld a, [bc]
	inc b

jr_001_7838:
	ld [bc], a
	jr z, jr_001_7843

	ld de, $c2a2
	adc b
	ld sp, hl
	nop
	add b
	nop

jr_001_7843:
	db $10
	inc b
	nop
	jr z, jr_001_7889

jr_001_7848:
	and b
	ld [hli], a
	and b
	ld [de], a
	ld a, [bc]
	ld e, b
	jr nz, @-$3b

	add d
	dec de
	jr nz, jr_001_7848

	ld [hli], a
	xor e
	jr nz, jr_001_77e8

	xor d
	ld [$e008], sp
	add b
	jr z, @+$24

	xor d
	nop
	nop

jr_001_7862:
	add b
	db $10

jr_001_7864:
	add b
	ld b, b
	ld [bc], a
	inc b
	nop
	ld [$b0a2], sp
	nop
	cp h
	and d
	db $ec
	add b
	ld c, d
	ld [$caa4], sp
	db $10
	ld a, [hli]
	or h
	xor d
	db $fd
	jr z, jr_001_780d

	add b
	inc de
	ld [bc], a
	ld [$0820], sp
	nop
	ld de, $0600
	ld [$0006], sp

jr_001_7889:
	ld [$0188], sp
	ld [hli], a
	ret nz

	nop
	or c
	nop
	db $10
	ld [$80c8], sp
	inc b
	add d
	inc c

jr_001_7898:
	add d
	or b
	ld [bc], a
	add d
	and d
	ld [$1c80], sp
	nop
	nop
	add d
	inc d
	ld [bc], a
	sbc b
	nop
	ld b, b
	jr nz, jr_001_78cf

	ld a, [bc]
	ld de, $02a8
	jr nz, @-$74

jr_001_78b0:
	and b
	dec bc
	ld a, [hli]
	ld sp, hl
	add d
	db $fc
	adc b
	ld l, $20
	inc bc
	jr z, jr_001_78b0

	and b
	ld d, $28
	ld l, c
	nop
	add h
	jr nz, jr_001_78ea

	nop
	ld [$0000], sp
	jr nz, jr_001_7862

	jr z, jr_001_78ed

	ld [$88a0], sp

jr_001_78cf:
	ld b, [hl]
	jr z, @+$62

	nop
	ld d, d
	ld [bc], a
	ld b, l

jr_001_78d6:
	jr z, jr_001_78e8

	nop
	ret nz

	ld a, [hli]
	ld [hl], a
	nop
	ld l, b
	jr nz, jr_001_78cf

	nop
	add l
	ld b, b
	sub $4a
	sbc a
	nop
	inc b

jr_001_78e8:
	add b
	add b

jr_001_78ea:
	nop
	inc [hl]
	adc b

jr_001_78ed:
	ld de, $5e00
	nop
	dec [hl]
	and b
	sbc h
	ld a, [bc]
	adc c
	ld [$0021], sp
	jr z, @+$22

	inc de
	nop
	add b
	ld [hli], a
	ld a, [bc]
	ld [$a000], sp
	nop
	nop
	ld b, b
	nop
	add h
	add b
	sbc a
	adc b
	ld b, h
	ld a, [bc]
	ld b, e
	nop
	dec b
	nop
	ld b, $28
	ld [$6200], sp
	nop
	sub d
	jr nz, jr_001_798d

	jr nz, jr_001_7964

	nop
	add h
	ld a, [hli]
	add hl, hl
	add b
	ldh [rSC], a
	ld [$6088], sp
	nop
	ld b, b
	add d
	and b
	nop
	and b
	adc d
	ld bc, $1320
	ld hl, $80a9
	ld e, h
	and b
	sbc e
	add d
	ld h, $88
	inc de
	ld [hli], a
	ld c, d
	add b
	ret c

	ld [$80b3], sp
	jr jr_001_794b

	inc b
	jr z, jr_001_78d6

	jr nz, jr_001_7948

jr_001_7948:
	jr nz, jr_001_7957

	nop

jr_001_794b:
	inc c
	ld [bc], a
	stop
	xor l
	ld [hli], a
	ret z

	nop
	pop bc
	jr nz, jr_001_78ea

	ld [bc], a

jr_001_7957:
	ld [$5f22], sp
	nop
	ret c

	nop
	ld h, l
	ld [hli], a
	and d

jr_001_7960:
	ld [$0080], sp
	pop bc

jr_001_7964:
	and b
	nop
	xor b
	call nz, $c820
	jr nz, jr_001_79c1

	and b
	dec b
	ld [bc], a
	ld [hld], a
	ld [$8235], sp
	ldh a, [$2a]
	inc c
	and d
	cp h
	xor b
	ld a, c
	jr nz, jr_001_7960

	ld [$8a5a], sp
	ld a, [bc]
	nop
	ld b, c
	jr z, jr_001_79c7

	add b
	ld b, d
	ld a, [hli]
	nop
	nop
	ld b, b
	jr nz, @+$42

	xor b

jr_001_798d:
	ld bc, $8420
	add d
	add hl, bc
	nop
	sbc c

jr_001_7994:
	nop
	add h
	add h
	ld [hl], e
	ld [$0814], sp
	ret nz

	adc d
	ret nz

	ld a, [bc]
	jp hl


	nop
	ret nz

	add d
	ld d, h

jr_001_79a4:
	jr z, jr_001_79a8

	jr nz, jr_001_7a0c

jr_001_79a8:
	add b
	cp c
	nop
	ld a, [hli]
	adc d
	add l
	nop
	inc [hl]

jr_001_79b0:
	jr nz, jr_001_79c2

	and d
	ldh [rP1], a
	add d
	ld [$804c], sp
	jr nc, jr_001_79db

	inc b
	xor b
	db $f4
	nop
	inc [hl]
	add b

jr_001_79c1:
	add b

jr_001_79c2:
	and b
	adc b
	ld a, [bc]

jr_001_79c5:
	or $80

jr_001_79c7:
	ld de, $e082
	nop
	ld bc, $a320
	jr z, @+$72

	add d
	nop
	adc b
	db $10
	jr z, jr_001_79d6

jr_001_79d6:
	ld [hli], a
	ld [hl], b
	jr nz, @+$47

jr_001_79da:
	ld [bc], a

jr_001_79db:
	sbc b
	jr z, @+$07

	nop
	inc b
	ld [bc], a
	ld bc, $0082
	nop
	ld e, c
	ld [bc], a
	ld b, d
	add b
	pop bc
	nop
	or c
	add b
	add hl, bc
	ld a, [bc]
	jr nz, @+$0a

	add hl, bc
	ld a, [bc]
	add h
	adc d
	ld h, e
	ld a, [bc]
	jp nz, $e020

	ld a, [de]
	ld b, b
	jr z, @-$62

	add b
	sub c
	ld [hli], a
	inc c
	nop
	ld [hl], b
	nop
	ld d, b
	ld [bc], a
	ld b, l
	nop
	inc sp
	jr nz, jr_001_79a4

jr_001_7a0c:
	nop
	ld a, [bc]

jr_001_7a0e:
	jr z, jr_001_79b0

	jr z, jr_001_7994

	add b

jr_001_7a13:
	jp $168a


	and b
	ld h, h

jr_001_7a18:
	jr nz, jr_001_7a80

	ld [hli], a
	ld b, b

jr_001_7a1c:
	adc d
	add c
	jr z, jr_001_79c5

	nop
	nop
	jr nz, jr_001_79a8

	nop
	ld c, b
	ld [bc], a
	nop
	jr nz, jr_001_7a2a

jr_001_7a2a:
	add d
	ld l, c
	jr z, jr_001_7a4a

	add d
	inc bc
	ld a, [hli]
	ld l, h
	add b
	jr jr_001_7a35

jr_001_7a35:
	ld e, h
	and d
	ld h, d
	jr z, jr_001_7a7e

	adc d
	db $10
	jr z, jr_001_7a52

	ld [$0060], sp
	ld [bc], a
	nop
	add b
	nop
	cp b
	ld a, [bc]

jr_001_7a47:
	add b
	add d
	inc d

jr_001_7a4a:
	jr z, jr_001_79da

	nop
	dec d
	xor b
	ld hl, $a222

jr_001_7a52:
	ld [hli], a
	nop
	nop
	adc h
	xor b
	ld h, $a0
	add b
	nop
	inc bc
	ld [bc], a
	ld e, c
	ld [$80b0], sp
	ret nz

	ld [hli], a
	nop
	add b
	ld d, d
	nop
	sub h
	ld [$a00e], sp
	add b
	jr nz, jr_001_7a0e

	nop
	ret nc

	and b
	jr nc, jr_001_7a13

	dec c
	jr z, jr_001_7aa4

	jr z, jr_001_7a18

	and b
	ld h, h
	ld a, [bc]
	ld [hl], c
	add d
	xor h

jr_001_7a7e:
	jr z, jr_001_7a1c

jr_001_7a80:
	nop
	ld [$0808], sp
	ld [hli], a
	ld b, d
	ld [hli], a
	jr nz, @+$2a

jr_001_7a89:
	ld b, b
	nop
	jp nz, Jump_001_4808

	ld a, [bc]
	sbc c
	add b
	inc sp
	adc b
	ld h, d
	add d
	rst $20
	jr nz, jr_001_7af8

	add d
	ld c, $20
	xor b
	nop
	cp d
	jr nz, jr_001_7aad

	add b
	add c
	adc b
	ld [de], a

jr_001_7aa4:
	ld a, [hli]
	and $a0
	ld d, b
	ld [bc], a
	cp b
	nop
	ld b, [hl]
	add b

jr_001_7aad:
	ld l, b
	add d
	ld h, b

jr_001_7ab0:
	ld [$288c], sp
	and b
	sub d
	adc h
	adc b
	db $10
	ld l, b
	add hl, hl
	ld a, [hli]
	ld b, b
	add d
	ld l, l
	adc b
	ld b, b
	ld [$0250], sp
	jr nz, jr_001_7a47

	add h
	jr nz, jr_001_7a89

	jr z, jr_001_7ab0

	and b
	ld [$9008], sp
	ld a, [bc]
	ld bc, $c180

jr_001_7ad2:
	ld [bc], a
	and d
	and b
	ld c, b
	nop
	and [hl]
	adc b
	jr nc, jr_001_7ae3

	ld c, b
	add b
	rla
	adc d
	adc b
	nop
	ld b, c
	nop

jr_001_7ae3:
	ld b, h
	adc b
	inc b
	nop
	jr @-$7e

	adc h
	nop
	nop
	xor d
	ld [$8b00], sp
	nop
	and b
	xor b
	add c
	nop
	inc l
	nop
	add h

jr_001_7af8:
	and d
	or d
	ld a, [bc]
	sub [hl]
	and b
	ldh [rNR23], a
	ld b, [hl]
	nop
	jr nz, @+$22

	ld h, c
	add b
	ld bc, $8100
	ld [bc], a
	adc b
	add b
	ret nz

	add d
	ld bc, $1000
	jr nz, jr_001_7b13

	add b

jr_001_7b13:
	add c
	ld a, [hli]
	ld de, $5002
	add d
	ld hl, $6228
	ld a, [bc]
	add c
	and d
	nop
	ld [hli], a
	add b
	jr nz, jr_001_7b28

	jr nz, jr_001_7b26

jr_001_7b26:
	add b
	add b

jr_001_7b28:
	add d
	ld l, [hl]

jr_001_7b2a:
	add b
	sub d
	add d
	ld e, b
	add d
	jr nz, jr_001_7ad2

	cp l
	add d
	nop
	adc b
	add l
	ld [bc], a
	sub [hl]
	add b
	dec hl
	xor d
	nop
	and b
	db $eb
	ld a, [bc]
	ret nz

	jr nz, jr_001_7b42

jr_001_7b42:
	jr nz, jr_001_7b7c

	nop
	rla
	ld [bc], a
	ld a, [bc]
	add b
	inc d
	adc b
	add l
	nop
	ld a, e
	nop
	jr c, jr_001_7b71

	res 4, b
	ld b, $00
	inc h
	nop
	sub d
	adc b
	inc d
	nop
	ld b, d
	add b
	ld d, $02
	nop
	and b
	add c
	nop
	add b
	xor b
	add c
	ld [bc], a
	db $10
	add b
	pop de
	ld [$a880], sp
	ret


	adc b
	sub l
	add b

jr_001_7b71:
	ret nc

	and b
	ld a, [bc]
	ld [bc], a
	db $10
	jr z, @+$81

	and d
	ld c, e
	xor d
	ld c, d

jr_001_7b7c:
	adc b
	sbc c
	ld [hli], a
	jr @+$0c

	ld [hld], a
	jr nz, jr_001_7b96

	ld [$0059], sp
	ld d, b
	add b
	ld [$04a2], sp
	jr nz, jr_001_7bae

	nop
	ld e, d
	ld [hli], a
	inc b
	and d
	ld c, [hl]
	jr z, @+$3b

jr_001_7b96:
	inc b
	dec l
	add b
	dec b
	jr z, jr_001_7b2a

	ld [$0235], sp
	ld [hli], a
	ld a, [hli]
	db $10
	ld [$0026], sp
	ld b, h
	ld [$a262], sp
	ld b, $00
	ld d, b
	jr nz, @-$5c

jr_001_7bae:
	nop
	ld b, b
	nop
	ld h, d
	adc b
	jp nc, $1380

	adc d
	call nz, $410c
	jr nz, jr_001_7bbc

jr_001_7bbc:
	and b
	ld hl, $a008
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	add b
	ld [$a482], sp
	add b
	jp nz, $8408

	ld a, [bc]
	inc c
	add b
	or c
	nop
	ld h, b
	ld [hli], a
	ld sp, $3082
	adc b
	ret nc

	ld [$0aa0], sp
	ld d, $00
	ld b, $02
	ld c, b
	ld [$8220], sp
	sub d
	nop
	ld hl, $00a8
	add d
	ld h, l
	ld a, [hli]
	ld b, h
	ld [hli], a
	add d
	jr z, jr_001_7c14

	add b
	cp b
	jr nz, jr_001_7c58

	ld [$28f0], sp
	nop
	ld [bc], a
	sub d
	sbc e
	ret c

	nop
	nop
	stop
	nop
	nop
	and b
	nop
	nop
	nop
	nop
	nop
	ld bc, $4000
	nop
	inc b
	nop
	nop
	nop

jr_001_7c14:
	add hl, bc
	nop
	add b
	ld b, b
	add b
	db $10
	jr nz, jr_001_7c1c

jr_001_7c1c:
	nop
	nop
	nop
	nop
	ld [bc], a
	nop
	ld d, b
	nop
	nop
	inc b
	inc b
	nop
	nop
	nop
	ld [$0604], sp
	nop
	nop
	nop
	jr z, jr_001_7c32

jr_001_7c32:
	add d
	nop
	nop
	ld bc, $0040
	inc b
	ld de, $1000
	nop
	nop
	nop
	nop
	nop
	nop
	stop
	nop
	nop
	jr nz, jr_001_7c48

jr_001_7c48:
	nop
	ld b, b
	nop
	nop
	ld bc, $0400
	nop
	ld bc, $0800
	nop
	ld a, [hli]
	nop
	nop
	nop

jr_001_7c58:
	nop
	nop
	ld h, b
	nop
	nop
	nop
	nop
	nop
	jr z, jr_001_7c62

jr_001_7c62:
	add b
	nop
	and d
	db $10
	ld [$0900], sp
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	nop
	jr nz, jr_001_7c72

jr_001_7c72:
	adc b
	inc b
	nop
	nop
	ret nz

	inc d
	ld [bc], a
	nop
	ld [bc], a
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
	ld b, c
	ret nz

	nop
	nop
	nop
	ld a, [bc]
	nop
	ld [bc], a
	ld bc, $0008
	nop
	nop
	inc b
	nop
	nop
	nop
	adc b
	nop
	nop
	ld bc, $0102
	nop
	inc b
	ld bc, $0000
	nop
	nop
	nop
	nop
	nop
	ld hl, $0200
	nop
	nop
	nop
	stop
	nop
	inc b
	nop
	nop
	jr nz, jr_001_7cb4

jr_001_7cb4:
	nop
	db $10
	inc b
	stop
	nop
	jr nz, jr_001_7cbc

jr_001_7cbc:
	nop
	nop
	ld bc, $8040
	nop
	nop
	ld b, b
	ld [hld], a
	nop
	add b
	nop
	nop
	ld bc, $0040
	nop
	nop
	ld [$0000], sp
	nop
	ld bc, $0100
	nop
	nop
	inc b
	ld bc, $0020
	nop
	ld bc, $0000
	nop
	ld bc, $0040
	nop
	ld hl, $0000
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
	stop
	ld [bc], a
	nop
	nop
	nop
	nop
	ld b, b
	ld bc, $0000
	nop
	ld bc, $0804
	nop
	nop
	nop
	nop
	nop
	stop
	ld [$0000], sp
	nop
	nop
	nop
	nop
	db $10
	jr nz, jr_001_7d12

jr_001_7d12:
	nop
	nop
	ld bc, $0400
	db $10
	ld hl, $1000
	nop
	ld [de], a
	nop
	nop
	nop
	nop
	nop
	stop
	stop
	nop
	nop
	nop
	ld bc, $4000
	ld [bc], a
	nop
	ld b, c
	nop
	nop
	nop
	nop
	nop
	nop
	stop
	ld bc, $0402
	nop
	nop
	add h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld [$0000], sp
	nop
	inc b
	inc b
	nop
	nop
	nop
	nop
	add hl, hl
	nop
	nop
	nop
	stop
	ld [$0000], sp
	nop
	nop
	inc b
	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	nop
	nop
	ld b, b
	jr nz, jr_001_7d66

jr_001_7d66:
	nop
	ld bc, $0000
	ld bc, $0400
	ld bc, $1001
	nop
	nop
	jr nc, jr_001_7d74

jr_001_7d74:
	ld [$0144], sp
	inc b
	inc b
	nop
	nop
	ld b, b
	ld de, $0004
	nop
	nop
	nop
	add b
	inc b
	ld [bc], a
	nop
	add b
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
	add b
	nop
	nop
	nop
	nop
	nop
	ld [bc], a
	inc b
	sub b
	nop
	nop
	nop
	nop
	ld bc, $0000
	inc b
	nop
	ld h, c
	nop
	nop
	nop
	nop
	inc b
	ld c, b
	nop
	nop
	ld bc, $0040
	stop
	nop
	ld bc, $1001
	ld [bc], a
	nop
	ld b, b
	nop
	nop
	dec b
	jr jr_001_7dbf

	nop

jr_001_7dbf:
	nop
	nop
	nop
	nop
	nop
	nop
	db $10
	inc bc
	dec b
	nop
	nop
	nop
	ld bc, $0000
	ld [$0200], sp
	nop
	adc b
	ld b, b
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
	nop
	nop
	nop
	nop
	nop
	nop
	ld [$0080], sp
	nop
	db $10
	db $10
	stop
	nop
	db $10
	ld [$0010], sp
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
	dec b
	ld [$0200], sp
	nop
	nop
	nop
	nop
	ld bc, $1110
	nop
	db $10
	add b
	nop
	ld [bc], a
	nop
	nop
	nop
	nop
	nop
	ld [$4050], sp
	ld b, b
	nop
	nop
	jr nz, jr_001_7e2a

jr_001_7e2a:
	nop
	nop
	nop
	nop
	ld b, b
	nop
	nop
	nop
	stop
	db $10
	inc b
	nop
	nop
	nop
	nop
	nop
	ld bc, $0121
	nop
	nop
	nop
	nop
	ld [$0000], sp
	ld bc, $0004
	inc b
	nop
	nop
	nop
	nop
	inc b
	nop
	ld de, $1030
	nop
	nop
	nop
	nop
	add b
	stop
	nop
	nop
	nop
	nop
	nop
	nop
	ld bc, $1040
	adc b
	dec b
	jr nz, jr_001_7e66

jr_001_7e66:
	nop
	ld bc, $0024
	nop
	nop
	ld [$4000], sp
	ld bc, $0080
	nop
	nop
	add d
	ld de, $0019
	jr nz, jr_001_7e7a

jr_001_7e7a:
	ld [$0000], sp
	ld d, b
	nop
	nop
	nop
	nop
	add b
	inc b
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
	ld bc, $0004
	nop
	add c
	nop
	nop
	nop
	nop
	nop
	ld b, b
	ld bc, $4001
	jr nz, jr_001_7e9f

	nop

jr_001_7e9f:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld [hli], a
	nop
	jr jr_001_7eac

jr_001_7eac:
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, d
	nop
	stop
	ld [$0100], sp
	ld bc, $0402
	nop
	ld bc, $0008
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	jr nz, jr_001_7eca

jr_001_7eca:
	ld [$0000], sp
	nop
	nop
	nop
	ld bc, $0001
	nop
	inc b
	nop
	add b
	nop
	nop
	nop
	nop
	db $10
	ld bc, $0000
	nop
	jr nz, jr_001_7f22

	ld bc, $0800
	nop
	nop
	nop
	ld [$0804], sp
	nop
	nop
	nop
	ld d, d
	nop
	db $10
	stop
	ld b, b
	ld [$0000], sp
	nop
	nop
	nop
	add d
	nop
	ld bc, $0010
	nop
	ld [$0040], sp
	nop
	nop
	inc b
	jr nz, jr_001_7f08

jr_001_7f08:
	nop
	nop
	nop
	nop
	inc b
	nop
	nop
	nop
	add b
	db $10
	ld [$1000], sp
	nop
	ld bc, $1400
	nop
	inc c
	inc b
	inc d
	nop
	nop
	nop
	add h
	nop

jr_001_7f22:
	nop
	ld de, $0001
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	ld h, h
	inc b
	nop
	ld bc, $1004
	nop
	nop
	nop
	nop
	nop
	nop
	inc b
	nop
	add b
	ld bc, $0000
	ld b, b
	nop
	nop
	nop
	nop
	nop
	jr nz, jr_001_7f48

jr_001_7f48:
	nop
	nop
	ld d, b
	nop
	db $10
	ld b, b
	nop
	nop
	nop
	nop
	add b
	nop
	nop
	nop
	ld bc, $0000
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
	inc b
	ld [$0000], sp
	nop
	ld c, b
	nop
	nop
	nop
	nop
	nop
	nop
	ld b, b
	inc b
	nop
	ld de, $4000
	ld b, l
	nop
	add hl, bc
	jr jr_001_7f8c

	ld b, l
	nop
	nop
	ld b, $00
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

jr_001_7f8c:
	nop
	nop
	ld [bc], a
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
	inc b
	add b
	nop
	nop
	nop
	inc b
	nop
	inc b
	nop
	jr jr_001_7fa4

jr_001_7fa4:
	nop
	stop
	nop
	jr nz, jr_001_7fba

	add b
	nop
	nop
	nop
	ld bc, $0000
	nop
	jr nz, @+$04

	ld [$8000], sp
	nop
	db $10
	inc b

jr_001_7fba:
	add c
	inc b
	ld [bc], a
	nop
	ld d, b
	nop
	nop
	ld b, b
	nop
	nop
	ld [$0001], sp
	nop
	stop
	stop
	nop
	nop
	nop
	ld bc, $0000
	inc d
	nop
	stop
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
	inc b
	nop
	nop
	nop
	nop
	nop
	jr nz, jr_001_7ff2

jr_001_7ff2:
	nop
	ld bc, $0010
	ld bc, $0000
	nop
	nop
	nop
	nop
	inc b
	sbc l
	ld d, b
