CopyBytesAF:
; copy bc bytes from hl to de, preserving af
	push af
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec bc
	ld a, b
	or c
	jr nz, .loop
	pop af
	ret

CopyBytesAF_Decrement:
; same as CopyBytesAF, but decrementing hl and de
	push af
.loop
	ld a, [hld]
	ld [de], a
	dec de
	dec bc
	ld a, b
	or c
	jr nz, .loop
	pop af
	ret
