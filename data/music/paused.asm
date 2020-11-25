unkHeader_001_5d8a::
	db $02, $02
	dwb unkData_001_5d97, $00
	dwb unkData_001_5dba, $01
	dwb NULL, $02
	dw NULL

unkData_001_5d97:
; right ear
	db $fe, $0f
	db $f5, $08
	db $f4, $80
	db $fc, $0c
	db $fa, $06
	db $f8, $01
	db $fd, $03
	db $f0, $01
	note 3, C_, 2
	note 3, E_, 2
	note 3, G_, 2
	note 3, G_, 2
	note 4, C_, 8
	db 0, 8
	db $fd, $01
	db 0, 8
	db $f0, $00
	db $ff

unkData_001_5dba:
; left ear
	db $fe, $0f
	db $f4, $80
	db $fc, $0c
	db $fa, $06
	db $f8, $01
	db $fd, $03
	db $f0, $02
	note 3, G_, 2
	note 4, C_, 2
	note 4, E_, 2
	note 4, E_, 2
	note 4, G_, 6
	db 0, 8
	db $fd, $01
	db 0, 8
	db $f0, $00
	db $ff
