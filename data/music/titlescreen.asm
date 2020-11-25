unkHeader_001_5ddb::
	db $03, $00
	dwb unkData_001_5de8, $00
	dwb unkData_001_5e23, $01
	dwb unkData_001_5e3c, $02
	db $00, $00

unkData_001_5de8:
; switches left to right after each note
; loops forever
	db $fe, $06
	db $f4, $00
	db $fc, $0f
	db $fa, $02
	db $f7, $01
	db $ef, $03
	db $f6, $08
	db $f8, $01
	db $fd, $02
	db $f0, $01
	db $fe, $0a
	note 5, C_, 1
	db $fe, $06
	note 5, C_, 1
	db $f0, $02
	db $fe, $03
	note 5, C_, 1
	db $fe, $01
	note 5, C_, 1
	db $fe, $0a
	note 5, C_, 1
	db $fe, $06
	note 5, C_, 1
	db $f0, $01
	db $fe, $03
	note 5, C_, 1
	db $fe, $01
	note 5, C_, 1
	db $a0, $ed
	db $ff

unkData_001_5e23:
; loops forever
	db $fe, $08
	db $f4, $00
	db $fc, $0f
	db $fa, $02
	db $f8, $01
	db $fd, $02
	db $f0, $03
	note 3, D_, 32
	note 3, D#, 32
	note 3, E_, 32
	note 3, F_, 32
	db $a0, $fc
	db $ff

unkData_001_5e3c:
; also loops forever
	db $fe, $0f
	db $f2, $01
	db $fc, $0c
	db $fa, $04
	db $f8, $01
	db $fd, $01
	db $f0, $03
	note 2, C_, 8
	note 2, C_, 8
	note 2, C_, 8
	note 2, C_, 2
	note 2, C_, 2
	note 2, C_, 2
	rest 2
	db $a0, $f9
	db $ff
