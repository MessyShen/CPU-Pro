MAIN:   MVRD R1, 11
        MVRR R2, R1
        XOR R2, R2

LOOP:   MVRD R7, 0
        TEST R1, R7
        JRZ  OUTPUT
        MVRR R4, R1
        MVRD R7, 1
        TEST R4, 1
        ADD  R2, R4
        SHR  R1

OUTPUT: 
        MVRR R3, R2
