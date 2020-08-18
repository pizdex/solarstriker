WriteOAMDMACodeToHRAM:
	ld c, $80
	ld b, OAMDMACodeEnd - OAMDMACode
	ld hl, OAMDMACode
.copy
	ld a, [hli]
	ldh [c], a
	inc c
	dec b
	jr nz, .copy
	ret

OAMDMACode:
	ld a, $c0
	ldh [rDMA], a
	ld a, 40
.wait
	dec a
	jr nz, .wait
	ret
OAMDMACodeEnd:
