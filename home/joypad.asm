UpdateJoypad:
; This is called automatically every frame in VBlank.
; Read the joypad register and translate it to something more
; workable for use in-game. There are 8 buttons, so we can use
; one byte to contain all player input.

; We can only get four inputs at a time.
; We take d-pad first for no particular reason.
	ld a, R_DPAD
	ldh [rP1], a
; Read twice to give the request time to take.
	ldh a, [rP1]
	ldh a, [rP1]
; The Joypad register output is in the lo nybble (inversed).
; We make the hi nybble of our new container d-pad input.
	cpl
	and $f
	swap a

; We'll keep this in b for now.
	ld b, a

; Buttons make 8 total inputs (A, B, Select, Start).
; We can fit this into one byte.
	ld a, R_BUTTONS
	ldh [rP1], a
; Wait for input to stabilize.
rept 6
	ldh a, [rP1]
endr
; Buttons take the lo nybble.
	cpl
	and $f
	or b

; Keep in c for now.
	ld c, a

	ld a, [wJoypadDown]
	xor c
	and c
	ld [wcf81], a

	ld a, c
	ld [wJoypadDown], a

; Reset the joypad register since we're done with it.
	ld a, $30
	ldh [rP1], a
	ret
