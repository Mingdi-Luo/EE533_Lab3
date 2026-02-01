VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL d(71:64)
        SIGNAL q(71:64)
        SIGNAL d(63:48)
        SIGNAL q(63:48)
        SIGNAL d(47:32)
        SIGNAL q(47:32)
        SIGNAL d(31:16)
        SIGNAL q(31:16)
        SIGNAL d(15:0)
        SIGNAL q(15:0)
        SIGNAL ce
        SIGNAL XLXN_39
        SIGNAL XLXN_40
        SIGNAL XLXN_41
        SIGNAL clk
        SIGNAL XLXN_43
        SIGNAL XLXN_44
        SIGNAL XLXN_45
        SIGNAL clr
        SIGNAL XLXN_47
        SIGNAL XLXN_48
        SIGNAL XLXN_49
        SIGNAL q(71:0)
        SIGNAL d(71:0)
        PORT Input ce
        PORT Input clk
        PORT Input clr
        PORT Output q(71:0)
        PORT Input d(71:0)
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_5 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
        BEGIN BLOCK XLXI_1 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_6 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_7 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_8 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_5 1456 720 R0
        BEGIN BRANCH d(71:64)
            WIRE 1360 464 1456 464
        END BRANCH
        BEGIN BRANCH q(71:64)
            WIRE 1840 464 1920 464
        END BRANCH
        INSTANCE XLXI_1 1456 1072 R0
        BEGIN BRANCH d(63:48)
            WIRE 1360 816 1456 816
        END BRANCH
        BEGIN BRANCH q(63:48)
            WIRE 1840 816 1920 816
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 1360 1168 1456 1168
        END BRANCH
        BEGIN BRANCH q(47:32)
            WIRE 1840 1168 1920 1168
        END BRANCH
        INSTANCE XLXI_6 1456 1424 R0
        BEGIN BRANCH d(31:16)
            WIRE 1360 1520 1456 1520
        END BRANCH
        BEGIN BRANCH q(31:16)
            WIRE 1840 1520 1920 1520
        END BRANCH
        INSTANCE XLXI_7 1456 1776 R0
        INSTANCE XLXI_8 1456 2128 R0
        BEGIN BRANCH d(15:0)
            WIRE 1360 1872 1456 1872
        END BRANCH
        BEGIN BRANCH q(15:0)
            WIRE 1840 1872 1920 1872
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1328 1936 1392 1936
            WIRE 1392 1936 1456 1936
            WIRE 1392 528 1392 880
            WIRE 1392 880 1392 1232
            WIRE 1392 1232 1392 1584
            WIRE 1392 1584 1392 1936
            WIRE 1392 1584 1456 1584
            WIRE 1392 1232 1456 1232
            WIRE 1392 880 1456 880
            WIRE 1392 528 1456 528
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1328 2000 1408 2000
            WIRE 1408 2000 1456 2000
            WIRE 1408 592 1408 944
            WIRE 1408 944 1456 944
            WIRE 1408 944 1408 1296
            WIRE 1408 1296 1456 1296
            WIRE 1408 1296 1408 1648
            WIRE 1408 1648 1456 1648
            WIRE 1408 1648 1408 2000
            WIRE 1408 592 1456 592
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1328 2096 1424 2096
            WIRE 1424 2096 1456 2096
            WIRE 1424 688 1424 1040
            WIRE 1424 1040 1424 1392
            WIRE 1424 1392 1456 1392
            WIRE 1424 1392 1424 1744
            WIRE 1424 1744 1456 1744
            WIRE 1424 1744 1424 2096
            WIRE 1424 1040 1456 1040
            WIRE 1424 688 1456 688
        END BRANCH
        IOMARKER 1328 1936 ce R180 28
        IOMARKER 1328 2000 clk R180 28
        IOMARKER 1328 2096 clr R180 28
        BEGIN BRANCH q(71:0)
            WIRE 1984 1168 2096 1168
        END BRANCH
        IOMARKER 2096 1168 q(71:0) R0 28
        BEGIN BRANCH d(71:0)
            WIRE 1184 1168 1296 1168
        END BRANCH
        IOMARKER 1184 1168 d(71:0) R180 28
    END SHEET
END SCHEMATIC
