VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL ce
        SIGNAL pipe1(71:0)
        SIGNAL pipe0(71:0)
        SIGNAL hwregA(63:0)
        SIGNAL XLXN_8(111:0)
        SIGNAL XLXN_11
        SIGNAL match_en
        SIGNAL XLXN_13
        SIGNAL match
        SIGNAL pipe0(47:0)
        SIGNAL pipe1(63:0)
        SIGNAL mrst
        SIGNAL XLXN_22
        SIGNAL hwregA(55:0)
        SIGNAL hwregA(62:56)
        PORT Input clk
        PORT Input ce
        PORT Input pipe1(71:0)
        PORT Input hwregA(63:0)
        PORT Input match_en
        PORT Output match
        PORT Input mrst
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2026 1 31 5 4 29
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2026 1 31 5 31 10
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2026 1 31 5 2 22
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 reg9B
            PIN ce ce
            PIN clk clk
            PIN clr XLXN_22
            PIN d(71:0) pipe1(71:0)
            PIN q(71:0) pipe0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_8(111:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 wordmatch
            PIN datacomp(55:0) hwregA(55:0)
            PIN wildcard(6:0) hwregA(62:56)
            PIN datain(111:0) XLXN_8(111:0)
            PIN match XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_5 fd
            PIN C clk
            PIN D mrst
            PIN Q XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_6 fdce
            PIN C clk
            PIN CE XLXN_13
            PIN CLR XLXN_22
            PIN D XLXN_13
            PIN Q match
        END BLOCK
        BEGIN BLOCK XLXI_7 and3b1
            PIN I0 match
            PIN I1 XLXN_11
            PIN I2 match_en
            PIN O XLXN_13
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 656 1296 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1408 1504 R0
        END INSTANCE
        INSTANCE XLXI_7 1968 1216 M180
        BEGIN BRANCH clk
            WIRE 592 1136 624 1136
            WIRE 624 1136 656 1136
            WIRE 624 1136 624 1664
            WIRE 624 1664 1792 1664
            WIRE 1792 1664 1952 1664
            WIRE 1792 1440 2560 1440
            WIRE 1792 1440 1792 1664
        END BRANCH
        BEGIN BRANCH ce
            WIRE 592 1072 656 1072
        END BRANCH
        BEGIN BRANCH pipe1(71:0)
            WIRE 400 1264 640 1264
            WIRE 640 1264 656 1264
        END BRANCH
        BEGIN BRANCH pipe0(71:0)
            WIRE 1040 1072 1120 1072
        END BRANCH
        BEGIN BRANCH hwregA(63:0)
            WIRE 400 1440 528 1440
        END BRANCH
        IOMARKER 400 1440 hwregA(63:0) R180 28
        BEGIN BRANCH XLXN_8(111:0)
            WIRE 1216 1472 1408 1472
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 1792 1344 1968 1344
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 1920 1408 1968 1408
        END BRANCH
        IOMARKER 1920 1408 match_en R180 28
        BEGIN BRANCH match
            WIRE 1904 1184 1904 1280
            WIRE 1904 1280 1968 1280
            WIRE 1904 1184 3008 1184
            WIRE 3008 1184 3008 1312
            WIRE 3008 1312 3088 1312
            WIRE 2944 1312 3008 1312
        END BRANCH
        BEGIN BRANCH mrst
            WIRE 1920 1536 1936 1536
            WIRE 1936 1536 1952 1536
        END BRANCH
        IOMARKER 592 1136 clk R180 28
        IOMARKER 592 1072 ce R180 28
        BEGIN BRANCH XLXN_22
            WIRE 480 960 480 1200
            WIRE 480 1200 656 1200
            WIRE 480 960 2400 960
            WIRE 2400 960 2400 1536
            WIRE 2400 1536 2560 1536
            WIRE 2336 1536 2400 1536
        END BRANCH
        INSTANCE XLXI_6 2560 1568 R0
        BEGIN BRANCH XLXN_13
            WIRE 2224 1344 2240 1344
            WIRE 2240 1344 2240 1376
            WIRE 2240 1376 2560 1376
            WIRE 2240 1312 2560 1312
            WIRE 2240 1312 2240 1344
        END BRANCH
        INSTANCE XLXI_5 1952 1792 R0
        IOMARKER 1920 1536 mrst R180 28
        IOMARKER 3088 1312 match R0 28
        IOMARKER 400 1264 pipe1(71:0) R180 28
        BEGIN BRANCH hwregA(55:0)
            WIRE 1376 1344 1408 1344
            BEGIN DISPLAY 1376 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(62:56)
            WIRE 1376 1408 1408 1408
            BEGIN DISPLAY 1376 1408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_2 832 1568 R0
        END INSTANCE
        BEGIN BRANCH pipe0(47:0)
            WIRE 768 1472 832 1472
        END BRANCH
        BEGIN BRANCH pipe1(63:0)
            WIRE 768 1536 832 1536
        END BRANCH
    END SHEET
END SCHEMATIC
