unkHeader_001_5eb0::
; Boss music
	db $03, $00
	dwb NULL, $02
	dwb unkData_001_5ebd, $00
	dwb unkData_001_5f02, $01
	dw NULL

unkData_001_5ebd:
	db $fe, $0c
	db $f8, $01
	db $fc, $01
	db $fa, $03
	db $f4, $40
	db $fd, $02
	db $f0, $03
	note 2, F#, 4
	note 2, F#, 4
	note 2, G_, 4
	note 2, G_, 2
	note 2, G_, 2
	note 2, A_, 4
	note 2, A_, 2
	note 2, A_, 2
	note 2, A#, 2
	note 3, C_, 2
	note 3, E_, 2
	note 3, F#, 2
	db $93, $f4
	note 2, E_, 4
	note 2, E_, 4
	note 2, F#, 4
	note 2, F#, 2
	note 2, F#, 2
	note 2, G_, 4
	note 2, G_, 2
	note 2, G_, 2
	note 2, A_, 2
	note 2, A#, 2
	note 3, D_, 2
	note 3, E_, 2
	db $93, $f4
	db $a0, $e6
	db $ff

unkData_001_5f02:
	db $fe, $0f
	db $f8, $01
	db $fc, $0c
	db $fa, $04
	db $f2, $01
	db $fd, $02
	db $f0, $03
	note 1, A_, 8
	note 1, A_, 8
	db 0, 16
	db $93, $fd
	note 1, G_, 8
	note 1, G_, 8
	db 0, 16
	db $93, $fd
	db $a0, $f8
	db $ff
