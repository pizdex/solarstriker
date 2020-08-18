; Disassembly of "solarstriker.gb"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

unk_002_4000:
	INCBIN "gfx/image_002_4000.2bpp"

unk_002_5300:
	INCBIN "gfx/image_002_5300.2bpp"

unk_002_5350:
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

unk_002_5400:
	INCBIN "gfx/image_002_5400.2bpp"

unk_002_5a00:
	INCBIN "gfx/image_002_5a00.2bpp"

unk_002_5a40:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
	add c
	nop
	cp l
	nop
	and l
	nop
	and l
	nop
	cp l
	nop
	add c
	nop
	rst $38
	nop
	inc a
	add c
	jr c, @-$7c

	jr nc, @-$7a

	jr nz, @-$76

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
	call nz, $6803
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
	call z, $55fd
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

unk_002_6730:
	INCBIN "gfx/image_002_6730.2bpp"

unk_002_6d30:
	INCBIN "gfx/image_002_6d30.2bpp"

unk_002_6d60:
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
	call c, $0000
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
	ld de, $0104
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
