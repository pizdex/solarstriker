; Created with mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

unk_001_4000:
	xor a
	ld hl, wcac0
	ld b, $10
.asm_4006
	ld [hli], a
	dec b
	jr nz, .asm_4006

	ld bc, unkData_001_40d5
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld a, $05
	ld [wca2c], a
	ld de, unk_001_401f
	jp Jump_000_0a53

unk_001_401f:
	ld a, [bc]
	call Call_000_0b4a
	ld de, unkData_000_373d
	call Call_000_0939
	ld de, $40dd
	call Call_000_0b03
	ld de, $2630
	call Func_000_0a3e
	ld de, unk_001_403b
	jp Jump_000_0a53

unk_001_403b:
	call Call_001_4627
	cp [hl]
	jr c, jr_001_4047

	ld de, unk_001_4050
	jp Jump_000_0a53

jr_001_4047:
	ld de, $40dd
	call Call_000_0b03
	jp Jump_001_4089

unk_001_4050:
	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld a, [hli]
	cp $a0
	jp nc, Jump_001_40a2

	ld de, wca63
	add $10
	ld [de], a
	inc de
	ld a, [hl]
	add $0c
	ld [de], a
	ld de, $40dd
	call Call_000_0b03
	ld de, unk_001_4072
	jp Jump_000_0a53

unk_001_4072:
	push bc
	call Call_000_09ec
	pop bc
	call Call_000_0a0c
	or a
	jr z, jr_001_4083

	ld de, $40ed
	call Call_000_0b03

jr_001_4083:
	ld de, $403b
	jp Jump_000_0a53

Jump_001_4089:
	ld a, $53
	call Call_000_0c57
	ld a, $01
	ld [wcac1], a
	ld [wca69], a
	ld de, $46d7
	call Func_000_0a3e
	ld de, unk_001_40b5
	jp Jump_000_0a53

Jump_001_40a2:
	ld a, $01
	ld [wcac1], a
	ld hl, wca69
	ld [hli], a
	ld [hl], a
	ld de, $46d7
	call Func_000_0a3e
	jp Jump_001_46ea

unk_001_40b5:
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
	cp $05
	jp z, Jump_001_46ea

	ld hl, unkData_001_4686
	call Call_001_465d
	jp Jump_000_047e

unkData_001_40d5:
	db $24, $10, $10, $00, $00, $20, $20, $70, $6c, $00, $6e, $00, $6e, $20, $6c, $20
	db $70, $00, $72, $00, $72, $20, $70, $20, $6c, $10, $6e, $10, $6e, $30, $6c, $30
	db $70, $10, $72, $10, $72, $30, $70, $30

unk_001_40fd:
	xor a
	ld hl, wcac0
	ld b, $10
.asm_4103
	ld [hli], a
	dec b
	jr nz, .asm_4103

	ld bc, unkData_001_41b8
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld de, unk_000_25d9
	call Func_000_0a3e
	ld de, unk_001_411d
	jp Jump_000_0a53

unk_001_411d:
	ld a, [bc]
	ld [wcf99], a
	call Call_000_0b4a

	ld de, unkData_000_37bf
	call Call_000_0939
	ld de, $41c0
	call Call_000_0b03
	ld de, unk_001_4136
	jp Jump_000_0a53

unk_001_4136:
	call Call_001_4627
	cp [hl]
	jr c, jr_001_4147

	ld a, $05
	ld [wca2c], a
	ld de, unk_001_4150
	jp Jump_000_0a53

jr_001_4147:
	ld de, $41c0
	call Call_000_0b03
	jp Jump_001_4089

unk_001_4150:
	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld a, [hl]
	cp $a0
	jp nc, Jump_001_41a7

	call Call_000_09b8
	or a
	jr nz, jr_001_4184

	ld de, wca63
	ld bc, $100c
	call Call_000_0a2e

	ld a, $06
	ld [de], a
	ld hl, wca14
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
	call Func_000_0a3e

jr_001_4184:
	ld de, $41c0
	call Call_000_0b03
	ld de, $4190
	jp Jump_000_0a53

unk_001_4190:
	push bc
	call Call_000_09ec
	pop bc
	call Call_000_0a0c
	or a
	jr z, .asm_41a1

	ld de, $41d0
	call Call_000_0b03

.asm_41a1
	ld de, $4136
	jp Jump_000_0a53

Jump_001_41a7:
	ld a, $01
	ld [wcac1], a
	ld [wca69], a
	ld de, $46d7
	call Func_000_0a3e
	jp Jump_001_46ea

unkData_001_41b8:
	db $24, $10, $10, $02, $02, $1c, $1c, $60, $8c, $00, $8e, $00, $8e, $20, $8c, $20
	db $90, $00, $92, $00, $92, $20, $90, $20, $8c, $10, $8e, $10, $8e, $30, $8c, $30
	db $90, $10, $92, $10, $92, $30, $90, $30

unk_001_41e0:
	xor a
	ld hl, wcac0
	ld b, $10
.asm_41e6
	ld [hli], a
	dec b
	jr nz, .asm_41e6
	ld [wcf99], a
	ld bc, unkData_001_428d
	call Call_000_0947
	or a
	jp z, Jump_000_0a67
	ld de, unk_001_41fd
	jp Jump_000_0a53

unk_001_41fd:
	ld a, [bc]
	call Call_000_0b4a
	ld de, $38c9
	call Call_000_0939
	ld de, $4295
	call Call_000_0b03
	ld de, $4213
	jp Jump_000_0a53


	call Call_001_4627
	cp [hl]
	jp c, Jump_001_4225

	ld a, $05
	ld [wca2c], a
	ld de, $422e
	jp Jump_000_0a53

Jump_001_4225:
	ld de, $4295
	call Call_000_0b03
	jp Jump_001_4089


	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld a, [hl]
	cp $a0
	jp nc, Jump_001_427c

	ld hl, wcf99
	inc [hl]
	ld a, [hl]
	cp $0b
	jr nz, jr_001_4259

	xor a
	ld [hl], a
	ld de, wca63
	ld bc, $100c
	call Call_000_0a2e

	ld a, $03
	ld [de], a
	inc de
	xor a
	ld [de], a
	ld de, $11a1
	call Func_000_0a3e

jr_001_4259:
	ld de, $4295
	call Call_000_0b03
	ld de, $4265
	jp Jump_000_0a53


	push bc
	call Call_000_09ec
	pop bc
	call Call_000_0a0c
	or a
	jr z, jr_001_4276

	ld de, $42a5
	call Call_000_0b03

jr_001_4276:
	ld de, $4213
	jp Jump_000_0a53

Jump_001_427c:
	ld a, $01
	ld [wcac1], a
	ld [wca69], a
	ld de, $46d7
	call Func_000_0a3e
	jp Jump_001_46ea

unkData_001_428d:
	db $24, $10, $10, $02, $02, $1c, $1c, $60, $64, $00, $66, $00, $66, $20, $64, $20
	db $68, $00, $6a, $00, $6a, $20, $68, $20, $64, $10, $66, $10, $66, $30, $64, $30
	db $68, $10, $6a, $10, $6a, $30, $68, $30

unkData_001_42b5:
	xor a
	ld hl, wcac0
	ld [hli], a
	ld [hl], a
	ld b, $05

jr_001_42bd:
	push bc
	ld de, unk_001_42cb
	call Func_000_0a3e
	pop bc
	dec b
	jr nz, jr_001_42bd
	jp Jump_000_0a67

unk_001_42cb:
	ld bc, $43b7
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld hl, wca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $0011
	add hl, de
	ld de, wcac0
	ld a, [de]
	ld [hl], a
	inc a
	ld [de], a
	ld de, unk_001_42ec
	jp Jump_000_0a53

unk_001_42ec:
	ld a, [bc]
	push bc
	call Call_000_0b4a
	ld hl, $0011
	add hl, bc
	ld a, [hl]
	add a
	ld l, a
	ld h, 0
	ld de, $43ad
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	call Call_000_0939
	pop bc
	ld hl, $0011
	add hl, bc
	ld a, [hl]
	push af
	ld hl, $0f3c
	call Call_000_0f2f
	ld bc, $43b7
	call Call_000_0b38
	pop af
	ld de, $43bf
	or a
	jr nz, jr_001_4321

	ld de, $43c3

jr_001_4321:
	call Call_000_0b03
	ld de, unk_001_432a
	jp Jump_000_0a53

unk_001_432a:
	call Call_001_4627
	cp [hl]
	jr c, jr_001_433d

	ld a, [wcac1]
	or a
	jp nz, Jump_000_0bbb

	ld de, $4355
	jp Jump_000_0a53

jr_001_433d:
	ld hl, wca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $0011
	add hl, de
	ld d, $23
	ld a, [hl]
	or a
	jp nz, Jump_000_0bbb

	inc a
	ld [wcac1], a
	jp Jump_000_0bbb


	call Call_000_09ec
	ld hl, wca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld bc, $0011
	add hl, bc
	ld a, [hl]
	or a
	jr nz, jr_001_436e

	ld de, $43c3
	call Call_000_0b03
	jr jr_001_4374

jr_001_436e:
	ld de, $43bf
	call Call_000_0b03

jr_001_4374:
	ld de, $437a
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc hl

jr_001_437f:
	ld a, [hl]
	cp $a0
	jp nc, Jump_000_0a64

	call Call_000_0a0c
	or a
	jr z, jr_001_43a7

	ld hl, wca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld bc, $0011
	add hl, bc
	ld a, [hl]
	or a
	jr nz, jr_001_43a1

	ld de, $43cb
	call Call_000_0b03
	jr jr_001_43a7

jr_001_43a1:
	ld de, $43c7
	call Call_000_0b03

jr_001_43a7:
	ld de, $432a
	jp Jump_000_0a53


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

	ld hl, wcac0
	ld [hli], a
	ld [hl], a
	ld b, $04

jr_001_43d7:
	push bc
	ld de, $43e5
	call Func_000_0a3e
	pop bc
	dec b
	jr nz, jr_001_43d7

	jp Jump_000_0a67


	ld de, wcac0
	ld a, [de]
	xor $07
	add $02
	ld [wcab6], a
	ld bc, $44d6
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld hl, wca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $0011
	add hl, de
	ld de, wcac0
	ld a, [de]
	ld [hl], a
	inc a
	ld [de], a
	ld de, $4411
	jp Jump_000_0a53


	ld a, [bc]
	push bc
	call Call_000_0b4a
	ld hl, $0011
	add hl, bc
	ld a, [hl]
	add a
	ld l, a
	ld h, 0
	ld de, unkData_001_44ce
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	call Call_000_0939
	pop bc
	ld hl, $0011
	add hl, bc
	ld a, [hl]
	ld hl, $0f29
	call Call_000_0f0f
	ld bc, $44d6

jr_001_4438:
	call Call_000_0b38
	ld de, unkData_001_44de

jr_001_443e:
	call Call_000_0b03
	ld de, $4447
	jp Jump_000_0a53


	call Call_001_4627
	cp [hl]
	jr c, jr_001_4453

	ld de, $445f
	jp Jump_000_0a53


jr_001_4453:
	ld de, unkData_001_44de
	call Call_000_0b03
	ld de, unk_001_44ac
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld a, [hl]
	cp $a0
	jp nc, Jump_000_0a64

	ld de, $0004
	add hl, de
	xor a
	ld [hl], a
	call Call_000_09b8
	or a
	jr nz, jr_001_4489

	ld de, wca60
	ld a, [de]
	or a
	jr nz, jr_001_4489

	ld bc, $1c00
	call Call_000_0a2e
	ld de, $1141
	call Func_000_0a3e

jr_001_4489:
	ld de, unkData_001_44de
	call Call_000_0b03
	ld de, unk_001_4495
	jp Jump_000_0a53

unk_001_4495:
	push bc
	call Call_000_09cd
	pop bc
	call Call_000_0a0c
	or a
	jr z, jr_001_44a6

	ld de, $44e2
	call Call_000_0b03

jr_001_44a6:
	ld de, $4447
	jp Jump_000_0a53

unk_001_44ac:
	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld de, wca34
	ld a, [hli]
	add $10
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ld de, unk_000_0ff5
	call Func_000_0a3e
	ld hl, unkData_001_734c
	ld a, $01
	call Call_001_49aa
	ld d, $33
	jp Jump_000_0bbb

unkData_001_44ce:
	dr $44ce, $44de

unkData_001_44de:
	dr $44de, $44e6

unk_001_44e6:
	xor a
	ld hl, wcac0
	ld [hli], a
	ld [hl], a
	ld b, 2
.asm_44ee
	push bc
	ld de, unk_001_44fc
	call Func_000_0a3e
	pop bc
	dec b
	jr nz, .asm_44ee
	jp Jump_000_0a67

unk_001_44fc:
	ld de, wcac0
	ld a, [de]
	xor 7
	ld [wcab6], a
	ld bc, unkData_001_45ff
	call Call_000_0947
	or a
	jp z, Jump_000_0a67

	ld hl, wca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $0011
	add hl, de
	ld de, wcac0
	ld a, [de]
	ld [hl], a
	inc a
	ld [de], a
	ld de, $4526
	jp Jump_000_0a53


	ld a, [bc]
	push bc
	call Call_000_0b4a
	ld hl, $0011
	add hl, bc
	ld de, $3c45
	ld a, [hl]
	or a
	jr z, jr_001_4539

	ld de, $3c67

jr_001_4539:
	call Call_000_0939
	pop bc
	ld hl, $0011
	add hl, bc
	ld a, [hl]
	push af
	ld hl, $0f2d
	call Call_000_0f0f
	ld bc, unkData_001_45ff
	call Call_000_0b38
	pop af
	ld de, $4607
	or a
	jr z, jr_001_4559

	ld de, $460f

jr_001_4559:
	call Call_000_0b03
	ld de, unk_001_4562
	jp Jump_000_0a53

unk_001_4562:
	call Call_001_4627
	cp [hl]
	jr c, .asm_456e

	ld de, $4590
	jp Jump_000_0a53

.asm_456e:
	ld hl, wca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld bc, $0011
	add hl, bc
	ld de, $460f
	ld a, [hl]
	or a
	jr nz, .asm_4582

	ld de, $4607
.asm_4582:
	call Call_000_0b03
	ld a, $14
	call Call_000_0c57
	ld de, unk_001_463d
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	inc hl
	ld a, [hl]
	cp $a0
	jp nc, Jump_000_0a64

	call Call_000_09b8
	or a
	jr nz, jr_001_45b6

	ld de, wca63
	ld bc, $1008
	call Call_000_0a2e

	ld a, $02
	ld [de], a
	inc de
	xor a
	ld [de], a
	ld de, $11a1
	call Func_000_0a3e

jr_001_45b6:
	ld de, $45bc
	jp Jump_000_0a53


	call Call_000_09ec
	ld hl, wca12
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
	call Call_000_0b03
	ld de, $45dc
	jp Jump_000_0a53


	call Call_000_0a0c
	or a
	jr z, jr_001_45f9

	ld hl, wca12
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
	call Call_000_0b03

jr_001_45f9:
	ld de, unk_001_4562
	jp Jump_000_0a53

unkData_001_45ff:
	dr $45ff, $4627

Call_001_4627:
	ld a, [bc]
	call Call_000_0b4a
	call Call_000_0ce4
	call Call_000_0b1e
	ld hl, wca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $000c
	add hl, de
	ld a, [hli]
	ret

unk_001_463d:
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
	cp $05
	jp z, Jump_000_0a64

	ld hl, unkData_001_4686
	call Call_001_465d
	jp Jump_000_047e

Call_001_465d::
	add a
	ld c, a
	ld b, 0
	add hl, bc
	push hl
	ld hl, wca14
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	pop bc
	ld de, wca34
	ld a, [bc]
	add [hl]
	ld [de], a
	inc bc
	inc de
	inc hl
	ld a, [bc]
	add [hl]
	ld [de], a
	ld de, unk_000_0ff5
	call Func_000_0a3e
	ld hl, unkData_001_734c
	ld a, $01
	call Call_001_49aa
	ret

unkData_001_4686:
	db $08, $08, $10, $10, $10, $00, $00, $10, $00, $00

	ld hl, wca12
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $0011
	add hl, de
	ld de, wcac0
	ld a, [de]

jr_001_469e:
	ld [hl], a
	inc a
	ld [de], a
	ret

unk_001_46a2::
	ld a, [bc]
	call Call_000_0b4a
	ld hl, $001c
	add hl, bc
	ld a, [hl]
	inc [hl]
	ret

unk_001_46ad::
	ld a, [bc]
	call Call_000_0b4a
	ld a, [wcac1]
	or a
	jp nz, Jump_000_0a64

	ld de, $46be
	jp Jump_000_0a53


	ld a, [bc]
	call Call_000_0b4a
	ld de, $0000
	call Call_000_0b1e
	ld de, $46ce
	jp Jump_000_0a53


	call Call_000_09ec
	ld de, unk_001_46ad
	jp Jump_000_0a53


	ld hl, wcac3
	inc [hl]
	ld a, [hli]
	cp $20
	jp c, Jump_000_047e

	ldh a, [rLCDC]
	and $fe
	ldh [rLCDC], a
	jp Jump_000_0a67

Jump_001_46ea::
	ld a, [wCurrentStage]
	cp 6
	jr nz, .not_final_stage

	ld de, unk_000_2cbe
	call Func_000_0a3e
	jp Jump_000_0a64

.not_final_stage
	ld de, unk_000_2af4
	call Func_000_0a3e
	jp Jump_000_0a64

unkData_001_4703:
	dr $4703, $4803

unkData_001_4803:
	db $ff, $cc, $aa, $aa, $aa, $88, $88, $77, $ff, $55, $77, $99, $aa, $bb, $dd, $ff
	db $fe, $dc, $ba, $98, $89, $ab, $cd, $ef, $89, $ab, $cd, $ef, $fe, $dc, $ba, $98
	db $fd, $b9, $75, $31, $ec, $a8, $64

unkData_001_482a:
	dr $482a, $4863

unkData_001_4863:
	db $bb, $aa, $66, $66, $44, $44, $22, $22, $ff, $ff, $88, $aa, $88, $77, $66, $55
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

unkData_001_487b:
	db $00, $ff, $00, $00, $01, $00, $00, $ff, $00, $01, $00, $80

unkData_001_4887:
	db $01, $ff, $01, $ff, $01, $ff, $01, $ff, $01, $ff, $80

unkData_001_4892:
	dr $4892, $489c

unkData_001_489c:
	dr $489c, $48a2

unkData_001_48a2:
	dr $48a2, $48a9

unkData_001_48a9:
	dr $48a9, $48b3

unkData_001_48b3:
	dr $48b3, $48bd

unkData_001_48bd:
	dr $48bd, $48c7

unkData_001_48c7:
	dr $48c7, $48d1

unkData_001_48d1:
	dr $48d1, $48db

unkData_001_48db:
	dr $48db, $48e5

unkData_001_48e5:
	dr $48e5, $48ef

unkData_001_48ef:
	dr $48ef, $48f9

unkData_001_48f9:
	dr $48f9, $490b

unkData_001_490b:
	db $00, $80
	dw unkData_001_487b
	dw unkData_001_4887
	dw unkData_001_4892
	dw unkData_001_489c
	dw unkData_001_48a2
	dw unkData_001_48a9
	dw unkData_001_48b3
	dw unkData_001_48bd
	dw unkData_001_48c7
	dw unkData_001_48d1
	dw unkData_001_48db
	dw unkData_001_48e5
	dw unkData_001_48ef
	dw unkData_001_48f9
	db $03

unkData_001_492a:
; Percussion?
	dw $6d49
	db $15, $04, $19, $00, $12, $37, $70, $65, $8a, $8f, $d0, $d4, $60, $64, $70, $73, $19, $5a, $45, $65, $67, $69, $6b, $6d, $6e, $60, $63, $d4, $d8, $df, $65, $6a, $02, $04, $07, $55, $0a, $4f, $80, $87, $8a, $8f, $d0, $d4, $d8, $df, $3a, $6d

INCLUDE "engine/audio.asm"

unk_001_4dee:
	ld hl, $0008
	add hl, bc
	ld a, [hl]
	ld [wcd77], a
	ld hl, $000a
	add hl, bc
	ld [hl], $00
	ld a, $01
	ld hl, $000e
	add hl, bc
	ld [hl], a
	jr jr_001_4e78

unk_001_4e05:
	ld a, d
	and $ff
	jr z, unk_001_4dee

	ld hl, unkData_001_492a
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld a, [hl]
	cp $e0
	jr c, .asm_4e19
	xor a

.asm_4e19
	ld hl, $0029
	add hl, bc
	ld [hl], a
	ld hl, $0014
	add hl, bc
	ld [hl], $00
	ld hl, $0007
	add hl, bc
	ld a, [hl]
	ld [wcd77], a

jr_001_4e2c:
	ld hl, $0009
	add hl, bc
	ld h, [hl]
	ld a, [wcd85]
	sub h
	jr z, .asm_4e39
	jr nc, .asm_4e3b

.asm_4e39
	ld a, $01

.asm_4e3b
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
	ld hl, unkData_001_490b
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld a, [hli]
	ld e, [hl]
	ld hl, $0019
	add hl, bc
	ld [hli], a
	ld [hl], e

jr_001_4e78:
	ld a, [wcd85]
	ld hl, $000b
	add hl, bc
	ld [hl], a
	push bc
	ld hl, $0004
	add hl, bc
	ld c, [hl]
	ld a, [wcd77]
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
	jr nz, .asm_4ebe

	ld a, b
	rlca
	rlca
	and $03
	push hl
	ld hl, .data_4ec0
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld b, [hl]
	pop hl

.asm_4ebe
	ld a, b
	ret

.data_4ec0
	db $00, $60, $40, $20

Jump_001_4ec4:
	and $0f
	jp z, .asm_4ed9

	ld e, a
	ld hl, $001c
	add hl, bc
	ld a, [hl]
	or a
	jr z, .asm_4ed8
	dec [hl]
	jr nz, .asm_4ed9
	jp Jump_001_4d49

.asm_4ed8:
	ld [hl], e

.asm_4ed9:
	ld a, [wcd85]
	ld l, a
	ld h, 0
	cp $80
	jr c, .asm_4ee4
	dec h

.asm_4ee4:
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

	ld [wcd76], a
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

	ld a, [wcc0d]
	ld e, a
	ld a, [wcc0e]
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
	ld b, 0
	ld hl, $0023
	add hl, de
	add hl, bc
	ld a, [wcd76]
	ld [hl], a
	jr jr_001_4f64

jr_001_4f52:
	ld b, 0
	ld a, [wcc0d]
	ld e, a
	ld a, [wcc0e]
	ld d, a
	ld hl, $0023
	add hl, de
	add hl, bc
	dec [hl]
	jr z, jr_001_4f8d

Jump_001_4f64:
jr_001_4f64:
	ld a, [wcd85]
	ld l, a
	ld h, 0
	cp $80
	jr c, jr_001_4f6f
	dec h

jr_001_4f6f:
	ld a, [wcc0d]
	ld c, a
	ld a, [wcc0e]
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
	ld b, 0
	ld hl, $001d
	add hl, de
	add hl, bc
	ld [hl], 0
	inc hl
	ld [hl], 0
	jp Jump_001_4d49

Jump_001_4f9f:
	ld hl, Jump_001_4d49
	push hl

	cp $ed
	ret c

; Get index from table
	ld hl, $0004
	add hl, bc
	ld a, [hl]
	add a
	ld hl, unkHeader_001_4fcb - 2
	add l
	ld l, a
	ld a, 0
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
	ld a, 0
	adc h
	ld h, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	or h
	ret z

	ld a, [wcd85]
	ld d, a
	jp hl

unkHeader_001_4fcb:
	dw unkData_001_4fd3
	dw unkData_001_4ff9
	dw unkData_001_501f
	dw unkData_001_5045

unkData_001_4fd3:
	dw unk_001_506b
	dw unk_001_5088
	dw unk_001_5090
	dw Call_001_5098
	dw unk_001_50b4
	dw unk_001_50bc
	dw unk_001_50c2
	dw unk_001_50d9
	dw unk_001_50df
	dw unk_001_50ef
	dw unk_001_50f5
	dw unk_001_50fb
	dw NULL
	dw NULL
	dw unk_001_5123
	dw unk_001_5126
	dw unk_001_50e7
	dw unk_001_512e
	dw unk_001_5134

unkData_001_4ff9:
	dw unk_001_506b
	dw unk_001_5088
	dw unk_001_5090
	dw Call_001_5098
	dw unk_001_50b4
	dw unk_001_50bc
	dw unk_001_50c2
	dw unk_001_50d9
	dw unk_001_50df
	dw unk_001_50ef
	dw NULL
	dw unk_001_50fb
	dw NULL
	dw NULL
	dw unk_001_5123
	dw unk_001_5126
	dw unk_001_50e7
	dw unk_001_512e
	dw unk_001_5134

unkData_001_501f:
	dw unk_001_506b
	dw unk_001_5088
	dw unk_001_5090
	dw Call_001_5098
	dw NULL
	dw unk_001_50bc
	dw unk_001_50c2
	dw unk_001_50d9
	dw unk_001_50df
	dw unk_001_50ef
	dw NULL
	dw NULL
	dw NULL
	dw Call_001_5108
	dw unk_001_5123
	dw unk_001_5126
	dw unk_001_50e7
	dw unk_001_512e
	dw unk_001_5134

unkData_001_5045:
	dw unk_001_506b
	dw unk_001_5088
	dw unk_001_5090
	dw Call_001_5098
	dw unk_001_50b4
	dw unk_001_50bc
	dw unk_001_50c2
	dw unk_001_50d9
	dw NULL
	dw NULL
	dw NULL
	dw NULL
	dw NULL
	dw NULL
	dw unk_001_5123
	dw unk_001_5126
	dw NULL
	dw unk_001_512e
	dw NULL

unk_001_506b:
	pop hl
	ld a, [wcc0c]
	ld e, a
	ld d, 0
	ld hl, wcc14
	add hl, de
	ld [hl], 0
	ld hl, wcc20
	add hl, de
	ld [hl], 0
	call Call_001_5431
	xor a
	ld hl, $0007
	add hl, bc
	ld [hl], a
	ret

unk_001_5088:
	and $0f
	ld hl, $0007
	add hl, bc
	ld [hl], a
	ret

unk_001_5090:
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

unk_001_50b4:
	and $0f
	ld hl, $0013
	add hl, bc
	ld [hl], a
	ret

unk_001_50bc:
	ld hl, $000d
	add hl, bc
	ld [hl], a
	ret

unk_001_50c2:
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

unk_001_50d9:
	ld hl, $0009
	add hl, bc
	ld [hl], a
	ret

unk_001_50df:
	and $0f
	ld hl, $0014
	add hl, bc
	ld [hl], a
	ret

unk_001_50e7:
	and $0f
	ld hl, $0017
	add hl, bc
	ld [hl], a
	ret

unk_001_50ef:
	ld hl, $0015
	add hl, bc
	ld [hl], a
	ret

unk_001_50f5:
	ld hl, $0026
	add hl, bc
	ld [hl], a
	ret

unk_001_50fb:
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
	ld hl, unkData_001_4703
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld de, _AUD3WAVERAM
	ld bc, $10
	jp CopyBytesAF

unk_001_5123:
	ldh [rNR50], a
	ret

unk_001_5126:
	ld hl, $0004
	add hl, bc
	ld e, [hl]
	jp Jump_001_5411

unk_001_512e:
	ld hl, $001b
	add hl, bc
	ld [hl], a
	ret

unk_001_5134:
	ld hl, $0005
	add hl, bc
	ld [hl], a
	ret

Call_001_513a:
	ld c, 0
	ld hl, wcc7e
	ld de, wcc15
.asm_5142:
	push de
	push hl
	ld a, [de]
	or a
	jr z, .asm_515b

	ld a, [hli]
	or a
	jr z, .asm_515b

	ld b, a
	ld a, [hli]
	dec [hl]
	jr nz, .asm_515b

	ld [hl], a
	push bc
	ld a, c
	ld [wcd74], a
	call Call_001_5169
	pop bc

.asm_515b:
	pop hl
	ld de, $002b
	add hl, de
	pop de
	inc de
	inc c
	ld a, c
	cp 6
	jr c, .asm_5142
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
	ld b, 0
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
	ld a, [wcd74]
	ld c, a
	ld b, 0
	ld hl, wcc21
	add hl, bc
	ld [hl], $ff
	ret

unk_001_51d7:
	cp $fd
	ei
	rst $30

unk_001_51db:
	ld c, $00
	ld hl, wcc86
	ld de, wcc15

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
	ld [wcd74], a
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
	ld hl, unkData_001_490b
	add l
	ld l, a
	ld a, 0
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
	ld b, 0
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
	ld a, [wcd74]
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
	ld [wcc37], a
	ld c, $00
	ld hl, wcc27

jr_001_5281:
	ld a, [hl]
	or a
	jr z, jr_001_52be

	ld b, a
	push hl
	ld hl, wcc1a
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld a, [wcc37]
	or [hl]
	ld [wcc37], a
	ld a, b
	ld hl, wcc20
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

	ld a, [wcc37]
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
	ld b, 0
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
	call CopyBytesAF
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

unkData_001_5320:
	db $10, $ff, $05, $16, $ff, $04, $1a, $ff, $05, $20, $ff, $04

Call_001_532c:
	ld a, [wcc01]
	ld c, a
	ld b, $06
	ld hl, wcc0f
	ld de, wcc15

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

	ld a, [wcc38]
	or a
	jr z, jr_001_5356

	cp $ff
	jr z, jr_001_5351

	dec a
	ld [wcc38], a

jr_001_5351:
	call Call_001_535e

Call_001_5354:
	or a
	ret

jr_001_5356:
	ld a, [wcc01]
	call Call_001_4be5
	scf
	ret

Call_001_535e:
	ld a, [wcc01]
	ld c, a
	ld b, 6
	ld hl, wcc0f
.asm_5367:
	ld a, [hl]
	cp c
	jr nz, .asm_5375

	ld a, 7
	sub b
	push hl
	push bc
	call Call_001_537a
	pop bc
	pop hl

.asm_5375
	inc hl
	dec b
	jr nz, .asm_5367
	ret

Call_001_537a:
	ld [wcc0c], a
	call Call_001_4bac

	ld a, [wcc47]
	ld [wcc49], a
	ld a, [wcc48]
	ld [wcc4a], a

	ld hl, wcc4c
	ld de, wcc4d
	ld bc, $25
	ld [hl], 0
	call CopyBytesAF

	ld a, 0
	ld [wcc50], a

	ld a, 2
	ld [wcc54], a
	ld a, 2
	ld [wcc5e], a

	ld a, 40
	ld [wcc5c], a

	ld a, 15
	ld [wcc4e], a

	ld a, 1
	ld [wcc52], a
	ld [wcc55], a

	ld a, [wcc4b]
	ld e, a
	ld a, 3
	call Call_001_5411

	xor a
	call Call_001_5098

	ld a, 8
	ld [wcc6d], a
	ld a, [wcc4b]
	cp 3
	jr nz, jr_001_53dd

	ld a, $80
	ld [wcc6d], a
	xor a
	call Call_001_5108

jr_001_53dd:
	ld a, [wcc4b]
	add a
	ld hl, .data_5409 - 2
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld a, [hli]
	ld h, [hl]
	ld l, a

	ld a, 0
	ldh [rNR50], a
	ld [hl], %00001000
	ld a, %01110111
	ldh [rNR50], a

	ld a, [wcc0c]
	ld hl, wcc14
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld [hl], $ff
	call Call_001_4bc0
	ret

.data_5409
	dw rNR12
	dw rNR22
	dw rNR32
	dw rNR42

Call_001_5411:
Jump_001_5411:
	and $03
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
	ld a, [wcc0c]
	ld hl, wcc1a
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld [hl], d
	ret

Call_001_5431:
	ld hl, 4
	add hl, bc
	ld a, [hl]
; fallthrough

Call_001_5436:
	add a
	ld hl, unkData_001_5459 - 2
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	push hl

; Channel volume
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, 0 ; Mute
	ldh [rNR50], a
	ld [hl], %00001000
	ld a, %01110111
	ldh [rNR50], a

; Channel freq hi
	pop de
	ld hl, 8
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld [hl], %10000000
	ret

unkData_001_5459:
	dw rNR12
	dw rNR22
	dw rNR32
	dw rNR42

	dw rNR14
	dw rNR24
	dw rNR34
	dw rNR44

INCLUDE "data/notes.asm"

INCLUDE "engine/copy.asm"

INCLUDE "data/music.asm"

unkData_001_72d1::
; Bullet fire noise?
	db $01, $00
	dw unkData_001_72de
	db $04, $00, $00, $00, $00, $00, $01, $00, $00

unkData_001_72de:
	db $f0, $03, $f5, $2e, $f4, $40, $fc, $0d, $fa, $06, $fe, $0a, $fd, $01, $60, $04
	db $ff

unkData_001_72ef::
	db $02, $00
	dw unkData_001_72fc
	db $04, $00, $00, $00, $00, $00, $01, $00, $00

unkData_001_72fc:
	db $f0, $03, $fe, $08, $f5, $2f, $fc, $0f, $fd, $08, $fa, $01, $f4, $80, $f8, $00, $57, $04, $00, $02
	db $ff

unkData_001_7311::
	db $03, $00
	dw unkData_001_731e
	db $04, $00, $00, $00, $00, $00, $01, $00, $00

unkData_001_731e:
	db $f0, $03, $f5, $08, $f4, $00, $fb, $02, $fe, $07, $fd, $01, $60, $04
	db $ff

unkData_001_732d::
	db $03, $00, $00, $00, $00, $00, $00, $01, $00, $00, $02, $3b, $73, $05, $f0, $03
	db $fe, $0c, $f1, $77, $fd, $05, $fb, $01, $f9, $04, $10, $02, $00, $02, $ff

unkData_001_734c:
	db $02
	db $02, $00, $00, $00, $00, $00, $01, $00, $00, $02, $5a, $73, $05, $fe, $0b, $fd
	db $02, $f0, $03, $10, $02, $fe, $09, $f0, $01, $10, $02, $fe, $06, $f0, $02, $10
	db $02, $fe, $09, $fd, $04, $f0, $03, $10, $04, $fe, $09, $f0, $01, $10, $06, $fe
	db $06, $f0, $03, $10, $04, $f0, $01, $10, $01, $f0, $03, $10, $01, $f0, $02, $10
	db $01, $f0, $03, $fe, $03, $10, $06

	cp $01
	db $fd
	nop
	db $10
	inc b
	rst $38

unkData_001_739b::
	db $03, $03, $00, $00, $00, $00, $00, $01, $00, $00, $02, $a9, $73, $05, $fe, $0f
	db $fd, $02, $f0, $03, $fb, $07, $f9, $04, $0f, $0f, $fe, $0d, $f0, $01, $0f, $06
	db $fe, $08, $f0, $02, $0f, $04, $f0, $01, $0f, $02, $f0, $02, $0f, $01, $f0, $01
	db $0f, $01, $f0, $01, $0f, $01, $fe, $04, $f0, $03, $0f, $08, $ff, $01, $01, $e5
	db $73, $04, $00, $00, $01, $00, $00, $02, $00, $00

unkData_001_73e5:
	db $fe, $08, $f5, $0d, $fc, $00
	db $fb, $02, $f8, $00, $f0, $03, $f4, $40, $60, $01, $50, $01, $57, $01, $47, $01
	db $59, $01, $49, $01, $ff, $00, $01, $0d, $74, $04, $00, $00, $01, $00, $00, $02
	db $00, $00, $fe, $08, $f5, $08, $fc, $00, $fb, $05, $f8, $00, $f0, $03, $f4, $40
	db $ed, $f4, $60, $01, $70, $01, $5b, $01, $6b, $01, $4a, $01, $5a, $01, $59, $01
	db $69, $01, $57, $01, $67, $01, $56, $01, $66, $01, $55, $01, $65, $01, $54, $01
	db $64, $01, $50, $01, $60, $01, $49, $01, $59, $01, $47, $01, $57, $01, $ff, $03
	db $01, $00, $00, $00, $00, $00, $01, $00, $00, $02, $58, $74, $05, $fe, $07, $fd
	db $02, $f0, $03, $fb, $05, $f9, $04, $0e, $0d, $ff, $d7

unkData_001_7466:
	dr $7466, $8000
