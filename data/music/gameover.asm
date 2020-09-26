unkData_001_5541::
; Game over music
	db $06, $00
	dwb unkData_001_554e, $00
	dwb unkData_001_5585, $01
	dwb unkData_001_55e2, $02
	db $00, $00

unkData_001_554e:
	db $fe, $0a
	db $f5, $08
	db $fc, $00
	db $fb, $05
	db $f4, $80
	db $fd, $03
	db $f0, $01

	note 5, C_, 4
	note 4, E_, 4
	note 5, C_, 4
	note 4, B_, 8
	note 4, D_, 4
	note 4, G_, 4
	note 4, B_, 4
	note 4, A_, 32

	note 5, C_, 4
	note 4, E_, 4
	note 5, C_, 4
	note 4, B_, 8
	note 4, D_, 4
	note 4, G_, 4
	note 4, B_, 4
	note 4, A_, 32

	; some sort of loop?
	db $a1, $f0
	db $f0, $00
	note 5, C_, 64
	db $a0, $ff
	db $ff

unkData_001_5585:
	db $fe, $0a
	db $f4, $80
	db $fc, $00
	db $fb, $05
	db $fd, $03
	db $f0, $02

	note 3, A_, 4
	note 4, C_, 4
	note 4, E_, 4
	note 3, G_, 8
	note 3, B_, 4
	note 4, D_, 4
	note 4, B_, 4
	note 4, A_, 4
	db $fb, $06
	db $f0, $03
	note 4, C_, 4
	note 4, E_, 4
	note 3, A_, 4
	note 4, C_, 4
	note 3, E_, 4
	note 3, A_, 4
	note 3, C_, 4
	db $f0, $02

	db $fb, $04
	note 3, A_, 4
	note 4, C_, 4
	note 4, E_, 4
	note 3, G_, 8
	note 3, B_, 4
	note 4, D_, 4
	note 4, B_, 4

	db $f0, $03
	note 3, A_, 2
	note 4, C_, 2
	note 4, F_, 2
	note 4, A_, 2
	note 4, C_, 2
	note 4, F_, 2
	note 4, A_, 2
	note 5, C_, 2
	note 5, F_, 16

	db $a1, $dc
	db $f0, $00
	note 5, C_, 64
	db $a0, $ff
	db $ff

unkData_001_55e2:
	dr $55e2, $5603
