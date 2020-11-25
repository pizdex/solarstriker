TrySoftReset:
	ld a, [wEndScreen]
	or a
	jr nz, .endscreen_shown

	ld a, [wJoypadDown]
	and A_BUTTON | B_BUTTON | SELECT | START
	cp A_BUTTON | B_BUTTON | SELECT | START
	jr z, .softreset_normal

	xor a
	ret

.softreset_normal
	ld a, [wcf9a]
	call unk_001_4bd1

.reset_hold
; Pause game until reset buttons are released
	ld a, [wcf86]
	or a
	jr z, .reset_hold

	call UpdateJoypad
	xor a
	ld [wcf86], a
	ld a, [wJoypadDown]
	and A_BUTTON | B_BUTTON | SELECT | START
	jr nz, .reset_hold

	xor a
	ldh [rTAC], a
	ldh [rTMA], a
	inc a
	ret

.endscreen_shown:
	ld a, [wJoypadDown]
	and START
	jr nz, .softreset_endscreen
	xor a
	ret

.softreset_endscreen
	ld a, [wcf9a]
	call unk_001_4bd1

.start_hold
; Pause game until start button is released
	ld a, [wcf86]
	or a
	jr z, .start_hold

	call UpdateJoypad
	xor a
	ld [wcf86], a
	ld a, [wJoypadDown]
	and START
	jr nz, .start_hold

	xor a
	ldh [rTAC], a
	ldh [rTMA], a
	inc a
	ret
