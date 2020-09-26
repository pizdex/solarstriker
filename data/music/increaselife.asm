unkData_001_5d41::
; Increase life tune
	db $03, $02
	dwb unkData_001_5d4e, 4
	dwb unkData_001_5d6d, 5
	dwb NULL, 0
	dw NULL

unkData_001_5d4e:
 ; right ear
	db $fe, $0f
	db $f5, $08
	db $f4, $40
	db $fc, $0e
	db $fa, $03
	db $f8, $01
	db $fd, $01
	db $f0, $01
	note 4, E_, 2
	note 4, C_, 2
	note 4, G_, 2
	note 4, B_, 2
	note 5, C_, 2
	note 5, D_, 2
	note 5, G_, 12
	db $ff

unkData_001_5d6d:
; left ear
	db $fe, $0f
	db $f4, $40
	db $fc, $0e
	db $fa, $03
	db $f8, $01
	db $fd, $01
	db $f0, $02
	note 4, C_, 2
	note 3, G_, 2
	note 4, E_, 2
	note 4, G_, 2
	note 4, G_, 2
	note 4, B_, 2
	note 5, C_, 12
	db $ff
