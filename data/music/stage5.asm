unkData_001_6fcf::
	db $03, $00
	dwb NULL, $03
	dwb unkData_001_6fdd, 0
	dwb unkData_001_70b4, 1
	dwb unkData_001_70e1, 2

unkData_001_6fdd:
	db $f0, $03
	db $fe, $08
	db $f4, $80
	db $fd, $05
	db $fc, $0e
	db $fa, $06
	db $f8, $01
	db $ed, $01
	note 3, E_, 28
	note 3, F_, 20
	note 3, C_, 24
	note 3, D_, 24
	note 2, A_, 32
	note 3, E_, 28
	note 3, F_, 20
	note 3, C_, 24
	note 3, D_, 24
	note 2, A_, 32
	note 3, D_, 28
	note 3, E_, 20
	note 3, F_, 24
	note 3, E_, 24
	note 3, D_, 16
	note 2, B_, 8
	note 2, G_, 8
	note 3, D_, 28
	note 3, E_, 20
	note 3, F_, 24
	note 3, E_, 24
	note 3, D_, 16
	note 2, G_, 8
	note 2, B_, 8
	note 3, E_, 28
	note 3, F_, 20
	note 3, C_, 24
	note 3, D_, 24
	note 2, A_, 32
	note 3, E_, 28
	note 3, F_, 20
	note 3, C_, 24
	note 3, D_, 24
	note 2, A_, 32
	note 3, D_, 28
	note 3, E_, 20
	note 3, F_, 24
	note 3, E_, 24
	note 3, D_, 16
	note 2, B_, 8
	note 2, G_, 8
	note 3, D_, 28
	note 3, E_, 20
	note 3, F_, 24
	note 3, E_, 24
	note 3, D_, 16
	note 2, G_, 8
	note 2, B_, 8
	note 3, E_, 28
	note 3, F_, 20
	note 3, C_, 24
	note 3, D_, 12
	note 3, E_, 4
	note 2, A_, 40
	note 3, E_, 28
	note 3, F_, 20
	note 3, C_, 24
	note 3, D_, 12
	note 3, E_, 4
	note 3, G_, 16
	note 3, F_, 24
	note 3, D_, 28
	note 3, G_, 20
	note 3, D_, 12
	note 2, B_, 12
	note 3, E_, 12
	note 3, D_, 36
	note 3, G_, 12
	note 3, F_, 12
	note 3, E_, 12
	note 3, G_, 24
	note 3, B_, 20
	note 4, C_, 24
	note 4, D_, 24
	note 4, E_, 28
	note 4, F_, 20
	note 4, C_, 24
	note 4, D_, 24
	note 3, A_, 32
	note 4, E_, 28
	note 4, F_, 20
	note 4, C_, 24
	note 4, D_, 24
	note 3, A_, 32
	note 4, D_, 28
	note 4, E_, 20
	note 4, F_, 24
	note 4, E_, 24
	note 4, D_, 16
	note 3, B_, 8
	note 3, G_, 8
	note 4, D_, 28
	note 4, E_, 20
	note 4, F_, 24
	note 4, E_, 24
	note 4, D_, 16
	note 3, G_, 8
	note 3, B_, 8
	db $a0, $9e
	db $ff

unkData_001_70b4:
	db $f0, $03
	db $f2, $01
	db $fc, $0d
	db $fa, $07
	db $f8, $01
	db $fe, $0f
	db $ed, $01
; This section loops 16 times (I think)
	note 1, A_, 4
	note 1, A_, 4
	note 0, A_, 2
	note 1, A_, 2
	note 1, A_, 2
	note 1, A_, 2
	db $9f, $fa

	note 1, G_, 4
	note 1, G_, 4
	note 0, G_, 2
	note 1, G_, 2
	note 1, G_, 2
	note 1, G_, 2
	db $9f, $fa
	db $a0, $f2
	db $ff

unkData_001_70e1:
	dr $70e1, $70f8
