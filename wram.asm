INCLUDE "constants.asm"

SECTION "WRAM", WRAM0

SECTION "OAM Buffer", WRAM0[$c000]

wc000:: ds $100 ; c000

wc100:: ds $600 ; c100

wc700:: ds $80 ; c700

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

wc810:: ds 1 ; c810
wc811:: ds 1 ; c811
wc812:: ds 1 ; c812
wc813:: ds 1 ; c813
wc814:: ds 1 ; c814
wc815:: ds 1 ; c815
wc816:: ds 1 ; c816
wc817:: ds 1 ; c817
wc818:: ds 1 ; c818
wc819:: ds 1 ; c819
wc81a:: ds 1 ; c81a
wc81b:: ds 1 ; c81b
wc81c:: ds 1 ; c81c
wc81d:: ds 1 ; c81d
wc81e:: ds 1 ; c81e
wc81f:: ds 1 ; c81f

wc820:: ds 1 ; c820
wc821:: ds 1 ; c821
wc822:: ds 1 ; c822
wc823:: ds 1 ; c823
wc824:: ds 1 ; c824
wc825:: ds 1 ; c825
wc826:: ds 1 ; c826
wc827:: ds 1 ; c827
wc828:: ds 1 ; c828
wc829:: ds 1 ; c829
wc82a:: ds 1 ; c82a
wc82b:: ds 1 ; c82b
wc82c:: ds 1 ; c82c
wc82d:: ds 1 ; c82d
wc82e:: ds 1 ; c82e
wc82f:: ds 1 ; c82f
wc830:: ds 1 ; c830
wc831:: ds 1 ; c831
wc832:: ds 1 ; c832
wc833:: ds 1 ; c833
wc834:: ds 1 ; c834
wc835:: ds 1 ; c835
wc836:: ds 1 ; c836
wc837:: ds 1 ; c837
wc838:: ds 1 ; c838
wc839:: ds 1 ; c839
wc83a:: ds 1 ; c83a
wc83b:: ds 1 ; c83b
wc83c:: ds 1 ; c83c
wc83d:: ds 1 ; c83d
wc83e:: ds 1 ; c83e
wc83f:: ds 1 ; c83f
wc840:: ds 1 ; c840
wc841:: ds 1 ; c841
wc842:: ds 1 ; c842
wc843:: ds 1 ; c843
wc844:: ds 1 ; c844
wc845:: ds 1 ; c845
wc846:: ds 1 ; c846
wc847:: ds 1 ; c847
wc848:: ds 1 ; c848
wc849:: ds 1 ; c849
wc84a:: ds 1 ; c84a
wc84b:: ds 1 ; c84b
wc84c:: ds 1 ; c84c
wc84d:: ds 1 ; c84d
wc84e:: ds 1 ; c84e
wc84f:: ds 1 ; c84f
wc850:: ds 1 ; c850
wc851:: ds 1 ; c851
wc852:: ds 1 ; c852
wc853:: ds 1 ; c853
wc854:: ds 1 ; c854
wc855:: ds 1 ; c855
wc856:: ds 1 ; c856
wc857:: ds 1 ; c857
wc858:: ds 1 ; c858
wc859:: ds 1 ; c859
wc85a:: ds 1 ; c85a
wc85b:: ds 1 ; c85b
wc85c:: ds 1 ; c85c
wc85d:: ds 1 ; c85d
wc85e:: ds 1 ; c85e
wc85f:: ds 1 ; c85f
wc860:: ds 1 ; c860
wc861:: ds 1 ; c861
wc862:: ds 1 ; c862
wc863:: ds 1 ; c863
wc864:: ds 1 ; c864
wc865:: ds 1 ; c865
wc866:: ds 1 ; c866
wc867:: ds 1 ; c867
wc868:: ds 1 ; c868
wc869:: ds 1 ; c869
wc86a:: ds 1 ; c86a
wc86b:: ds 1 ; c86b
wc86c:: ds 1 ; c86c
wc86d:: ds 1 ; c86d
wc86e:: ds 1 ; c86e
wc86f:: ds 1 ; c86f
wc870:: ds 1 ; c870
wc871:: ds 1 ; c871
wc872:: ds 1 ; c872
wc873:: ds 1 ; c873
wc874:: ds 1 ; c874
wc875:: ds 1 ; c875
wc876:: ds 1 ; c876
wc877:: ds 1 ; c877
wc878:: ds 1 ; c878
wc879:: ds 1 ; c879
wc87a:: ds 1 ; c87a
wc87b:: ds 1 ; c87b
wc87c:: ds 1 ; c87c
wc87d:: ds 1 ; c87d
wc87e:: ds 1 ; c87e
wc87f:: ds 1 ; c87f
wc880:: ds 1 ; c880
wc881:: ds 1 ; c881
wc882:: ds 1 ; c882
wc883:: ds 1 ; c883
wc884:: ds 1 ; c884
wc885:: ds 1 ; c885
wc886:: ds 1 ; c886
wc887:: ds 1 ; c887
wc888:: ds 1 ; c888
wc889:: ds 1 ; c889
wc88a:: ds 1 ; c88a
wc88b:: ds 1 ; c88b
wc88c:: ds 1 ; c88c
wc88d:: ds 1 ; c88d
wc88e:: ds 1 ; c88e
wc88f:: ds 1 ; c88f
wc890:: ds 1 ; c890
wc891:: ds 1 ; c891
wc892:: ds 1 ; c892
wc893:: ds 1 ; c893
wc894:: ds 1 ; c894
wc895:: ds 1 ; c895
wc896:: ds 1 ; c896
wc897:: ds 1 ; c897
wc898:: ds 1 ; c898
wc899:: ds 1 ; c899
wc89a:: ds 1 ; c89a
wc89b:: ds 1 ; c89b
wc89c:: ds 1 ; c89c
wc89d:: ds 1 ; c89d
wc89e:: ds 1 ; c89e
wc89f:: ds 1 ; c89f
wc8a0:: ds 1 ; c8a0
wc8a1:: ds 1 ; c8a1
wc8a2:: ds 1 ; c8a2
wc8a3:: ds 1 ; c8a3
wc8a4:: ds 1 ; c8a4
wc8a5:: ds 1 ; c8a5
wc8a6:: ds 1 ; c8a6
wc8a7:: ds 1 ; c8a7
wc8a8:: ds 1 ; c8a8
wc8a9:: ds 1 ; c8a9
wc8aa:: ds 1 ; c8aa
wc8ab:: ds 1 ; c8ab
wc8ac:: ds 1 ; c8ac
wc8ad:: ds 1 ; c8ad
wc8ae:: ds 1 ; c8ae
wc8af:: ds 1 ; c8af
wc8b0:: ds 1 ; c8b0
wc8b1:: ds 1 ; c8b1
wc8b2:: ds 1 ; c8b2
wc8b3:: ds 1 ; c8b3
wc8b4:: ds 1 ; c8b4
wc8b5:: ds 1 ; c8b5
wc8b6:: ds 1 ; c8b6
wc8b7:: ds 1 ; c8b7
wc8b8:: ds 1 ; c8b8
wc8b9:: ds 1 ; c8b9
wc8ba:: ds 1 ; c8ba
wc8bb:: ds 1 ; c8bb
wc8bc:: ds 1 ; c8bc
wc8bd:: ds 1 ; c8bd
wc8be:: ds 1 ; c8be
wc8bf:: ds 1 ; c8bf
wc8c0:: ds 1 ; c8c0
wc8c1:: ds 1 ; c8c1
wc8c2:: ds 1 ; c8c2
wc8c3:: ds 1 ; c8c3
wc8c4:: ds 1 ; c8c4
wc8c5:: ds 1 ; c8c5
wc8c6:: ds 1 ; c8c6
wc8c7:: ds 1 ; c8c7
wc8c8:: ds 1 ; c8c8
wc8c9:: ds 1 ; c8c9
wc8ca:: ds 1 ; c8ca
wc8cb:: ds 1 ; c8cb
wc8cc:: ds 1 ; c8cc
wc8cd:: ds 1 ; c8cd
wc8ce:: ds 1 ; c8ce
wc8cf:: ds 1 ; c8cf
wc8d0:: ds 1 ; c8d0
wc8d1:: ds 1 ; c8d1
wc8d2:: ds 1 ; c8d2
wc8d3:: ds 1 ; c8d3
wc8d4:: ds 1 ; c8d4
wc8d5:: ds 1 ; c8d5
wc8d6:: ds 1 ; c8d6
wc8d7:: ds 1 ; c8d7
wc8d8:: ds 1 ; c8d8
wc8d9:: ds 1 ; c8d9
wc8da:: ds 1 ; c8da
wc8db:: ds 1 ; c8db
wc8dc:: ds 1 ; c8dc
wc8dd:: ds 1 ; c8dd
wc8de:: ds 1 ; c8de
wc8df:: ds 1 ; c8df
wc8e0:: ds 1 ; c8e0
wc8e1:: ds 1 ; c8e1
wc8e2:: ds 1 ; c8e2
wc8e3:: ds 1 ; c8e3
wc8e4:: ds 1 ; c8e4
wc8e5:: ds 1 ; c8e5
wc8e6:: ds 1 ; c8e6
wc8e7:: ds 1 ; c8e7
wc8e8:: ds 1 ; c8e8
wc8e9:: ds 1 ; c8e9
wc8ea:: ds 1 ; c8ea
wc8eb:: ds 1 ; c8eb
wc8ec:: ds 1 ; c8ec
wc8ed:: ds 1 ; c8ed
wc8ee:: ds 1 ; c8ee
wc8ef:: ds 1 ; c8ef
wc8f0:: ds 1 ; c8f0
wc8f1:: ds 1 ; c8f1
wc8f2:: ds 1 ; c8f2
wc8f3:: ds 1 ; c8f3
wc8f4:: ds 1 ; c8f4
wc8f5:: ds 1 ; c8f5
wc8f6:: ds 1 ; c8f6
wc8f7:: ds 1 ; c8f7
wc8f8:: ds 1 ; c8f8
wc8f9:: ds 1 ; c8f9
wc8fa:: ds 1 ; c8fa
wc8fb:: ds 1 ; c8fb
wc8fc:: ds 1 ; c8fc
wc8fd:: ds 1 ; c8fd
wc8fe:: ds 1 ; c8fe
wc8ff:: ds 1 ; c8ff
wc900:: ds 1 ; c900
wc901:: ds 1 ; c901
wc902:: ds 1 ; c902
wc903:: ds 1 ; c903
wc904:: ds 1 ; c904
wc905:: ds 1 ; c905
wc906:: ds 1 ; c906
wc907:: ds 1 ; c907
wc908:: ds 1 ; c908
wc909:: ds 1 ; c909
wc90a:: ds 1 ; c90a
wc90b:: ds 1 ; c90b
wc90c:: ds 1 ; c90c
wc90d:: ds 1 ; c90d
wc90e:: ds 1 ; c90e
wc90f:: ds 1 ; c90f
wc910:: ds 1 ; c910
wc911:: ds 1 ; c911
wc912:: ds 1 ; c912
wc913:: ds 1 ; c913
wc914:: ds 1 ; c914
wc915:: ds 1 ; c915
wc916:: ds 1 ; c916
wc917:: ds 1 ; c917
wc918:: ds 1 ; c918
wc919:: ds 1 ; c919
wc91a:: ds 1 ; c91a
wc91b:: ds 1 ; c91b
wc91c:: ds 1 ; c91c
wc91d:: ds 1 ; c91d
wc91e:: ds 1 ; c91e
wc91f:: ds 1 ; c91f
wc920:: ds 1 ; c920
wc921:: ds 1 ; c921
wc922:: ds 1 ; c922
wc923:: ds 1 ; c923
wc924:: ds 1 ; c924
wc925:: ds 1 ; c925
wc926:: ds 1 ; c926
wc927:: ds 1 ; c927
wc928:: ds 1 ; c928
wc929:: ds 1 ; c929
wc92a:: ds 1 ; c92a
wc92b:: ds 1 ; c92b
wc92c:: ds 1 ; c92c
wc92d:: ds 1 ; c92d
wc92e:: ds 1 ; c92e
wc92f:: ds 1 ; c92f
wc930:: ds 1 ; c930
wc931:: ds 1 ; c931
wc932:: ds 1 ; c932
wc933:: ds 1 ; c933
wc934:: ds 1 ; c934
wc935:: ds 1 ; c935
wc936:: ds 1 ; c936
wc937:: ds 1 ; c937
wc938:: ds 1 ; c938
wc939:: ds 1 ; c939
wc93a:: ds 1 ; c93a
wc93b:: ds 1 ; c93b
wc93c:: ds 1 ; c93c
wc93d:: ds 1 ; c93d
wc93e:: ds 1 ; c93e
wc93f:: ds 1 ; c93f
wc940:: ds 1 ; c940
wc941:: ds 1 ; c941
wc942:: ds 1 ; c942
wc943:: ds 1 ; c943
wc944:: ds 1 ; c944
wc945:: ds 1 ; c945
wc946:: ds 1 ; c946
wc947:: ds 1 ; c947
wc948:: ds 1 ; c948
wc949:: ds 1 ; c949
wc94a:: ds 1 ; c94a
wc94b:: ds 1 ; c94b
wc94c:: ds 1 ; c94c
wc94d:: ds 1 ; c94d
wc94e:: ds 1 ; c94e
wc94f:: ds 1 ; c94f
wc950:: ds 1 ; c950
wc951:: ds 1 ; c951
wc952:: ds 1 ; c952
wc953:: ds 1 ; c953
wc954:: ds 1 ; c954
wc955:: ds 1 ; c955
wc956:: ds 1 ; c956
wc957:: ds 1 ; c957
wc958:: ds 1 ; c958
wc959:: ds 1 ; c959
wc95a:: ds 1 ; c95a
wc95b:: ds 1 ; c95b
wc95c:: ds 1 ; c95c
wc95d:: ds 1 ; c95d
wc95e:: ds 1 ; c95e
wc95f:: ds 1 ; c95f
wc960:: ds 1 ; c960
wc961:: ds 1 ; c961
wc962:: ds 1 ; c962
wc963:: ds 1 ; c963
wc964:: ds 1 ; c964
wc965:: ds 1 ; c965
wc966:: ds 1 ; c966
wc967:: ds 1 ; c967
wc968:: ds 1 ; c968
wc969:: ds 1 ; c969
wc96a:: ds 1 ; c96a
wc96b:: ds 1 ; c96b
wc96c:: ds 1 ; c96c
wc96d:: ds 1 ; c96d
wc96e:: ds 1 ; c96e
wc96f:: ds 1 ; c96f
wc970:: ds 1 ; c970
wc971:: ds 1 ; c971
wc972:: ds 1 ; c972
wc973:: ds 1 ; c973
wc974:: ds 1 ; c974
wc975:: ds 1 ; c975
wc976:: ds 1 ; c976
wc977:: ds 1 ; c977
wc978:: ds 1 ; c978
wc979:: ds 1 ; c979
wc97a:: ds 1 ; c97a
wc97b:: ds 1 ; c97b
wc97c:: ds 1 ; c97c
wc97d:: ds 1 ; c97d
wc97e:: ds 1 ; c97e
wc97f:: ds 1 ; c97f
wc980:: ds 1 ; c980
wc981:: ds 1 ; c981
wc982:: ds 1 ; c982
wc983:: ds 1 ; c983
wc984:: ds 1 ; c984
wc985:: ds 1 ; c985
wc986:: ds 1 ; c986
wc987:: ds 1 ; c987
wc988:: ds 1 ; c988
wc989:: ds 1 ; c989
wc98a:: ds 1 ; c98a
wc98b:: ds 1 ; c98b
wc98c:: ds 1 ; c98c
wc98d:: ds 1 ; c98d
wc98e:: ds 1 ; c98e
wc98f:: ds 1 ; c98f
wc990:: ds 1 ; c990
wc991:: ds 1 ; c991
wc992:: ds 1 ; c992
wc993:: ds 1 ; c993
wc994:: ds 1 ; c994
wc995:: ds 1 ; c995
wc996:: ds 1 ; c996
wc997:: ds 1 ; c997
wc998:: ds 1 ; c998
wc999:: ds 1 ; c999
wc99a:: ds 1 ; c99a
wc99b:: ds 1 ; c99b
wc99c:: ds 1 ; c99c
wc99d:: ds 1 ; c99d
wc99e:: ds 1 ; c99e
wc99f:: ds 1 ; c99f
wc9a0:: ds 1 ; c9a0
wc9a1:: ds 1 ; c9a1
wc9a2:: ds 1 ; c9a2
wc9a3:: ds 1 ; c9a3
wc9a4:: ds 1 ; c9a4
wc9a5:: ds 1 ; c9a5
wc9a6:: ds 1 ; c9a6
wc9a7:: ds 1 ; c9a7
wc9a8:: ds 1 ; c9a8
wc9a9:: ds 1 ; c9a9
wc9aa:: ds 1 ; c9aa
wc9ab:: ds 1 ; c9ab
wc9ac:: ds 1 ; c9ac
wc9ad:: ds 1 ; c9ad
wc9ae:: ds 1 ; c9ae
wc9af:: ds 1 ; c9af
wc9b0:: ds 1 ; c9b0
wc9b1:: ds 1 ; c9b1
wc9b2:: ds 1 ; c9b2
wc9b3:: ds 1 ; c9b3
wc9b4:: ds 1 ; c9b4
wc9b5:: ds 1 ; c9b5
wc9b6:: ds 1 ; c9b6
wc9b7:: ds 1 ; c9b7
wc9b8:: ds 1 ; c9b8
wc9b9:: ds 1 ; c9b9
wc9ba:: ds 1 ; c9ba
wc9bb:: ds 1 ; c9bb
wc9bc:: ds 1 ; c9bc
wc9bd:: ds 1 ; c9bd
wc9be:: ds 1 ; c9be
wc9bf:: ds 1 ; c9bf
wc9c0:: ds 1 ; c9c0
wc9c1:: ds 1 ; c9c1
wc9c2:: ds 1 ; c9c2
wc9c3:: ds 1 ; c9c3
wc9c4:: ds 1 ; c9c4
wc9c5:: ds 1 ; c9c5
wc9c6:: ds 1 ; c9c6
wc9c7:: ds 1 ; c9c7
wc9c8:: ds 1 ; c9c8
wc9c9:: ds 1 ; c9c9
wc9ca:: ds 1 ; c9ca
wc9cb:: ds 1 ; c9cb
wc9cc:: ds 1 ; c9cc
wc9cd:: ds 1 ; c9cd
wc9ce:: ds 1 ; c9ce
wc9cf:: ds 1 ; c9cf
wc9d0:: ds 1 ; c9d0
wc9d1:: ds 1 ; c9d1
wc9d2:: ds 1 ; c9d2
wc9d3:: ds 1 ; c9d3
wc9d4:: ds 1 ; c9d4
wc9d5:: ds 1 ; c9d5
wc9d6:: ds 1 ; c9d6
wc9d7:: ds 1 ; c9d7
wc9d8:: ds 1 ; c9d8
wc9d9:: ds 1 ; c9d9
wc9da:: ds 1 ; c9da
wc9db:: ds 1 ; c9db
wc9dc:: ds 1 ; c9dc
wc9dd:: ds 1 ; c9dd
wc9de:: ds 1 ; c9de
wc9df:: ds 1 ; c9df
wc9e0:: ds 1 ; c9e0
wc9e1:: ds 1 ; c9e1
wc9e2:: ds 1 ; c9e2
wc9e3:: ds 1 ; c9e3
wc9e4:: ds 1 ; c9e4
wc9e5:: ds 1 ; c9e5
wc9e6:: ds 1 ; c9e6
wc9e7:: ds 1 ; c9e7
wc9e8:: ds 1 ; c9e8
wc9e9:: ds 1 ; c9e9
wc9ea:: ds 1 ; c9ea
wc9eb:: ds 1 ; c9eb
wc9ec:: ds 1 ; c9ec
wc9ed:: ds 1 ; c9ed
wc9ee:: ds 1 ; c9ee
wc9ef:: ds 1 ; c9ef
wc9f0:: ds 1 ; c9f0
wc9f1:: ds 1 ; c9f1
wc9f2:: ds 1 ; c9f2
wc9f3:: ds 1 ; c9f3
wc9f4:: ds 1 ; c9f4
wc9f5:: ds 1 ; c9f5
wc9f6:: ds 1 ; c9f6
wc9f7:: ds 1 ; c9f7
wc9f8:: ds 1 ; c9f8
wc9f9:: ds 1 ; c9f9
wc9fa:: ds 1 ; c9fa
wc9fb:: ds 1 ; c9fb
wc9fc:: ds 1 ; c9fc
wc9fd:: ds 1 ; c9fd
wc9fe:: ds 1 ; c9fe
wc9ff:: ds 1 ; c9ff

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
wca12:: ds 1 ; ca12
wca13:: ds 1 ; ca13

wca14:: ds 2 ; ca14

wca16:: ds 1 ; ca16
wca17:: ds 1 ; ca17
wca18:: ds 1 ; ca18

wCurrentStage:: db ; ca19

wca1a:: ds 1 ; ca1a
wca1b:: ds 1 ; ca1b
wca1c:: ds 1 ; ca1c
wca1d:: ds 1 ; ca1d
wca1e:: ds 1 ; ca1e
wca1f:: ds 1 ; ca1f

wPlayerHP:: db ; ca20 (HP, either 0 (Alive) or 1 (Dead))
wPowerLevel:: db ; ca21

wca22:: ds 1 ; ca22
wca23:: ds 1 ; ca23 (Joypad)
wca24:: ds 1 ; ca24
wca25:: ds 1 ; ca25
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
wca51:: ds 1 ; ca51
wca52:: ds 1 ; ca52
wca53:: ds 1 ; ca53
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
wca82:: ds 1 ; ca82
wca83:: ds 1 ; ca83
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
wcab2:: ds 1 ; cab2
wcab3:: ds 1 ; cab3
wcab4:: ds 1 ; cab4
wcab5:: ds 1 ; cab5
wcab6:: ds 1 ; cab6
wcab7:: ds 1 ; cab7
wcab8:: ds 1 ; cab8
wcab9:: ds 1 ; cab9
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
wcb00:: ds 1 ; cb00
wcb01:: ds 1 ; cb01
wcb02:: ds 1 ; cb02
wcb03:: ds 1 ; cb03
wcb04:: ds 1 ; cb04
wcb05:: ds 1 ; cb05
wcb06:: ds 1 ; cb06
wcb07:: ds 1 ; cb07
wcb08:: ds 1 ; cb08
wcb09:: ds 1 ; cb09
wcb0a:: ds 1 ; cb0a
wcb0b:: ds 1 ; cb0b
wcb0c:: ds 1 ; cb0c
wcb0d:: ds 1 ; cb0d
wcb0e:: ds 1 ; cb0e
wcb0f:: ds 1 ; cb0f
wcb10:: ds 1 ; cb10
wcb11:: ds 1 ; cb11
wcb12:: ds 1 ; cb12
wcb13:: ds 1 ; cb13
wcb14:: ds 1 ; cb14
wcb15:: ds 1 ; cb15
wcb16:: ds 1 ; cb16
wcb17:: ds 1 ; cb17
wcb18:: ds 1 ; cb18
wcb19:: ds 1 ; cb19
wcb1a:: ds 1 ; cb1a
wcb1b:: ds 1 ; cb1b
wcb1c:: ds 1 ; cb1c
wcb1d:: ds 1 ; cb1d
wcb1e:: ds 1 ; cb1e
wcb1f:: ds 1 ; cb1f
wcb20:: ds 1 ; cb20
wcb21:: ds 1 ; cb21
wcb22:: ds 1 ; cb22
wcb23:: ds 1 ; cb23
wcb24:: ds 1 ; cb24
wcb25:: ds 1 ; cb25
wcb26:: ds 1 ; cb26
wcb27:: ds 1 ; cb27
wcb28:: ds 1 ; cb28
wcb29:: ds 1 ; cb29
wcb2a:: ds 1 ; cb2a
wcb2b:: ds 1 ; cb2b
wcb2c:: ds 1 ; cb2c
wcb2d:: ds 1 ; cb2d
wcb2e:: ds 1 ; cb2e
wcb2f:: ds 1 ; cb2f
wcb30:: ds 1 ; cb30
wcb31:: ds 1 ; cb31
wcb32:: ds 1 ; cb32
wcb33:: ds 1 ; cb33
wcb34:: ds 1 ; cb34
wcb35:: ds 1 ; cb35
wcb36:: ds 1 ; cb36
wcb37:: ds 1 ; cb37
wcb38:: ds 1 ; cb38
wcb39:: ds 1 ; cb39
wcb3a:: ds 1 ; cb3a
wcb3b:: ds 1 ; cb3b
wcb3c:: ds 1 ; cb3c
wcb3d:: ds 1 ; cb3d
wcb3e:: ds 1 ; cb3e
wcb3f:: ds 1 ; cb3f
wcb40:: ds 1 ; cb40
wcb41:: ds 1 ; cb41
wcb42:: ds 1 ; cb42
wcb43:: ds 1 ; cb43
wcb44:: ds 1 ; cb44
wcb45:: ds 1 ; cb45
wcb46:: ds 1 ; cb46
wcb47:: ds 1 ; cb47
wcb48:: ds 1 ; cb48
wcb49:: ds 1 ; cb49
wcb4a:: ds 1 ; cb4a
wcb4b:: ds 1 ; cb4b
wcb4c:: ds 1 ; cb4c
wcb4d:: ds 1 ; cb4d
wcb4e:: ds 1 ; cb4e
wcb4f:: ds 1 ; cb4f
wcb50:: ds 1 ; cb50
wcb51:: ds 1 ; cb51
wcb52:: ds 1 ; cb52
wcb53:: ds 1 ; cb53
wcb54:: ds 1 ; cb54
wcb55:: ds 1 ; cb55
wcb56:: ds 1 ; cb56
wcb57:: ds 1 ; cb57
wcb58:: ds 1 ; cb58
wcb59:: ds 1 ; cb59
wcb5a:: ds 1 ; cb5a
wcb5b:: ds 1 ; cb5b
wcb5c:: ds 1 ; cb5c
wcb5d:: ds 1 ; cb5d
wcb5e:: ds 1 ; cb5e
wcb5f:: ds 1 ; cb5f
wcb60:: ds 1 ; cb60
wcb61:: ds 1 ; cb61
wcb62:: ds 1 ; cb62
wcb63:: ds 1 ; cb63
wcb64:: ds 1 ; cb64
wcb65:: ds 1 ; cb65
wcb66:: ds 1 ; cb66
wcb67:: ds 1 ; cb67
wcb68:: ds 1 ; cb68
wcb69:: ds 1 ; cb69
wcb6a:: ds 1 ; cb6a
wcb6b:: ds 1 ; cb6b
wcb6c:: ds 1 ; cb6c
wcb6d:: ds 1 ; cb6d
wcb6e:: ds 1 ; cb6e
wcb6f:: ds 1 ; cb6f
wcb70:: ds 1 ; cb70
wcb71:: ds 1 ; cb71
wcb72:: ds 1 ; cb72
wcb73:: ds 1 ; cb73
wcb74:: ds 1 ; cb74
wcb75:: ds 1 ; cb75
wcb76:: ds 1 ; cb76
wcb77:: ds 1 ; cb77
wcb78:: ds 1 ; cb78
wcb79:: ds 1 ; cb79
wcb7a:: ds 1 ; cb7a
wcb7b:: ds 1 ; cb7b
wcb7c:: ds 1 ; cb7c
wcb7d:: ds 1 ; cb7d
wcb7e:: ds 1 ; cb7e
wcb7f:: ds 1 ; cb7f
wcb80:: ds 1 ; cb80
wcb81:: ds 1 ; cb81
wcb82:: ds 1 ; cb82
wcb83:: ds 1 ; cb83
wcb84:: ds 1 ; cb84
wcb85:: ds 1 ; cb85
wcb86:: ds 1 ; cb86
wcb87:: ds 1 ; cb87
wcb88:: ds 1 ; cb88
wcb89:: ds 1 ; cb89
wcb8a:: ds 1 ; cb8a
wcb8b:: ds 1 ; cb8b
wcb8c:: ds 1 ; cb8c
wcb8d:: ds 1 ; cb8d
wcb8e:: ds 1 ; cb8e
wcb8f:: ds 1 ; cb8f
wcb90:: ds 1 ; cb90
wcb91:: ds 1 ; cb91
wcb92:: ds 1 ; cb92
wcb93:: ds 1 ; cb93
wcb94:: ds 1 ; cb94
wcb95:: ds 1 ; cb95
wcb96:: ds 1 ; cb96
wcb97:: ds 1 ; cb97
wcb98:: ds 1 ; cb98
wcb99:: ds 1 ; cb99
wcb9a:: ds 1 ; cb9a
wcb9b:: ds 1 ; cb9b
wcb9c:: ds 1 ; cb9c
wcb9d:: ds 1 ; cb9d
wcb9e:: ds 1 ; cb9e
wcb9f:: ds 1 ; cb9f
wcba0:: ds 1 ; cba0
wcba1:: ds 1 ; cba1
wcba2:: ds 1 ; cba2
wcba3:: ds 1 ; cba3
wcba4:: ds 1 ; cba4
wcba5:: ds 1 ; cba5
wcba6:: ds 1 ; cba6
wcba7:: ds 1 ; cba7
wcba8:: ds 1 ; cba8
wcba9:: ds 1 ; cba9
wcbaa:: ds 1 ; cbaa
wcbab:: ds 1 ; cbab
wcbac:: ds 1 ; cbac
wcbad:: ds 1 ; cbad
wcbae:: ds 1 ; cbae
wcbaf:: ds 1 ; cbaf
wcbb0:: ds 1 ; cbb0
wcbb1:: ds 1 ; cbb1
wcbb2:: ds 1 ; cbb2
wcbb3:: ds 1 ; cbb3
wcbb4:: ds 1 ; cbb4
wcbb5:: ds 1 ; cbb5
wcbb6:: ds 1 ; cbb6
wcbb7:: ds 1 ; cbb7
wcbb8:: ds 1 ; cbb8
wcbb9:: ds 1 ; cbb9
wcbba:: ds 1 ; cbba
wcbbb:: ds 1 ; cbbb
wcbbc:: ds 1 ; cbbc
wcbbd:: ds 1 ; cbbd
wcbbe:: ds 1 ; cbbe
wcbbf:: ds 1 ; cbbf
wcbc0:: ds 1 ; cbc0
wcbc1:: ds 1 ; cbc1
wcbc2:: ds 1 ; cbc2
wcbc3:: ds 1 ; cbc3
wcbc4:: ds 1 ; cbc4
wcbc5:: ds 1 ; cbc5
wcbc6:: ds 1 ; cbc6
wcbc7:: ds 1 ; cbc7
wcbc8:: ds 1 ; cbc8
wcbc9:: ds 1 ; cbc9
wcbca:: ds 1 ; cbca
wcbcb:: ds 1 ; cbcb
wcbcc:: ds 1 ; cbcc
wcbcd:: ds 1 ; cbcd
wcbce:: ds 1 ; cbce
wcbcf:: ds 1 ; cbcf
wcbd0:: ds 1 ; cbd0
wcbd1:: ds 1 ; cbd1
wcbd2:: ds 1 ; cbd2
wcbd3:: ds 1 ; cbd3
wcbd4:: ds 1 ; cbd4
wcbd5:: ds 1 ; cbd5
wcbd6:: ds 1 ; cbd6
wcbd7:: ds 1 ; cbd7
wcbd8:: ds 1 ; cbd8
wcbd9:: ds 1 ; cbd9
wcbda:: ds 1 ; cbda
wcbdb:: ds 1 ; cbdb
wcbdc:: ds 1 ; cbdc
wcbdd:: ds 1 ; cbdd
wcbde:: ds 1 ; cbde
wcbdf:: ds 1 ; cbdf
wcbe0:: ds 1 ; cbe0
wcbe1:: ds 1 ; cbe1
wcbe2:: ds 1 ; cbe2
wcbe3:: ds 1 ; cbe3
wcbe4:: ds 1 ; cbe4
wcbe5:: ds 1 ; cbe5
wcbe6:: ds 1 ; cbe6
wcbe7:: ds 1 ; cbe7
wcbe8:: ds 1 ; cbe8
wcbe9:: ds 1 ; cbe9
wcbea:: ds 1 ; cbea
wcbeb:: ds 1 ; cbeb
wcbec:: ds 1 ; cbec
wcbed:: ds 1 ; cbed
wcbee:: ds 1 ; cbee
wcbef:: ds 1 ; cbef
wcbf0:: ds 1 ; cbf0
wcbf1:: ds 1 ; cbf1
wcbf2:: ds 1 ; cbf2
wcbf3:: ds 1 ; cbf3
wcbf4:: ds 1 ; cbf4
wcbf5:: ds 1 ; cbf5
wcbf6:: ds 1 ; cbf6
wcbf7:: ds 1 ; cbf7
wcbf8:: ds 1 ; cbf8
wcbf9:: ds 1 ; cbf9
wcbfa:: ds 1 ; cbfa
wcbfb:: ds 1 ; cbfb
wcbfc:: ds 1 ; cbfc
wcbfd:: ds 1 ; cbfd
wcbfe:: ds 1 ; cbfe
wcbff:: ds 1 ; cbff

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

wcf80:: ds 1 ; cf80
wcf81:: ds 1 ; cf81
wcf82:: ds 1 ; cf82
wcf83:: ds 1 ; cf83
wcf84:: ds 1 ; cf84
wcf85:: ds 1 ; cf85
wcf86:: ds 1 ; cf86
wcf87:: ds 1 ; cf87
wcf88:: ds 1 ; cf88
wcf89:: ds 1 ; cf89
wcf8a:: ds 1 ; cf8a
wcf8b:: ds 1 ; cf8b
wcf8c:: ds 1 ; cf8c
wcf8d:: ds 1 ; cf8d
wcf8e:: ds 1 ; cf8e

wcf8f:: ds 1 ; cf8f
wcf90:: ds 1 ; cf90
wcf91:: ds 1 ; cf91
wcf92:: ds 1 ; cf92
wcf93:: ds 1 ; cf93
wcf94:: ds 1 ; cf94

wLives:: db ; cf95
wcf96:: ds 1 ; cf96 (Gain lives?)

wcf97:: ds 1 ; cf97
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
wcff1:: ds 1 ; cff1
wcff2:: ds 1 ; cff2
wcff3:: ds 1 ; cff3
wcff4:: ds 1 ; cff4
wcff5:: ds 1 ; cff5
wcff6:: ds 1 ; cff6
wcff7:: ds 1 ; cff7
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

wd200:: ds $600 ; d200

wd800:: ds $800 ; d800
