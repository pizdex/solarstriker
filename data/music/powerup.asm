unkData_001_5e5b:
	db $02, $02
	dwb unkData_001_5e68, $05
	dwb unkData_001_5e95, $04
	dwb $0000, $00
	dw $0000

unkData_001_5e68:
	db $fe, $0a
	db $f5, $08
	db $f4, $00
	db $fc, $0b
	db $fa, $06
	db $f8, $01
	db $fd, $00
	db $f0, $03
	note 4, E_, 2
	db $f0, $02
	note 4, D_, 2
	db $f0, $01
	note 4, C_, 2
	db $f0, $03
	note 4, D_, 2
	db $f0, $01
	note 4, E_, 2
	db $f0, $02
	note 4, A_, 2
	db $f0, $03
	db $f8, $00
	note 4, G_, 12
	db $ff

unkData_001_5e95:
	db $fe, $0a
	db $f4, $00
	db $fc, $0b
	db $fa, $06
	db $f8, $01
	db $f0, $03
	note 4, G_, 2
	note 4, F_, 2
	note 4, E_, 2
	note 4, F_, 2
	note 4, G_, 2
	note 4, D_, 2
	note 4, C_, 12
	db $ff
