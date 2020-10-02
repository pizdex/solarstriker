InitSound::
	call ClearSound
	ld a, %10000000 ; all channels on (again)
	ldh [rNR52], a

	ld a, %01110111 ; max
	ldh [rNR50], a ; channel volume

	ld a, %11111111
	ldh [rNR51], a

; fill wcc00 to wcd86 with zero
	ld hl, wcc00
	ld de, wcc01
	ld bc, $186
	ld [hl], 0
	call CopyBytesAF
	ei
	ret

ClearSound:
	di
	ld a, 0
	ldh [rNR50], a ; channel volume

	ld a, %10000000 ; all channels on
	ldh [rNR52], a

	ld a, %00001000
	ldh [rNR12], a ; channel 1 volume
	ldh [rNR22], a ; channel 2 volume
	ldh [rNR42], a ; channel 4 volume

	ld a, %10000000 ; restart sound output
	ldh [rNR14], a ; channel 1 freq hi
	ldh [rNR24], a ; channel 2 freq hi
	ldh [rNR44], a ; channel 4 freq hi

	xor a ; mute
	ldh [rNR32], a ; channel 3 output level

	ld a, %10001111 ; all channels on (useless)
	ldh [rNR52], a

	ld a, %01110111 ; max
	ldh [rNR50], a ; channel volume
	ret

unk_001_49a0:
	ld hl, wcc03
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hl]
	or a
	ret

Call_001_49aa::
; Play music
	or a
	jr nz, .asm_49ae
	dec a

.asm_49ae
	ld [wcd7f], a
	ld a, l
	ld [wcd81], a
	ld a, h
	ld [wcd82], a

	di
	call Call_001_49cf
	jr c, .asm_49cb
	call Call_001_4b5d
	jr c, .asm_49cb

	call Call_001_4a36
	ld a, [wcd83]
	or a

.asm_49cb
	push af
	ei
	pop af
	ret

Call_001_49cf:
.asm_49cf:
	call Call_001_4a05
	ret c

	ld e, $00
	ld d, $04
	ld a, [wcd81]
	ld l, a
	ld a, [wcd82]
	ld h, a
	inc hl
	inc hl

.asm_49e1:
	ld a, [hl]
	inc hl
	ld b, [hl]
	inc hl
	ld c, [hl]
	inc hl
	or b
	jr z, .asm_49fc

	inc e
	push hl
	ld hl, wcc0f
	ld b, $00
	add hl, bc
	ld a, [hl]
	pop hl
	or a
	jr z, .asm_49fc

	call Call_001_4be5
	jr .asm_49cf

.asm_49fc:
	dec d
	jr nz, .asm_49e1
	ld a, e
	or a
	scf
	ret z
	or a
	ret

Call_001_4a05:
; SFX related
	ld a, [wcd81]
	ld l, a
	ld a, [wcd82]
	ld h, a
	inc hl
	ld e, [hl]
	ld a, e
	ld [wcd80], a
	inc e
	inc hl
	ld d, $04

.asm_4a17:
	ld a, [hl]
	inc hl
	ld b, [hl]
	inc hl
	ld c, [hl]
	inc hl
	or b
	jr z, .asm_4a31

	push hl
	ld hl, wcc0f
	ld b, $00
	add hl, bc
	ld c, [hl]
	ld hl, wcc07
	add hl, bc
	ld a, [hl]
	pop hl
	cp e
	ccf
	ret c

.asm_4a31:
	dec d
	jr nz, .asm_4a17
	or a
	ret

Call_001_4a36:
	ld a, [wcd83]
	ld e, a
	ld d, 0
	ld hl, wcc03
	add hl, de
	ld [hl], $ff
	ld hl, wcc07
	add hl, de
	ld a, [wcd80]
	ld [hl], a
	ld a, e
	call Call_001_4b21

	ld a, l
	ld [wcc02], a
	ld a, h
	ld [wcc03], a
	ld hl, wcc38
	ld de, wcc39
	ld bc, 2
	ld [hl], 0
	call CopyBytesAF

	ld a, [wcd7f]
	ld [wcc38], a
	ld a, [wcd81]
	ld l, a
	ld a, [wcd82]
	ld h, a
	ld a, [hli]
	inc a
	ld [wcc39], a
	ld a, $01
	ld [wcc3a], a
	inc hl
	call Call_001_4a84
	call Call_001_4b9b
	ret

Call_001_4a84:
	ld b, 4
	push hl
	pop de

.asm_4a88:
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
	jr z, .asm_4aa1

	ld a, 5
	sub b
	push de
	push bc
	call Call_001_4aa6
	pop bc
	pop de
	jr c, .asm_4aa5

.asm_4aa1
	dec b
	jr nz, .asm_4a88
	or a

.asm_4aa5
	ret

Call_001_4aa6:
	ld [wcd7e], a
	ld a, c
	inc a
	ld [wcd84], a
	push hl
	call Call_001_4b3f
	ld a, l
	ld [wcc0d], a
	ld a, h
	ld [wcc0e], a

	ld hl, wcc47
	ld de, wcc48
	ld bc, $002a
	ld [hl], 0
	call CopyBytesAF

	pop hl
	ld a, l
	ld [wcc47], a
	ld a, h
	ld [wcc48], a
	ld a, [wcd7e]
	ld [wcc4b], a
	ld a, [wcd84]
	ld e, a
	ld d, 0
	ld hl, wcc0e
	add hl, de
	ld a, [wcd83]
	ld [hl], a
	ld hl, wcc14
	add hl, de
	ld [hl], 0
	call Call_001_4af6
	call Call_001_4bc0
	ld a, [wcd84]
	or a
	ret

Call_001_4af6:
	call Call_001_4b08
	ld bc, $0003
	add hl, bc
	push hl
	pop de
	dec hl
	call CopyBytesAF_Decrement
	ld a, [wcd84]
	ld [de], a
	ret

Call_001_4b08:
	ld a, [wcc4b]
	add a
	ld hl, .data_4b19 - 2
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

.data_4b19
	dw wcc27
	dw wcc2b
	dw wcc2f
	dw wcc33

Call_001_4b21:
	add a
	ld hl, .data_4b2f - 2
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

.data_4b2f
	dw wcc3b
	dw wcc3e
	dw wcc41
	dw wcc44
	dw wcc47
	dw wcc4a
	dw wcc4d
	dw wcc50

Call_001_4b3f:
	add a
	ld hl, .data_4b4d - 2
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

.data_4b4d
	dw wChannel2_InitialMusicAddress
	dw wChannel3_InitialMusicAddress
	dw wChannel4_InitialMusicAddress

	dw wccf3
	dw wcd1e
	dw wcd49
	dw wcd74
	dw wcd9f

Call_001_4b5d:
	ld b, 4
	ld hl, wcc04
.loop
	ld a, [hli]
	or a
	jr z, .zero
	dec b
	jr nz, .loop
	scf
	ret

.zero
	ld a, 5
	sub b
	ld [wcd83], a
	ret

unk_001_4b72:
	ld b, 6
	ld hl, wcc0f
.loop
	ld a, [hli]
	or a
	jr z, .zero
	dec b
	jr nz, .loop
	scf
	ret

.zero
	ld a, 7
	sub b
	ld [wcd84], a
	ret

Call_001_4b87:
	call Call_001_4b21
	ld a, l
	ld [wcc02], a
	ld a, h
	ld [wcc03], a
	ld de, wcc38
	ld bc, $0003
	jp CopyBytesAF

Call_001_4b9b:
	ld hl, wcc38
	ld a, [wcc02]
	ld e, a
	ld a, [wcc03]
	ld d, a
	ld bc, $0003
	jp CopyBytesAF

Call_001_4bac:
	call Call_001_4b3f
	ld a, l
	ld [wcc0d], a
	ld a, h
	ld [wcc0e], a
	ld de, wcc47
	ld bc, $002b
	jp CopyBytesAF

Call_001_4bc0:
	ld hl, wcc47
	ld a, [wcc0d]
	ld e, a
	ld a, [wcc0e]
	ld d, a
	ld bc, $002b
	jp CopyBytesAF

unk_001_4bd1::
	or a
	jr nz, unk_001_4bdf

jr_001_4bd4:
	inc a
	cp $05
	ret nc

	push af
	call unk_001_4bdf
	pop af
	jr jr_001_4bd4

unk_001_4bdf:
	di
	call Call_001_4be5
	ei
	ret

Call_001_4be5:
	or a
	ret z

	cp 5
	ret nc

	ld c, a
	ld b, 0
	ld hl, wcc03
	add hl, bc
	ld [hl], 0
	ld hl, wcc07
	add hl, bc
	ld [hl], 0

	ld b, 6
	ld hl, wcc0f
	ld de, wcc15

jr_001_4c01:
	ld a, [hl]
	cp c
	jr nz, jr_001_4c14

	xor a
	ld [hl], a
	ld [de], a
	ld a, 7
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
	ld hl, wcd75
	ld [hl], $01
	ld hl, wcc27
	call Call_001_4c63
	jr nc, .asm_4c5f

	ld hl, wcd75
	ld [hl], $02
	ld hl, wcc2b
	call Call_001_4c63
	jr nc, .asm_4c5f

	ld hl, wcd75
	ld [hl], $04
	ld hl, wcc33
	call Call_001_4c63
	jr nc, .asm_4c5f

	ld hl, wcd75
	ld [hl], $03
	ld hl, wcc2f
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
	jr .asm_4c62

.asm_4c5f
	ld a, [hl]
	or a
	ret z

.asm_4c62
	ret

Call_001_4c63:
	push hl
	ld bc, 3
	ld d, 4
.loop
	cp [hl]
	jr z, .asm_4c74
	inc hl
	dec bc
	dec d
	jr nz, .loop
	scf
	jr .exit

.asm_4c74:
	call Call_001_4c85
	ld e, l
	ld d, h
	inc hl
	ld a, b
	or c
	jr z, .asm_4c81
	call CopyBytesAF

.asm_4c81
	xor a
	ld [de], a

.exit
	pop hl
	ret

Call_001_4c85:
	push bc
	push de
	push hl
	ld a, c
	cp 3
	jr nz, .asm_4c93
	ld a, [wcd75]
	call Call_001_5436

.asm_4c93
	pop hl
	pop de
	pop bc
	ret

unk_001_4c97::
	push af
	ld a, [wcc00]
	or a
	jr nz, .asm_4caf

	dec a
	ld [wcc00], a
	push hl
	push de
	push bc
	call Call_001_4cb1
	pop bc
	pop de
	pop hl
	xor a
	ld [wcc00], a

.asm_4caf
	pop af
	reti

Call_001_4cb1:
	call Call_001_4cbb
	call Call_001_513a
	call Call_001_5276
	ret

Call_001_4cbb:
	ld b, 4
	ld hl, wcc04
.asm_4cc0:
	ld a, [hli]
	or a
	jr z, .asm_4cd7

	ld a, 5
	sub b
	ld [wcc01], a
	push bc
	push hl
	call Call_001_4b87
	call Call_001_4cdb
	call Call_001_4b9b
	pop hl
	pop bc

.asm_4cd7
	dec b
	jr nz, .asm_4cc0
	ret

Call_001_4cdb:
	ld hl, wcc3a
	dec [hl]
	ret nz

	ld a, [wcc39]
	ld [hl], a
	call Call_001_532c
	ret c

	ld a, [wcc01]
	ld c, a
	ld b, $06
	ld hl, wcc0f
	ld de, wcc15

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
	ld [wcc0c], a
	call Call_001_4b3f
	ld c, l
	ld b, h
	ld a, l
	ld [wcc0d], a
	ld a, h
	ld [wcc0e], a
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
	ld a, [wcc0c]
	dec a
	ld e, a
	ld d, 0
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

	ld hl, wcc21
	add hl, de
	ld [hl], $ff

Jump_001_4d49:
; Get music byte
	ld a, [wcc0d]
	ld c, a
	ld a, [wcc0e]
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
	ld [wcd85], a
	ld a, h
	ld e, l
	pop hl
	ld [hld], a
	ld [hl], e
	ld a, d
; music commands?
	cp $b0
	jp nc, Jump_001_4f9f
	cp $a0
	jp nc, Jump_001_4ec4
	cp $90
	jp nc, Jump_001_4efa

	ld e, $80
	ld hl, $001b
	add hl, bc
	ld a, [hl]
	or a
	jr z, .asm_4d81
	ld e, $c0

.asm_4d81:
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
	jr z, unk_001_4e05

	ld a, d
	and $f0
	jr z, unk_001_4dee

	call GetFrequency
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
	ld [wcd77], a
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
	and %01111111
	ldh [rNR34], a
	ret

GetFrequency:
; Calculates frequency table address based off of note.
; d = note

	; keep hi nybble
	ld a, d
	swap a
	and $f
	; multiply (a - 1) by 12
	dec a
	add a
	add a
	ld e, a
	add a
	add e
	ld e, a

	; keep lo nybble
	ld a, d
	and $f
	add e
	ld e, a
	ld hl, 5
	add hl, bc
	ld a, [hl]
	add e
	ld l, a
	ld h, 0
	add hl, hl ; each frequency is 2 bytes
	ld de, FrequencyTable_Octave2
	add hl, de
	ret
