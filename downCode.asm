MAIN:        
        MVRD     R0,0xFF         ;源地址
        MVRD     R1,0x1FF        ;目的地址

        MVRR     R3,R0
        MVRR     R4,R1

        MVRD     R2,5
        STRR     R3,R2           ;r2数据,r3地址
        STRR     R4,R2
        INC       R3
        INC       R4

        MVRD     R2,3
        STRR     R3,R2           ;r2数据,r3地址
        STRR     R4,R2
        INC       R3
        INC       R4

        MVRD     R2,2
        STRR     R3,R2           ;r2数据,r3地址
        STRR     R4,R2
        INC       R3
        INC       R4

        MVRD     R2,1
        STRR     R3,R2           ;r2数据,r3地址
        STRR     R4,R2
        INC       R3
        INC       R4

        MVRD     R2,6
        STRR     R3,R2           ;r2数据,r3地址
        STRR     R4,R2
        INC       R3
        INC       R4

        MVRD     R2,4
        STRR      R3,R2           ;r2数据,r3地址
        STRR      R4,R2
        
        MVRR     R6,R4
        INC       R1
        MVRR     R7,R1
        DEC       R1

BUB:                               ;外层循环
        MVRR     R4,R1
LOOP:                              ;内层循环
        LDRR     R8,R4
        INC       R4
        LDRR     R9,R4
        CMP      R8,R9
        JRS      CHECK
        STRR     R4,R8             ;数据位置交换
        DEC      R4
        STRR     R4,R9
        INC       R4
CHECK:  CMP    R4,R6
        JRNZ     LOOP
        DEC      R6
        CMP      R6,R7
        JRNS     BUB

        MVRR     R5,R5
        MVRR     R5,R5
1:      JR         1B
