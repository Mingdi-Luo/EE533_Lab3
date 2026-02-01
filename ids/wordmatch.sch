VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL datacomp(55:0)
        SIGNAL wildcard(6:0)
        SIGNAL datain(55:0)
        SIGNAL datain(63:8)
        SIGNAL datain(71:16)
        SIGNAL datain(79:24)
        SIGNAL datain(87:32)
        SIGNAL datain(95:40)
        SIGNAL datain(103:48)
        SIGNAL datain(111:56)
        SIGNAL datain(111:0)
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL XLXN_35
        SIGNAL XLXN_46
        SIGNAL match
        PORT Input datacomp(55:0)
        PORT Input wildcard(6:0)
        PORT Input datain(111:0)
        PORT Output match
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2026 1 31 5 0 47
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_46
        END BLOCK
        BEGIN BLOCK XLXI_2 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(63:8)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_3 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(71:16)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(79:24)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(87:32)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_6 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(95:40)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_7 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(103:48)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(111:56)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_9 or8
            PIN I0 XLXN_35
            PIN I1 XLXN_34
            PIN I2 XLXN_33
            PIN I3 XLXN_32
            PIN I4 XLXN_31
            PIN I5 XLXN_30
            PIN I6 XLXN_29
            PIN I7 XLXN_46
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH datacomp(55:0)
            WIRE 560 1040 720 1040
            WIRE 720 1040 720 1152
            WIRE 720 1152 960 1152
            WIRE 720 1152 720 1376
            WIRE 720 1376 960 1376
            WIRE 720 1376 720 1600
            WIRE 720 1600 960 1600
            WIRE 720 1600 720 1824
            WIRE 720 1824 960 1824
            WIRE 720 256 960 256
            WIRE 720 256 720 480
            WIRE 720 480 960 480
            WIRE 720 480 720 704
            WIRE 720 704 960 704
            WIRE 720 704 720 928
            WIRE 720 928 960 928
            WIRE 720 928 720 1040
        END BRANCH
        BEGIN INSTANCE XLXI_1 960 416 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 960 640 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 960 864 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 960 1088 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 960 1312 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 960 1536 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 960 1760 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 960 1984 R0
        END INSTANCE
        IOMARKER 560 1040 datacomp(55:0) R180 28
        BEGIN BRANCH wildcard(6:0)
            WIRE 544 1120 800 1120
            WIRE 800 1120 800 1280
            WIRE 800 1280 960 1280
            WIRE 800 1280 800 1504
            WIRE 800 1504 960 1504
            WIRE 800 1504 800 1728
            WIRE 800 1728 960 1728
            WIRE 800 1728 800 1952
            WIRE 800 1952 960 1952
            WIRE 800 384 800 608
            WIRE 800 608 800 832
            WIRE 800 832 960 832
            WIRE 800 832 800 1056
            WIRE 800 1056 960 1056
            WIRE 800 1056 800 1120
            WIRE 800 608 960 608
            WIRE 800 384 960 384
        END BRANCH
        IOMARKER 544 1120 wildcard(6:0) R180 28
        BEGIN BRANCH datain(55:0)
            WIRE 880 320 960 320
        END BRANCH
        BEGIN BRANCH datain(63:8)
            WIRE 880 544 960 544
        END BRANCH
        BEGIN BRANCH datain(71:16)
            WIRE 880 768 960 768
        END BRANCH
        BEGIN BRANCH datain(79:24)
            WIRE 880 992 960 992
        END BRANCH
        BEGIN BRANCH datain(87:32)
            WIRE 880 1216 960 1216
        END BRANCH
        BEGIN BRANCH datain(95:40)
            WIRE 880 1440 960 1440
        END BRANCH
        BEGIN BRANCH datain(103:48)
            WIRE 880 1664 960 1664
        END BRANCH
        BEGIN BRANCH datain(111:56)
            WIRE 880 1888 960 1888
        END BRANCH
        BEGIN BRANCH datain(111:0)
            WIRE 528 960 640 960
        END BRANCH
        IOMARKER 528 960 datain(111:0) R180 28
        BEGIN BRANCH XLXN_29
            WIRE 1344 480 1520 480
            WIRE 1520 480 1520 880
            WIRE 1520 880 1600 880
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 1344 704 1440 704
            WIRE 1440 704 1440 944
            WIRE 1440 944 1600 944
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1344 1376 1440 1376
            WIRE 1440 1136 1440 1376
            WIRE 1440 1136 1600 1136
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 1344 1600 1520 1600
            WIRE 1520 1200 1600 1200
            WIRE 1520 1200 1520 1600
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 1344 1824 1600 1824
            WIRE 1600 1264 1600 1824
        END BRANCH
        INSTANCE XLXI_9 1600 1328 R0
        BEGIN BRANCH XLXN_31
            WIRE 1344 928 1360 928
            WIRE 1360 928 1360 1008
            WIRE 1360 1008 1600 1008
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 1344 1152 1360 1152
            WIRE 1360 1072 1600 1072
            WIRE 1360 1072 1360 1152
        END BRANCH
        BEGIN BRANCH XLXN_46
            WIRE 1344 256 1600 256
            WIRE 1600 256 1600 816
        END BRANCH
        BEGIN BRANCH match
            WIRE 1856 1040 1888 1040
        END BRANCH
        IOMARKER 1888 1040 match R0 28
    END SHEET
END SCHEMATIC
