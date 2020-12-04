INCLUDE "constants.asm"

INCLUDE "vram.asm"


SECTION "WRAM", WRAM0

SECTION "OAM Buffer", WRAM0[$c000]

wc000:: ds $100 ; c000

wc100:: ds $600 ; c100

; TODO: Replace with struct
wc700:: ds $20 * 2 ; c700

wc740:: ds $40 ; c740

; Sprite related
wc780:: ds $10 ; c780
wc790:: ds $10 ; c790
wc7a0:: ds $10 ; c7a0
wc7b0:: ds $10 ; c7b0
wc7c0:: ds $10 ; c7c0 (c7cd = Boss health?)
wc7d0:: ds $10 ; c7d0
wc7e0:: ds $10 ; c7e0
wc7f0:: ds $10 ; c7f0
wc800:: ds $10 ; c800
wc810:: ds $10 ; c810

wc820:: ds $60 ; c820

wc880:: ds $10 ; c880
wc890:: ds $10 ; c890
wc8a0:: ds $10 ; c8a0
wc8b0:: ds $10 ; c8b0
wc8c0:: ds $10 ; c8c0
wc8d0:: ds $10 ; c8d0
wc8e0:: ds $10 ; c8e0
wc8f0:: ds $10 ; c8f0

wc900:: ds $100 ; c900

wca00:: ds 1 ; ca00
wca01:: ds 1 ; ca01
wca02:: ds 1 ; ca02
wca03:: ds 1 ; ca03
wca04:: ds 1 ; ca04
wca05:: ds 1 ; ca05
wca06:: ds 1 ; ca06
wca07:: ds 1 ; ca07
wca08:: ds 1 ; ca08
wca09:: ds 1 ; ca09
wca0a:: ds 1 ; ca0a
wca0b:: ds 1 ; ca0b
wca0c:: ds 1 ; ca0c
wca0d:: ds 1 ; ca0d
wca0e:: ds 1 ; ca0e
wca0f:: ds 1 ; ca0f

wca10:: ds 1 ; ca10
wca11:: ds 1 ; ca11

wca12:: ds 2 ; ca12
wca14:: ds 2 ; ca14

wca16:: ds 1 ; ca16
wca17:: ds 1 ; ca17
wca18:: ds 1 ; ca18

wCurrentStage:: db ; ca19

wca1a:: ds 1 ; ca1a
wca1b:: ds 1 ; ca1b
wca1c:: ds 1 ; ca1c
wShakeCounter:: ds 1 ; ca1d
wShakeAmount:: ds 1 ; ca1e
wca1f:: ds 1 ; ca1f

wPlayerHP:: db ; ca20 (HP, either 0 (Alive) or 1 (Dead))
wPowerLevel:: db ; ca21

wca22:: ds 1 ; ca22
wca23:: ds 1 ; ca23 (Joypad)
wca24:: ds 1 ; ca24
wca25:: ds 1 ; ca25 (Direction?)
wca26:: ds 1 ; ca26
wca27:: ds 1 ; ca27
wca28:: ds 1 ; ca28
wca29:: ds 1 ; ca29
wca2a:: ds 1 ; ca2a
wca2b:: ds 1 ; ca2b
wca2c:: ds 1 ; ca2c
wca2d:: ds 1 ; ca2d
wca2e:: ds 1 ; ca2e
wca2f:: ds 1 ; ca2f
wca30:: ds 1 ; ca30
wca31:: ds 1 ; ca31
wca32:: ds 1 ; ca32
wca33:: ds 1 ; ca33
wca34:: ds 1 ; ca34
wca35:: ds 1 ; ca35
wca36:: ds 1 ; ca36
wca37:: ds 1 ; ca37
wca38:: ds 1 ; ca38
wca39:: ds 1 ; ca39
wca3a:: ds 1 ; ca3a
wca3b:: ds 1 ; ca3b
wca3c:: ds 1 ; ca3c
wca3d:: ds 1 ; ca3d
wca3e:: ds 1 ; ca3e
wca3f:: ds 1 ; ca3f
wca40:: ds 1 ; ca40
wca41:: ds 1 ; ca41
wca42:: ds 1 ; ca42
wca43:: ds 1 ; ca43
wca44:: ds 1 ; ca44
wca45:: ds 1 ; ca45
wca46:: ds 1 ; ca46
wca47:: ds 1 ; ca47
wca48:: ds 1 ; ca48
wca49:: ds 1 ; ca49
wca4a:: ds 1 ; ca4a
wca4b:: ds 1 ; ca4b
wca4c:: ds 1 ; ca4c
wca4d:: ds 1 ; ca4d
wca4e:: ds 1 ; ca4e
wca4f:: ds 1 ; ca4f
wca50:: ds 1 ; ca50

wca51:: ds 3 ; ca51

wca54:: ds 1 ; ca54

wca55:: ds 1 ; ca55
wca56:: ds 1 ; ca56
wca57:: ds 1 ; ca57
wca58:: ds 1 ; ca58
wca59:: ds 1 ; ca59
wca5a:: ds 1 ; ca5a
wca5b:: ds 1 ; ca5b
wca5c:: ds 1 ; ca5c
wca5d:: ds 1 ; ca5d
wca5e:: ds 1 ; ca5e
wca5f:: ds 1 ; ca5f
wca60:: ds 1 ; ca60
wca61:: ds 1 ; ca61
wca62:: ds 1 ; ca62
wca63:: ds 1 ; ca63
wca64:: ds 1 ; ca64
wca65:: ds 1 ; ca65
wca66:: ds 1 ; ca66
wca67:: ds 1 ; ca67
wca68:: ds 1 ; ca68
wca69:: ds 1 ; ca69
wca6a:: ds 1 ; ca6a
wca6b:: ds 1 ; ca6b
wca6c:: ds 1 ; ca6c
wca6d:: ds 1 ; ca6d
wca6e:: ds 1 ; ca6e
wca6f:: ds 1 ; ca6f
wca70:: ds 1 ; ca70
wca71:: ds 1 ; ca71
wca72:: ds 1 ; ca72
wca73:: ds 1 ; ca73
wca74:: ds 1 ; ca74
wca75:: ds 1 ; ca75
wca76:: ds 1 ; ca76
wca77:: ds 1 ; ca77
wca78:: ds 1 ; ca78
wca79:: ds 1 ; ca79
wca7a:: ds 1 ; ca7a
wca7b:: ds 1 ; ca7b
wca7c:: ds 1 ; ca7c
wca7d:: ds 1 ; ca7d
wca7e:: ds 1 ; ca7e
wca7f:: ds 1 ; ca7f
wca80:: ds 1 ; ca80
wca81:: ds 1 ; ca81

wca82:: ds 2 ; ca82

wca84:: ds 1 ; ca84
wca85:: ds 1 ; ca85
wca86:: ds 1 ; ca86
wca87:: ds 1 ; ca87
wca88:: ds 1 ; ca88
wca89:: ds 1 ; ca89
wca8a:: ds 1 ; ca8a
wca8b:: ds 1 ; ca8b
wca8c:: ds 1 ; ca8c
wca8d:: ds 1 ; ca8d
wca8e:: ds 1 ; ca8e
wca8f:: ds 1 ; ca8f
wca90:: ds 1 ; ca90
wca91:: ds 1 ; ca91
wca92:: ds 1 ; ca92
wca93:: ds 1 ; ca93
wca94:: ds 1 ; ca94
wca95:: ds 1 ; ca95
wca96:: ds 1 ; ca96
wca97:: ds 1 ; ca97
wca98:: ds 1 ; ca98
wca99:: ds 1 ; ca99
wca9a:: ds 1 ; ca9a
wca9b:: ds 1 ; ca9b
wca9c:: ds 1 ; ca9c
wca9d:: ds 1 ; ca9d
wca9e:: ds 1 ; ca9e
wca9f:: ds 1 ; ca9f
wcaa0:: ds 1 ; caa0
wcaa1:: ds 1 ; caa1
wcaa2:: ds 1 ; caa2
wcaa3:: ds 1 ; caa3
wcaa4:: ds 1 ; caa4
wcaa5:: ds 1 ; caa5
wcaa6:: ds 1 ; caa6
wcaa7:: ds 1 ; caa7
wcaa8:: ds 1 ; caa8
wcaa9:: ds 1 ; caa9
wcaaa:: ds 1 ; caaa
wcaab:: ds 1 ; caab
wcaac:: ds 1 ; caac
wcaad:: ds 1 ; caad
wcaae:: ds 1 ; caae
wcaaf:: ds 1 ; caaf
wcab0:: ds 1 ; cab0
wcab1:: ds 1 ; cab1

wcab2:: ds 2 ; cab2

wcab4:: ds 1 ; cab4
wcab5:: ds 1 ; cab5
wcab6:: ds 1 ; cab6
wcab7:: ds 1 ; cab7
wcab8:: ds 1 ; cab8

wEndScreen:: db ; cab9

wcaba:: ds 1 ; caba
wcabb:: ds 1 ; cabb
wcabc:: ds 1 ; cabc
wcabd:: ds 1 ; cabd
wcabe:: ds 1 ; cabe
wcabf:: ds 1 ; cabf
wcac0:: ds 1 ; cac0
wcac1:: ds 1 ; cac1
wcac2:: ds 1 ; cac2
wcac3:: ds 1 ; cac3
wcac4:: ds 1 ; cac4
wcac5:: ds 1 ; cac5
wcac6:: ds 1 ; cac6
wcac7:: ds 1 ; cac7
wcac8:: ds 1 ; cac8
wcac9:: ds 1 ; cac9
wcaca:: ds 1 ; caca
wcacb:: ds 1 ; cacb
wcacc:: ds 1 ; cacc
wcacd:: ds 1 ; cacd
wcace:: ds 1 ; cace
wcacf:: ds 1 ; cacf
wcad0:: ds 1 ; cad0
wcad1:: ds 1 ; cad1
wcad2:: ds 1 ; cad2
wcad3:: ds 1 ; cad3
wcad4:: ds 1 ; cad4
wcad5:: ds 1 ; cad5
wcad6:: ds 1 ; cad6
wcad7:: ds 1 ; cad7
wcad8:: ds 1 ; cad8
wcad9:: ds 1 ; cad9
wcada:: ds 1 ; cada
wcadb:: ds 1 ; cadb
wcadc:: ds 1 ; cadc
wcadd:: ds 1 ; cadd
wcade:: ds 1 ; cade
wcadf:: ds 1 ; cadf

; "SCORE " or "PAUSE "
wcae0:: ds 1 ; cae0
wcae1:: ds 1 ; cae1
wcae2:: ds 1 ; cae2
wcae3:: ds 1 ; cae3
wcae4:: ds 1 ; cae4
wcae5:: ds 1 ; cae5

wcae6:: ds 1 ; cae6
wcae7:: ds 1 ; cae7
wcae8:: ds 1 ; cae8
wcae9:: ds 1 ; cae9
wcaea:: ds 1 ; caea
wcaeb:: ds 1 ; caeb
wcaec:: ds 1 ; caec
wcaed:: ds 1 ; caed
wcaee:: ds 1 ; caee
wcaef:: ds 1 ; caef

; "SCORE 0000000"
wcaf0:: ds 1 ; caf0
wcaf1:: ds 1 ; caf1
wcaf2:: ds 1 ; caf2
wcaf3:: ds 1 ; caf3
wcaf4:: ds 1 ; caf4
wcaf5:: ds 1 ; caf5
wcaf6:: ds 1 ; caf6
wcaf7:: ds 1 ; caf7
wcaf8:: ds 1 ; caf8
wcaf9:: ds 1 ; caf9
wcafa:: ds 1 ; cafa
wcafb:: ds 1 ; cafb
wcafc:: ds 1 ; cafc

wcafd:: ds 1 ; cafd
wcafe:: ds 1 ; cafe
wcaff:: ds 1 ; caff

wcb00:: ds $100 ; cb00

SECTION "Audio RAM", WRAM0[$cc00]

; Sound engine variables

wAudio::
wcc00:: ds 1 ; cc00
wcc01:: ds 1 ; cc01
wcc02:: ds 1 ; cc02
wcc03:: ds 1 ; cc03
wcc04:: ds 1 ; cc04
wcc05:: ds 1 ; cc05
wcc06:: ds 1 ; cc06
wcc07:: ds 1 ; cc07
wcc08:: ds 1 ; cc08
wcc09:: ds 1 ; cc09
wcc0a:: ds 1 ; cc0a
wcc0b:: ds 1 ; cc0b
wcc0c:: ds 1 ; cc0c
wcc0d:: ds 1 ; cc0d
wcc0e:: ds 1 ; cc0e
wcc0f:: ds 1 ; cc0f
wcc10:: ds 1 ; cc10
wcc11:: ds 1 ; cc11
wcc12:: ds 1 ; cc12
wcc13:: ds 1 ; cc13
wcc14:: ds 1 ; cc14
wcc15:: ds 1 ; cc15
wcc16:: ds 1 ; cc16
wcc17:: ds 1 ; cc17
wcc18:: ds 1 ; cc18
wcc19:: ds 1 ; cc19
wcc1a:: ds 1 ; cc1a
wcc1b:: ds 1 ; cc1b (Stereo channels?)
wcc1c:: ds 1 ; cc1c
wcc1d:: ds 1 ; cc1d
wcc1e:: ds 1 ; cc1e
wcc1f:: ds 1 ; cc1f
wcc20:: ds 1 ; cc20
wcc21:: ds 1 ; cc21
wcc22:: ds 1 ; cc22
wcc23:: ds 1 ; cc23
wcc24:: ds 1 ; cc24
wcc25:: ds 1 ; cc25
wcc26:: ds 1 ; cc26
wcc27:: ds 1 ; cc27
wcc28:: ds 1 ; cc28
wcc29:: ds 1 ; cc29
wcc2a:: ds 1 ; cc2a
wcc2b:: ds 1 ; cc2b
wcc2c:: ds 1 ; cc2c
wcc2d:: ds 1 ; cc2d
wcc2e:: ds 1 ; cc2e
wcc2f:: ds 1 ; cc2f
wcc30:: ds 1 ; cc30
wcc31:: ds 1 ; cc31
wcc32:: ds 1 ; cc32
wcc33:: ds 1 ; cc33
wcc34:: ds 1 ; cc34
wcc35:: ds 1 ; cc35
wcc36:: ds 1 ; cc36
wcc37:: ds 1 ; cc37

wcc38:: ds 1 ; cc38
wcc39:: ds 1 ; cc39 (Tempo?)
wcc3a:: ds 1 ; cc3a

wcc3b:: ds 1 ; cc3b
wcc3c:: ds 1 ; cc3c (Backup)
wcc3d:: ds 1 ; cc3d

wcc3e:: ds 1 ; cc3e
wcc3f:: ds 1 ; cc3f
wcc40:: ds 1 ; cc40
wcc41:: ds 1 ; cc41
wcc42:: ds 1 ; cc42
wcc43:: ds 1 ; cc43
wcc44:: ds 1 ; cc44
wcc45:: ds 1 ; cc45
wcc46:: ds 1 ; cc46
wcc47:: ds 1 ; cc47
wcc48:: ds 1 ; cc48
wcc49:: ds 1 ; cc49
wcc4a:: ds 1 ; cc4a
wcc4b:: ds 1 ; cc4b
wcc4c:: ds 1 ; cc4c
wcc4d:: ds 1 ; cc4d
wcc4e:: ds 1 ; cc4e
wcc4f:: ds 1 ; cc4f
wcc50:: ds 1 ; cc50
wcc51:: ds 1 ; cc51
wcc52:: ds 1 ; cc52
wcc53:: ds 1 ; cc53
wcc54:: ds 1 ; cc54
wcc55:: ds 1 ; cc55
wcc56:: ds 1 ; cc56
wcc57:: ds 1 ; cc57
wcc58:: ds 1 ; cc58
wcc59:: ds 1 ; cc59
wcc5a:: ds 1 ; cc5a
wcc5b:: ds 1 ; cc5b
wcc5c:: ds 1 ; cc5c
wcc5d:: ds 1 ; cc5d
wcc5e:: ds 1 ; cc5e
wcc5f:: ds 1 ; cc5f
wcc60:: ds 1 ; cc60
wcc61:: ds 1 ; cc61
wcc62:: ds 1 ; cc62
wcc63:: ds 1 ; cc63
wcc64:: ds 1 ; cc64
wcc65:: ds 1 ; cc65
wcc66:: ds 1 ; cc66
wcc67:: ds 1 ; cc67
wcc68:: ds 1 ; cc68
wcc69:: ds 1 ; cc69
wcc6a:: ds 1 ; cc6a
wcc6b:: ds 1 ; cc6b
wcc6c:: ds 1 ; cc6c
wcc6d:: ds 1 ; cc6d
wcc6e:: ds 1 ; cc6e
wcc6f:: ds 1 ; cc6f
wcc70:: ds 1 ; cc70
wcc71:: ds 1 ; cc71

; Channel 2
wChannel2_InitialMusicAddress:: ds 2 ; cc72
wChannel2_MusicAddress:: ds 2 ; cc74

wcc76:: ds 1 ; cc76
wcc77:: ds 1 ; cc77

wcc78:: ds 1 ; cc78
wcc79:: ds 1 ; cc79
wcc7a:: ds 1 ; cc7a
wcc7b:: ds 1 ; cc7b
wcc7c:: ds 1 ; cc7c
wcc7d:: ds 1 ; cc7d
wcc7e:: ds 1 ; cc7e
wcc7f:: ds 1 ; cc7f
wcc80:: ds 1 ; cc80
wcc81:: ds 1 ; cc81
wcc82:: ds 1 ; cc82
wcc83:: ds 1 ; cc83
wcc84:: ds 1 ; cc84
wcc85:: ds 1 ; cc85
wcc86:: ds 1 ; cc86
wcc87:: ds 1 ; cc87
wcc88:: ds 1 ; cc88
wcc89:: ds 1 ; cc89
wcc8a:: ds 1 ; cc8a
wcc8b:: ds 1 ; cc8b
wcc8c:: ds 1 ; cc8c
wcc8d:: ds 1 ; cc8d
wcc8e:: ds 1 ; cc8e
wcc8f:: ds 1 ; cc8f
wcc90:: ds 1 ; cc90
wcc91:: ds 1 ; cc91
wcc92:: ds 1 ; cc92
wcc93:: ds 1 ; cc93
wcc94:: ds 1 ; cc94
wcc95:: ds 1 ; cc95
wcc96:: ds 1 ; cc96
wcc97:: ds 1 ; cc97
wcc98:: ds 1 ; cc98
wcc99:: ds 1 ; cc99
wcc9a:: ds 1 ; cc9a

wNoteFrequency:: ds 2 ; cc9b

; Channel 3
wChannel3_InitialMusicAddress:: ds 2 ; cc9d
wChannel3_MusicAddress:: ds 2 ; cc9f

wcca1:: ds 1 ; cca1
wcca2:: ds 1 ; cca2
wcca3:: ds 1 ; cca3
wcca4:: ds 1 ; cca4
wcca5:: ds 1 ; cca5
wcca6:: ds 1 ; cca6
wcca7:: ds 1 ; cca7
wcca8:: ds 1 ; cca8
wcca9:: ds 1 ; cca9
wccaa:: ds 1 ; ccaa
wccab:: ds 1 ; ccab
wccac:: ds 1 ; ccac
wccad:: ds 1 ; ccad
wccae:: ds 1 ; ccae
wccaf:: ds 1 ; ccaf
wccb0:: ds 1 ; ccb0
wccb1:: ds 1 ; ccb1
wccb2:: ds 1 ; ccb2
wccb3:: ds 1 ; ccb3
wccb4:: ds 1 ; ccb4
wccb5:: ds 1 ; ccb5
wccb6:: ds 1 ; ccb6
wccb7:: ds 1 ; ccb7
wccb8:: ds 1 ; ccb8
wccb9:: ds 1 ; ccb9
wccba:: ds 1 ; ccba
wccbb:: ds 1 ; ccbb
wccbc:: ds 1 ; ccbc
wccbd:: ds 1 ; ccbd
wccbe:: ds 1 ; ccbe
wccbf:: ds 1 ; ccbf
wccc0:: ds 1 ; ccc0
wccc1:: ds 1 ; ccc1
wccc2:: ds 1 ; ccc2
wccc3:: ds 1 ; ccc3
wccc4:: ds 1 ; ccc4
wccc5:: ds 1 ; ccc5
wccc6:: ds 1 ; ccc6
wccc7:: ds 1 ; ccc7

; Channel 4
wChannel4_InitialMusicAddress:: ds 2 ; ccc8
wChannel4_MusicAddress:: ds 2 ; ccca

wcccc:: ds 1 ; cccc
wcccd:: ds 1 ; cccd
wccce:: ds 1 ; ccce
wcccf:: ds 1 ; cccf
wccd0:: ds 1 ; ccd0
wccd1:: ds 1 ; ccd1
wccd2:: ds 1 ; ccd2
wccd3:: ds 1 ; ccd3
wccd4:: ds 1 ; ccd4
wccd5:: ds 1 ; ccd5
wccd6:: ds 1 ; ccd6
wccd7:: ds 1 ; ccd7
wccd8:: ds 1 ; ccd8
wccd9:: ds 1 ; ccd9
wccda:: ds 1 ; ccda
wccdb:: ds 1 ; ccdb
wccdc:: ds 1 ; ccdc
wccdd:: ds 1 ; ccdd
wccde:: ds 1 ; ccde
wccdf:: ds 1 ; ccdf
wcce0:: ds 1 ; cce0
wcce1:: ds 1 ; cce1
wcce2:: ds 1 ; cce2
wcce3:: ds 1 ; cce3
wcce4:: ds 1 ; cce4
wcce5:: ds 1 ; cce5
wcce6:: ds 1 ; cce6
wcce7:: ds 1 ; cce7
wcce8:: ds 1 ; cce8
wcce9:: ds 1 ; cce9
wccea:: ds 1 ; ccea
wcceb:: ds 1 ; cceb
wccec:: ds 1 ; ccec
wcced:: ds 1 ; cced
wccee:: ds 1 ; ccee
wccef:: ds 1 ; ccef
wccf0:: ds 1 ; ccf0
wccf1:: ds 1 ; ccf1
wccf2:: ds 1 ; ccf2

wccf3:: ds 1 ; ccf3
wccf4:: ds 1 ; ccf4
wccf5:: ds 1 ; ccf5
wccf6:: ds 1 ; ccf6

wccf7:: ds 1 ; ccf7
wccf8:: ds 1 ; ccf8
wccf9:: ds 1 ; ccf9
wccfa:: ds 1 ; ccfa
wccfb:: ds 1 ; ccfb
wccfc:: ds 1 ; ccfc
wccfd:: ds 1 ; ccfd
wccfe:: ds 1 ; ccfe
wccff:: ds 1 ; ccff
wcd00:: ds 1 ; cd00
wcd01:: ds 1 ; cd01
wcd02:: ds 1 ; cd02
wcd03:: ds 1 ; cd03
wcd04:: ds 1 ; cd04
wcd05:: ds 1 ; cd05
wcd06:: ds 1 ; cd06
wcd07:: ds 1 ; cd07
wcd08:: ds 1 ; cd08
wcd09:: ds 1 ; cd09
wcd0a:: ds 1 ; cd0a
wcd0b:: ds 1 ; cd0b
wcd0c:: ds 1 ; cd0c
wcd0d:: ds 1 ; cd0d
wcd0e:: ds 1 ; cd0e
wcd0f:: ds 1 ; cd0f
wcd10:: ds 1 ; cd10
wcd11:: ds 1 ; cd11
wcd12:: ds 1 ; cd12
wcd13:: ds 1 ; cd13
wcd14:: ds 1 ; cd14
wcd15:: ds 1 ; cd15
wcd16:: ds 1 ; cd16
wcd17:: ds 1 ; cd17
wcd18:: ds 1 ; cd18
wcd19:: ds 1 ; cd19
wcd1a:: ds 1 ; cd1a
wcd1b:: ds 1 ; cd1b
wcd1c:: ds 1 ; cd1c
wcd1d:: ds 1 ; cd1d

; SFX?
wcd1e:: ds 2 ; cd1e
wcd20:: ds 2 ; cd20

wcd22:: ds 1 ; cd22
wcd23:: ds 1 ; cd23
wcd24:: ds 1 ; cd24
wcd25:: ds 1 ; cd25
wcd26:: ds 1 ; cd26
wcd27:: ds 1 ; cd27
wcd28:: ds 1 ; cd28
wcd29:: ds 1 ; cd29
wcd2a:: ds 1 ; cd2a
wcd2b:: ds 1 ; cd2b
wcd2c:: ds 1 ; cd2c
wcd2d:: ds 1 ; cd2d
wcd2e:: ds 1 ; cd2e
wcd2f:: ds 1 ; cd2f
wcd30:: ds 1 ; cd30
wcd31:: ds 1 ; cd31
wcd32:: ds 1 ; cd32
wcd33:: ds 1 ; cd33
wcd34:: ds 1 ; cd34
wcd35:: ds 1 ; cd35
wcd36:: ds 1 ; cd36
wcd37:: ds 1 ; cd37
wcd38:: ds 1 ; cd38
wcd39:: ds 1 ; cd39
wcd3a:: ds 1 ; cd3a
wcd3b:: ds 1 ; cd3b
wcd3c:: ds 1 ; cd3c
wcd3d:: ds 1 ; cd3d
wcd3e:: ds 1 ; cd3e
wcd3f:: ds 1 ; cd3f
wcd40:: ds 1 ; cd40
wcd41:: ds 1 ; cd41
wcd42:: ds 1 ; cd42
wcd43:: ds 1 ; cd43
wcd44:: ds 1 ; cd44
wcd45:: ds 1 ; cd45
wcd46:: ds 1 ; cd46
wcd47:: ds 1 ; cd47
wcd48:: ds 1 ; cd48

wcd49:: ds 1 ; cd49
wcd4a:: ds 1 ; cd4a
wcd4b:: ds 1 ; cd4b
wcd4c:: ds 1 ; cd4c

wcd4d:: ds 1 ; cd4d
wcd4e:: ds 1 ; cd4e
wcd4f:: ds 1 ; cd4f
wcd50:: ds 1 ; cd50
wcd51:: ds 1 ; cd51
wcd52:: ds 1 ; cd52
wcd53:: ds 1 ; cd53
wcd54:: ds 1 ; cd54
wcd55:: ds 1 ; cd55
wcd56:: ds 1 ; cd56
wcd57:: ds 1 ; cd57
wcd58:: ds 1 ; cd58
wcd59:: ds 1 ; cd59
wcd5a:: ds 1 ; cd5a
wcd5b:: ds 1 ; cd5b
wcd5c:: ds 1 ; cd5c
wcd5d:: ds 1 ; cd5d
wcd5e:: ds 1 ; cd5e
wcd5f:: ds 1 ; cd5f
wcd60:: ds 1 ; cd60
wcd61:: ds 1 ; cd61
wcd62:: ds 1 ; cd62
wcd63:: ds 1 ; cd63
wcd64:: ds 1 ; cd64
wcd65:: ds 1 ; cd65
wcd66:: ds 1 ; cd66
wcd67:: ds 1 ; cd67
wcd68:: ds 1 ; cd68
wcd69:: ds 1 ; cd69
wcd6a:: ds 1 ; cd6a
wcd6b:: ds 1 ; cd6b
wcd6c:: ds 1 ; cd6c
wcd6d:: ds 1 ; cd6d
wcd6e:: ds 1 ; cd6e
wcd6f:: ds 1 ; cd6f
wcd70:: ds 1 ; cd70
wcd71:: ds 1 ; cd71
wcd72:: ds 1 ; cd72
wcd73:: ds 1 ; cd73

wcd74:: ds 1 ; cd74
wcd75:: ds 1 ; cd75
wcd76:: ds 1 ; cd76
wcd77:: ds 1 ; cd77

wcd78:: ds 1 ; cd78
wcd79:: ds 1 ; cd79
wcd7a:: ds 1 ; cd7a
wcd7b:: ds 1 ; cd7b
wcd7c:: ds 1 ; cd7c
wcd7d:: ds 1 ; cd7d
wcd7e:: ds 1 ; cd7e

wcd7f:: ds 1 ; cd7f
wcd80:: ds 1 ; cd80

; Music header
wcd81:: ds 1 ; cd81
wcd82:: ds 1 ; cd82

wcd83:: ds 1 ; cd83
wcd84:: ds 1 ; cd84
wcd85:: ds 1 ; cd85
wcd86:: ds 1 ; cd86
wAudioEnd::

; Sound engine end

wcd87:: ds 1 ; cd87
wcd88:: ds 1 ; cd88
wcd89:: ds 1 ; cd89
wcd8a:: ds 1 ; cd8a
wcd8b:: ds 1 ; cd8b
wcd8c:: ds 1 ; cd8c
wcd8d:: ds 1 ; cd8d
wcd8e:: ds 1 ; cd8e
wcd8f:: ds 1 ; cd8f
wcd90:: ds 1 ; cd90
wcd91:: ds 1 ; cd91
wcd92:: ds 1 ; cd92
wcd93:: ds 1 ; cd93
wcd94:: ds 1 ; cd94
wcd95:: ds 1 ; cd95
wcd96:: ds 1 ; cd96
wcd97:: ds 1 ; cd97
wcd98:: ds 1 ; cd98
wcd99:: ds 1 ; cd99
wcd9a:: ds 1 ; cd9a
wcd9b:: ds 1 ; cd9b
wcd9c:: ds 1 ; cd9c
wcd9d:: ds 1 ; cd9d
wcd9e:: ds 1 ; cd9e

wcd9f:: ds 1 ; cd9f
wcda0:: ds 1 ; cda0
wcda1:: ds 1 ; cda1
wcda2:: ds 1 ; cda2

wcda3:: ds 1 ; cda3
wcda4:: ds 1 ; cda4
wcda5:: ds 1 ; cda5
wcda6:: ds 1 ; cda6
wcda7:: ds 1 ; cda7
wcda8:: ds 1 ; cda8
wcda9:: ds 1 ; cda9
wcdaa:: ds 1 ; cdaa
wcdab:: ds 1 ; cdab
wcdac:: ds 1 ; cdac
wcdad:: ds 1 ; cdad
wcdae:: ds 1 ; cdae
wcdaf:: ds 1 ; cdaf

wcdb0:: ds $150 ; cdb0

wcf00:: ds $80 ; cf00

wJoypadDown:: db ; cf80
wcf81:: ds 1 ; cf81

wcf82:: ds 1 ; cf82
wcf83:: ds 1 ; cf83
wcf84:: ds 1 ; cf84
wcf85:: ds 1 ; cf85
wcf86:: ds 1 ; cf86
wcf87:: ds 1 ; cf87

wScore:: ds 7 ; cf88

wcf8f:: ds 1 ; cf8f
wcf90:: ds 1 ; cf90
wcf91:: ds 1 ; cf91
wcf92:: ds 1 ; cf92
wcf93:: ds 1 ; cf93
wcf94:: ds 1 ; cf94

wLives:: db ; cf95
wcf96:: ds 1 ; cf96 (Gain lives?)

wFadeoutCounter:: ds 1 ; cf97
wcf98:: ds 1 ; cf98
wcf99:: ds 1 ; cf99
wcf9a:: ds 1 ; cf9a
wcf9b:: ds 1 ; cf9b
wcf9c:: ds 1 ; cf9c

wPaused:: db ; cf9d

wcf9e:: ds 1 ; cf9e
wcf9f:: ds 1 ; cf9f
wcfa0:: ds 1 ; cfa0

wBossMusicPlaying:: db ; cfa1

wcfa2:: ds 1 ; cfa2
wcfa3:: ds 1 ; cfa3
wcfa4:: ds 1 ; cfa4

wcfa5:: ds $4b ; cfa5

wcff0:: ds 1 ; cff0

wTopScore:: ds 7 ; cff1

wcff8:: ds 1 ; cff8
wcff9:: ds 1 ; cff9
wcffa:: ds 1 ; cffa
wcffb:: ds 1 ; cffb
wcffc:: ds 1 ; cffc
wcffd:: ds 1 ; cffd
wcffe:: ds 1 ; cffe
wcfff:: ds 1 ; cfff

SECTION "WRAM 1", WRAMX

wd000:: ds $200 ; d000

wd200:: ds $550 ; d200

wd750:: ds $b0 ; d750 (junk?)

wd800:: ds $400 ; d800

wdc00:: ds $400 ; dc00
