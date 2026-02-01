VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_8
        SIGNAL a(55:0)
        SIGNAL b(55:0)
        SIGNAL amask(6:0)
        SIGNAL a(55:48)
        SIGNAL b(55:48)
        SIGNAL amask(6)
        SIGNAL XLXN_14
        SIGNAL a(47:40)
        SIGNAL b(47:40)
        SIGNAL amask(5)
        SIGNAL XLXN_18
        SIGNAL a(39:32)
        SIGNAL b(39:32)
        SIGNAL amask(4)
        SIGNAL XLXN_22
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        SIGNAL amask(3)
        SIGNAL XLXN_26
        SIGNAL a(23:16)
        SIGNAL b(23:16)
        SIGNAL amask(2)
        SIGNAL XLXN_30
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL amask(1)
        SIGNAL XLXN_117
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL amask(0)
        SIGNAL XLXN_145
        SIGNAL XLXN_146
        SIGNAL XLXN_147
        SIGNAL XLXN_148
        SIGNAL XLXN_149
        SIGNAL XLXN_150
        SIGNAL XLXN_151
        SIGNAL XLXN_152
        SIGNAL match
        PORT Input a(55:0)
        PORT Input b(55:0)
        PORT Input amask(6:0)
        PORT Output match
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_10 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_14
            PIN O XLXN_146
        END BLOCK
        BEGIN BLOCK XLXI_11 comp8
            PIN A(7:0) a(47:40)
            PIN B(7:0) b(47:40)
            PIN EQ XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_12 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_18
            PIN O XLXN_147
        END BLOCK
        BEGIN BLOCK XLXI_13 comp8
            PIN A(7:0) a(39:32)
            PIN B(7:0) b(39:32)
            PIN EQ XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_14 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_22
            PIN O XLXN_148
        END BLOCK
        BEGIN BLOCK XLXI_15 comp8
            PIN A(7:0) a(31:24)
            PIN B(7:0) b(31:24)
            PIN EQ XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_16 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_26
            PIN O XLXN_149
        END BLOCK
        BEGIN BLOCK XLXI_17 comp8
            PIN A(7:0) a(23:16)
            PIN B(7:0) b(23:16)
            PIN EQ XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_18 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_30
            PIN O XLXN_150
        END BLOCK
        BEGIN BLOCK XLXI_59 comp8
            PIN A(7:0) a(15:8)
            PIN B(7:0) b(15:8)
            PIN EQ XLXN_117
        END BLOCK
        BEGIN BLOCK XLXI_60 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_117
            PIN O XLXN_151
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) a(55:48)
            PIN B(7:0) b(55:48)
            PIN EQ XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_73 comp8
            PIN A(7:0) a(7:0)
            PIN B(7:0) b(7:0)
            PIN EQ XLXN_145
        END BLOCK
        BEGIN BLOCK XLXI_74 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_145
            PIN O XLXN_152
        END BLOCK
        BEGIN BLOCK XLXI_75 and7
            PIN I0 XLXN_152
            PIN I1 XLXN_151
            PIN I2 XLXN_150
            PIN I3 XLXN_149
            PIN I4 XLXN_148
            PIN I5 XLXN_147
            PIN I6 XLXN_146
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH a(55:0)
            WIRE 304 256 464 256
        END BRANCH
        BEGIN BRANCH b(55:0)
            WIRE 304 336 464 336
        END BRANCH
        BEGIN BRANCH amask(6:0)
            WIRE 704 256 864 256
        END BRANCH
        IOMARKER 304 256 a(55:0) R180 28
        IOMARKER 304 336 b(55:0) R180 28
        IOMARKER 704 256 amask(6:0) R180 28
        BEGIN BRANCH a(55:48)
            WIRE 1440 64 1536 64
        END BRANCH
        BEGIN BRANCH b(55:48)
            WIRE 1440 256 1536 256
        END BRANCH
        INSTANCE XLXI_10 2064 352 R0
        BEGIN BRANCH amask(6)
            WIRE 2000 288 2064 288
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 1920 160 2000 160
            WIRE 2000 160 2000 224
            WIRE 2000 224 2064 224
        END BRANCH
        INSTANCE XLXI_11 1536 784 R0
        BEGIN BRANCH a(47:40)
            WIRE 1440 464 1536 464
        END BRANCH
        BEGIN BRANCH b(47:40)
            WIRE 1440 656 1536 656
        END BRANCH
        INSTANCE XLXI_12 2064 752 R0
        BEGIN BRANCH amask(5)
            WIRE 2000 688 2064 688
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1920 560 2000 560
            WIRE 2000 560 2000 624
            WIRE 2000 624 2064 624
        END BRANCH
        INSTANCE XLXI_13 1536 1184 R0
        BEGIN BRANCH a(39:32)
            WIRE 1440 864 1536 864
        END BRANCH
        BEGIN BRANCH b(39:32)
            WIRE 1440 1056 1536 1056
        END BRANCH
        INSTANCE XLXI_14 2064 1152 R0
        BEGIN BRANCH amask(4)
            WIRE 2000 1088 2064 1088
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 1920 960 2000 960
            WIRE 2000 960 2000 1024
            WIRE 2000 1024 2064 1024
        END BRANCH
        INSTANCE XLXI_15 1536 1584 R0
        BEGIN BRANCH a(31:24)
            WIRE 1440 1264 1536 1264
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 1440 1456 1536 1456
        END BRANCH
        INSTANCE XLXI_16 2064 1552 R0
        BEGIN BRANCH amask(3)
            WIRE 2000 1488 2064 1488
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 1920 1360 2000 1360
            WIRE 2000 1360 2000 1424
            WIRE 2000 1424 2064 1424
        END BRANCH
        INSTANCE XLXI_17 1536 1984 R0
        BEGIN BRANCH a(23:16)
            WIRE 1440 1664 1536 1664
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1440 1856 1536 1856
        END BRANCH
        INSTANCE XLXI_18 2064 1952 R0
        BEGIN BRANCH amask(2)
            WIRE 2000 1888 2064 1888
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 1920 1760 2000 1760
            WIRE 2000 1760 2000 1824
            WIRE 2000 1824 2064 1824
        END BRANCH
        INSTANCE XLXI_59 1536 2384 R0
        BEGIN BRANCH a(15:8)
            WIRE 1440 2064 1536 2064
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1440 2256 1536 2256
        END BRANCH
        INSTANCE XLXI_60 2064 2352 R0
        BEGIN BRANCH amask(1)
            WIRE 2000 2288 2064 2288
        END BRANCH
        BEGIN BRANCH XLXN_117
            WIRE 1920 2160 2000 2160
            WIRE 2000 2160 2000 2224
            WIRE 2000 2224 2064 2224
        END BRANCH
        INSTANCE XLXI_2 1536 384 R0
        INSTANCE XLXI_73 1536 2784 R0
        BEGIN BRANCH a(7:0)
            WIRE 1440 2464 1536 2464
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1440 2656 1536 2656
        END BRANCH
        INSTANCE XLXI_74 2064 2752 R0
        BEGIN BRANCH amask(0)
            WIRE 2000 2688 2064 2688
        END BRANCH
        BEGIN BRANCH XLXN_145
            WIRE 1920 2560 2000 2560
            WIRE 2000 2560 2000 2624
            WIRE 2000 2624 2064 2624
        END BRANCH
        INSTANCE XLXI_75 2656 1712 R0
        BEGIN BRANCH XLXN_146
            WIRE 2320 256 2656 256
            WIRE 2656 256 2656 1264
        END BRANCH
        BEGIN BRANCH XLXN_147
            WIRE 2320 656 2560 656
            WIRE 2560 656 2560 1328
            WIRE 2560 1328 2656 1328
        END BRANCH
        BEGIN BRANCH XLXN_148
            WIRE 2320 1056 2464 1056
            WIRE 2464 1056 2464 1392
            WIRE 2464 1392 2656 1392
        END BRANCH
        BEGIN BRANCH XLXN_149
            WIRE 2320 1456 2656 1456
        END BRANCH
        BEGIN BRANCH XLXN_150
            WIRE 2320 1856 2464 1856
            WIRE 2464 1520 2464 1856
            WIRE 2464 1520 2656 1520
        END BRANCH
        BEGIN BRANCH XLXN_151
            WIRE 2320 2256 2560 2256
            WIRE 2560 1584 2656 1584
            WIRE 2560 1584 2560 2256
        END BRANCH
        BEGIN BRANCH XLXN_152
            WIRE 2320 2656 2656 2656
            WIRE 2656 1648 2656 2656
        END BRANCH
        BEGIN BRANCH match
            WIRE 2912 1456 2944 1456
        END BRANCH
        IOMARKER 2944 1456 match R0 28
    END SHEET
END SCHEMATIC
