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

jr_001_4a31:
	dec d
	jr nz, jr_001_4a17
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
