unkData_001_6210::
; Stage 1 and 2 track
	db $02 ; tempo
	db $00 ; $cd80

	dwb NULL, $03 ; 3 channels?
	dwb unkData_001_621e, $00
	dwb unkData_001_6295, $01
	dwb unkData_001_636c, $02

unkData_001_621e:
; channel 2 tone
	db $f0, $03
	db $fe, $09
	db $f4, $80
	db $f8, $01
	db $fc, $0e
	db $fa, $05
	db $fd, $05
	db $fd, $00
	db $00, $40
	db $fd, $05

	note 3, A_, 4  ; 06d6 (A4)
	note 4, C_, 4  ; 0706 (C5)
	note 4, E_, 4  ; 0739 (E5)
	note 4, G_, 36 ; 0759 (G5)
	note 4, F#, 6  ; 074f (F#5)
	note 4, G_, 6  ; 0759 (G5)
	note 4, F#, 4  ; 074f (F#5)
	note 4, E_, 12 ; 0739 (E5)
	note 4, C_, 16
	note 3, G_, 36
	note 3, A_, 4
	note 4, C_, 4
	note 4, E_, 4
	note 4, G_, 36
	note 4, F#, 6
	note 4, G_, 6
	note 4, A_, 4
	note 4, A_, 12
	note 4, G_, 12
	note 4, F#, 4
	note 4, D_, 36
	note 3, A_, 12
	note 4, C_, 12
	note 4, F_, 12
	note 3, A_, 4
	note 4, C_, 4
	note 4, F_, 4
	note 3, A_, 4
	note 4, C_, 8
	note 4, F_, 4
	note 4, G_, 12
	note 4, D_, 12
	note 3, B_, 4
	note 3, G_, 36
	note 5, C_, 4
	note 5, D_, 4
	note 0, 0, 4 ; 0790
	note 4, G_, 4
	note 4, A_, 4
	note 0, 0, 4
	note 4, D_, 4
	note 4, E_, 4
	note 0, 0, 4
	note 4, C_, 4
	note 4, D_, 4
	note 0, 0, 4
	note 3, G_, 8
	note 3, G#, 8
	db $a0, $cd
	db $ff

unkData_001_6295:
; channel 3 wave
	db $f0, $03
	db $f2, $01
	db $fe, $0f
	db $f8, $01
	db $fc, $0d
	db $fa, $05
	db $fd, $05

	note 3, C_, 4
	note 3, D_, 4
	note 0, 0, 4
	note 2, G_, 4
	note 2, A_, 4
	note 0, 0, 4
	note 2, D_, 4
	note 2, E_, 4
	note 0, 0, 4
	note 2, C_, 4
	note 2, D_, 4
	note 0, 0, 4
	note 1, G_, 8
	note 1, G#, 8
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	db $91, $f8
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, G_, 20
	note 1, G_, 8
	note 1, G#, 8
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	db $91, $f8
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, A_, 4
	note 1, G_, 20
	note 1, G_, 4
	note 1, B_, 8
	note 1, F_, 4
	note 1, F_, 4
	note 1, F_, 4
	note 1, F_, 4
	note 1, F_, 4
	note 1, F_, 4
	note 1, F_, 4
	note 1, F_, 4
	note 1, F_, 4
	note 1, F_, 4
	note 1, F_, 4
	note 1, F_, 4
	note 1, F_, 4
	note 1, E_, 4
	note 1, F_, 4
	note 1, G_, 4
	note 1, G_, 4
	note 1, G_, 4
	note 1, G_, 4
	note 1, G_, 4
	note 1, G_, 4
	note 1, G_, 4
	note 1, G_, 4
	note 1, G_, 4
	note 1, G_, 4
	note 1, G_, 4
	note 1, G_, 4
	note 1, G_, 4
	note 1, G_, 4
	note 1, G_, 8
	note 1, G#, 8
	note 3, C_, 4
	note 3, D_, 4
	note 0, 0, 4
	note 2, G_, 4
	note 2, A_, 4
	note 0, 0, 4
	note 2, D_, 4
	note 2, E_, 4
	note 0, 0, 4
	note 2, C_, 4
	note 2, D_, 4
	note 0, 0, 4
	note 1, G_, 8
	note 1, G#, 8
	db $a0, $02
	db $a0, $9e
	db $a0, $ff
	db $ff

unkData_001_636c:
; channel 4 percussion track
	db $f0, $03
	db $fe, $07
	db $f8, $01
	db $fd, $00
	db $fc, $00
	db $fb, $02
	db $f9, $30
	db $02, $04
	db $02, $04
	db $fb, $01
	db $f9, $38
	db $03, $04
	db $fb, $02
	db $f9, $30
	db $02, $04
	db $02, $04
	db $fb, $01
	db $f9, $38
	db $03, $04
	db $fb, $02
	db $f9, $30
	db $02, $04
	db $02, $04
	db $fb, $01
	db $f9, $38, $03, $04, $fb, $02, $f9, $30, $02, $04, $02, $04, $fb, $01, $f9, $38
	db $03, $04, $fb, $02, $f9, $30, $02, $04, $fb, $01, $f9, $38, $03, $04, $fb, $02
	db $f9, $30, $02, $04, $fb, $01, $f9, $38, $03, $04, $03, $02, $03, $02, $03, $02
	db $03, $02, $fb, $02, $f9, $30, $02, $04, $fb, $01, $f9, $38, $03, $02, $03, $02
	db $03, $02, $03, $02, $03, $02, $03, $02, $03, $02, $fb, $02, $f9, $30, $02, $04
	db $fb, $01, $f9, $38, $03, $02, $a0, $02, $a0, $c1, $03, $02, $03, $02, $03, $02
	db $03, $02, $fb, $02, $f9, $30, $02, $02, $fb, $01, $f9, $38, $03, $02, $03, $02
	db $03, $02, $03, $02, $03, $02, $fb, $02, $f9, $30, $02, $02, $fb, $01, $f9, $38
	db $03, $02, $03, $02, $03, $02, $fb, $02, $f9, $30, $02, $02, $fb, $01, $f9, $38
	db $03, $02, $93, $cc, $fb, $02, $f9, $30, $02, $02, $fb, $01, $f9, $38, $03, $02
	db $03, $02, $fb, $02, $f9, $30, $02, $02, $fb, $01, $f9, $38, $03, $02, $03, $02
	db $fb, $02, $f9, $30, $02, $02, $fb, $01, $f9, $38, $03, $02, $fb, $02, $f9, $30
	db $02, $02, $fb, $01, $f9, $38, $03, $02, $03, $02, $fb, $02, $f9, $30, $02, $02
	db $fb, $01, $f9, $38, $03, $02, $fb, $02, $f9, $30, $02, $02, $fb, $01, $f9, $38
	db $03, $02, $fb, $02, $f9, $30, $02, $02, $a0, $02, $a0, $b7, $02, $02, $fb, $01
	db $f9, $38, $03, $02, $03, $02, $fb, $02, $f9, $30, $02, $02, $fb, $01, $f9, $38
	db $03, $02, $03, $02, $fb, $02, $f9, $30, $02, $02, $02, $02, $fb, $01, $f9, $38
	db $03, $02, $03, $02, $fb, $02, $f9, $30, $02, $02, $fb, $01, $f9, $38, $03, $02
	db $03, $02, $fb, $02, $f9, $30, $02, $02, $fb, $01, $f9, $38, $03, $02, $03, $02
	db $91, $b2, $fb, $02, $f9, $30, $02, $04, $02, $04, $fb, $01, $f9, $38, $03, $02
	db $00, $02, $fb, $02, $f9, $30, $02, $04, $02, $04, $fb, $01, $f9, $38, $03, $02
	db $00, $02, $fb, $02, $f9, $30, $02, $04, $02, $04, $fb, $01, $f9, $38, $03, $02
	db $00, $02, $fb, $02, $f9, $30, $02, $04, $02, $04, $fb, $01, $f9, $38, $03, $02
	db $00, $02, $fb, $02, $f9, $30, $02, $04, $00, $04, $02, $04, $00, $04, $a0, $b6
	db $ff
